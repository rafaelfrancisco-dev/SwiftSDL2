#ifdef __APPLE__
    #include "/usr/local/include/SDL2/SDL.h"
    #include "/usr/local/include/SDL2/SDL_image.h"
    #include "/usr/local/include/SDL2/SDL_ttf.h"
#elif _WIN32
	#include "C:/SDL/SDL.h"
    #include "C:/SDL/SDL_image.h"
    #include "C:/SDL/SDL_ttf.h"
#else
    #include "/usr/include/SDL2/SDL.h"
    #include "/usr/include/SDL2/SDL_image.h"
    #include "/usr/include/SDL2/SDL_ttf.h"
#endif
