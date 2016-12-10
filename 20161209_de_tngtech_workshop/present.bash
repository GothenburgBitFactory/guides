# Usage:
#   pdfpc [OPTION...] <pdf-file>
# 
# Help Options:
#   -?, --help                    Show help options
# 
# Application Options:
#   -d, --duration=N              Duration in minutes of the presentation used for timer display.
#   -e, --end-time=T              End time of the presentation. (Format: HH:MM (24h))
#   -l, --last-minutes=N          Time in minutes, from which on the timer changes its color. (Default 5 minutes)
#   -t, --start-time=T            Start time of the presentation to be used as a countdown. (Format: HH:MM (24h))
#   -C, --time-of-day             Use the current time of the day for the timer
#   -u, --current-size=N          Percentage of the presenter screen to be used for the current slide. (Default 60)
#   -h, --current-height=N        Percentage of the height of the presenter screen to be used for the current slide. (Default 80)
#   -H, --next-height=N           Percentage of the height of the presenter screen to be used for the next slide. (Default 70)
#   -o, --overview-min-size=N     Minimum width for the overview miniatures, in pixels. (Default 150)
#   -s, --switch-screens          Switch the presentation and the presenter screen.
#   -c, --disable-cache           Disable caching and pre-rendering of slides to save memory at the cost of speed.
#   -z, --disable-compression     Disable the compression of slide images to trade memory consumption for speed. (Avg. factor 30)
#   -b, --black-on-end            Add an additional black slide at the end of the presentation
#   -S, --single-screen           Force to use only one screen
#   -L, --list-actions            List actions supported in the config file(s)
#   -w, --windowed                Run in windowed mode (devel tool)
#   -Z, --size                    Size of the presenter console in width:height format (forces windowed mode)
#   -n, --notes=P                 Position of notes on the pdf page (either left, right, top or bottom)
#   -v, --version                 Print the version string and copyright statement

# pdfpc --duration=45 --end-time=10:45 --last-minutes=5 --current-size=80 open-source-projekte.pdf

pdfpc --duration=120 --last-minutes=15 --disable-compression taskwarrior_workshop.pdf
[[ -r taskwarrior_workshop.pdf ]] && rm taskwarrior_workshop.pdfpc
