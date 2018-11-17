#pragma once

int libsoundio_init( int argc, char **argv );
void libsoundio_loop( void );
void libsoundio_exit( void );

// define the following callbacks in your application
// TODO use an 'audio_block_t' rather than these for functional style
float* module_process_frame( float* in, float* out, int size );
