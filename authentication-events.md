# Linux Authentication Event Notes

## Log Source
Linux authentication events collected from the local Kali Linux lab.

## Events Reviewed
- PAM authentication failures
- Failed sudo authentication
- Successful root sessions
- SSH invalid username attempts
- Failed SSH authentication

## Investigation Approach
1. Identify the relevant log source.
2. Filter authentication-related events.
3. Review timestamps, usernames, source addresses, and event details.
4. Correlate related events before drawing conclusions.
5. Document findings and recommend appropriate follow-up actions.

## Important Notes
- Multiple log entries may belong to a single authentication attempt.
- A failed login does not automatically indicate a malicious attack.
- The SSH test in this project was performed against localhost (127.0.0.1).
- Findings are from a local learning lab and do not represent production SOC monitoring.
