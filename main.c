#include "without.h"

int main( int argc, char **argv )
{
    libsoundio_init( argc, argv );
    int exit = 0;
    while(!exit){
        libsoundio_loop();
        // exit = REPL();
    }
    libsoundio_exit();
    return 1;
}
