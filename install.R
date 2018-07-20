install.packages(c('repr', 'IRdisplay', 'evaluate', 'crayon', 'pbdZMQ', 'devtools', 'uuid', 'digest'), repos='https://mran.microsoft.com/snapshot/2018-02-01', method='libcurl')
devtools::install_git('https://github.com/IRkernel/IRkernel', args="--recursive")
IRkernel::installspec()
