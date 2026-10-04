# Production Candidate Permission Resolver
Status: DISTRIBUTION CORE
Input: canonical role, requested PROFILE/operation, current role access, task grant, PROFILE side-effect ceiling, external policy, optional historical snapshot/context.
Decision:
1. Resolve current role access; absent => DENY.
2. Require EXECUTE for invocation; REFERENCE is not executable.
3. Require explicit task grant for any operation marked task-specific/high-risk.
4. Enforce PROFILE ceiling.
5. Enforce external policy.
6. Intersect with current authority; historical/message/transfer/alias/resource context can only constrain, never widen.
7. Return ALLOW with exact bounded scope or DENY with blocking dimension.
No fallback PROFILE may be used as a permission proxy.
