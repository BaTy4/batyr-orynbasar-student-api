REPORT="$HOME/batyr-orynbasar-student-api/logs/Batyr_Orynbassar_system_report.log"

{
    echo "========================================"
    echo "       LINUX SYSTEM REPORT"
    echo "========================================"
    echo "Student: Batyr Orynbassar"
    echo "Date and time: $(date)"
    echo "Username: $(whoami)"
    echo "Hostname: $(hostname)"
    echo "Operating system:"
    cat /etc/os-release | grep -E '^(PRETTY_NAME)='
    echo "Kernel version: $(uname -r)"
    echo
    echo "CPU information:"
    lscpu | grep -E '^(Model name|CPU\(s\))'
    echo
    echo "Memory usage:"
    free -h
    echo
    echo "Disk usage:"
    df -h
    echo
    echo "Available disk space:"
    df -h "$HOME"
    echo "========================================"
    echo "Report generated successfully."
} | tee "$REPORT"
