#!/usr/bin/env python3
import argparse, sqlite3
from pathlib import Path

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument("--db", required=True, help="installation-local messaging DB path resolved from binding/config")
    ap.add_argument("--schema", default=str(Path(__file__).with_name("schema.sql")))
    args=ap.parse_args()
    db=Path(args.db).expanduser()
    db.parent.mkdir(parents=True, exist_ok=True)
    existed=db.exists()
    con=sqlite3.connect(db)
    try:
        version=con.execute("PRAGMA user_version").fetchone()[0]
        if existed and version not in (0,1):
            raise SystemExit(f"unsupported existing schema version: {version}")
        sql=Path(args.schema).read_text(encoding="utf-8")
        con.executescript(sql)
        con.execute("PRAGMA user_version=1")
        con.commit()
    finally:
        con.close()
    print("CONNECTED_EXISTING" if existed else "INITIALIZED_NEW")

if __name__=="__main__":
    main()
