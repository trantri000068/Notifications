
# Type flag values:

# 0 — OK button;
# 1 — OK and Cancel buttons;
# 2 — Stop, Retry and Skip buttons;
# 3 — Yes, No and Cancel buttons;
# 4 — Yes and No buttons;
# 5 — Retry and Cancel buttons;
# 16 — Stop icon;
# 32 — Question icon;
# 48 — Exclamation icon;
# 64 — Information icon.


#Returns integer to show which was clicked by user.
#-1 — timeout;
# 1 — OK button;
# 2 — Cancel button;
# 3 — Stop button;
# 4 — Retry button;
# 5 — Skip button;
# 6 — Yes button;
# 7 — No button.

# Calculate the time when the restart will occur
#$restartTime = (Get-Date).AddMinutes(60)

# Convert the restart time to user-friendly format
#$restartTimeString = $restartTime.ToString('HH:mm')


$title = "Configuration is in Progress" # Declare title

# Declare message
$message = " Please DO NOT USE this computer at this moment.

We are setting up this computer. It will restart as we complete.
"

# Display the notification
Add-Type -AssemblyName PresentationFramework
[void] [System.Windows.MessageBox]::Show($message, $title,0,16)
