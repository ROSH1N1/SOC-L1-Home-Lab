# SOC L1 Investigation: SSH Authentication Failure

## 1. Objective
Investigate SSH authentication events and identify an invalid username and failed login attempt.

## 2. Test Environment
- System: Kali Linux
- Log source: /var/log/auth.log
- Source IP: 127.0.0.1 (localhost)
- Test username: invaliduser
- Test type: Controlled local SSH test

## 3. Evidence Observed
1. SSH logged an invalid username: invaliduser.
2. SSH logged a failed password attempt for the invalid username.
3. The connection closed before authentication completed.

## 4. Detection Results
- Invalid username events: 1
- Failed SSH authentication events: 1
- SSH connection closures: 1

## 5. Analysis
The three log entries are related to the same controlled SSH test session. The source IP 127.0.0.1 is the local loopback address, indicating that the connection originated from this machine. These events demonstrate an unsuccessful authentication attempt using a nonexistent username.

## 6. Severity and Conclusion
Assessment: Informational / Low severity for this controlled lab test.

The evidence does not indicate an external attack. In a real environment, an analyst should check the source IP, event frequency, affected account, and related authentication logs before determining severity.

## 7. Recommended Actions
- Review repeated SSH authentication failures.
- Monitor for repeated attempts involving multiple usernames.
- Use appropriate SSH access controls and strong authentication.
- Preserve relevant logs for further investigation.
