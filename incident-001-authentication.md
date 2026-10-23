# Incident 001: Linux Authentication Event Review

## 1. Summary
Reviewed Linux authentication logs for failed authentication events and root-session activity. The observed entries include screen-lock authentication failures and a sudo password failure.

## 2. Evidence Source
- Host: Kali Linux (`kili`)
- Log source: `/var/log/auth.log`
- Filtered evidence: `reports/authentication-filtered.txt`
- Detection script: `scripts/detect_auth_events.sh`

## 3. Observed Events
- PAM authentication messages from `xfce4-screensaver-dialog`.
- A sudo authentication failure for the local user `roshini`.
- A log entry reporting one incorrect sudo password attempt.
- Root-session opening entries in the filtered log.

## 4. Detection Results
- Failure-related log matches: 11
- Root-session log matches: 19

These values represent matching log entries in the saved evidence, not necessarily unique authentication attempts or incidents.

## 5. Analysis
The available evidence includes local screen-lock and sudo authentication activity. These events can occur during normal system use. The counts alone do not establish malicious activity.

## 6. Assessment
Classification: Informational — local authentication activity reviewed.

No external attack is established by this evidence. Additional context would be required to determine whether any event is suspicious.

## 7. Recommended Actions
- Review repeated authentication failures and their timestamps.
- Correlate events with the relevant user, process, and session.
- Investigate unexpected root-session activity.
- Preserve logs and document findings before escalating an event.
