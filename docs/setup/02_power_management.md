# Power Management Configuration

## Sleep Prevention Settings
The following sleep-related services have been disabled to prevent the server from going to sleep:
- sleep.target
- suspend.target
- hibernate.target
- hybrid-sleep.target

## Monitoring
- A monitoring script has been set up at ~/server_management/scripts/monitor_server.sh
- Runs every 5 minutes via cron
- Logs system status to ~/server_management/logs/server_monitor.log
- Tracks:
  - System uptime
  - CPU usage
  - Memory usage

## Power Profiles
- Power profiles daemon has been disabled to prevent automatic power management
- System is configured to run at full performance

## Verification
To verify these settings:
1. Check service status: systemctl status sleep.target suspend.target hibernate.target hybrid-sleep.target
2. View monitoring logs: cat ~/server_management/logs/server_monitor.log
3. Check cron job: crontab -l
