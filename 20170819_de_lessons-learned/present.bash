# Usage:
#   pdfpc [OPTION…] <pdf-file>
# 
# Help Options:
#   -h, --help                      Show help options
# 
# Application Options:
#   -c, --disable-cache             Disable caching and pre-rendering of slides to save memory at the cost of speed.
#   -C, --time-of-day               Use the current time of the day for the timer
#   -d, --duration=N                Duration in minutes of the presentation used for timer display.
#   -e, --end-time=T                End time of the presentation. (Format: HH:MM (24h))
#   -g, --disable-auto-grouping     Disable auto detection and grouping of overlayed slides
#   -l, --last-minutes=N            Time in minutes, from which on the timer changes its color. (Default 5 minutes)
#   -L, --list-actions              List actions supported in the config file(s)
#   -n, --notes=P                   Position of notes on the pdf page (either left, right, top or bottom)
#   -p, --persist-cache             Persist the PNG cache on disk for faster startup.
#   -P, --page=PAGE                 Goto a specific page directly after startup
#   -s, --switch-screens            Switch the presentation and the presenter screen.
#   -S, --single-screen             Force to use only one screen
#   -t, --start-time=T              Start time of the presentation to be used as a countdown. (Format: HH:MM (24h))
#   -v, --version                   Print the version string and copyright statement
#   -w, --windowed                  Run in windowed mode (devel tool)
#   -z, --disable-compression       Disable the compression of slide images to trade memory consumption for speed. (Avg. factor 30)
#   -Z, --size                      Size of the presentation window in width:height format (forces windowed mode)
# 
pdfpc --duration=45 --last-minutes=5 --start-time=15:15 lessons-learned.pdf

rm *.pdfpc
