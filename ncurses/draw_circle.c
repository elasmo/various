/*
 * Draws a circle using the ncurses library
 * by diox
 *
 * Compile:
 * gcc -lncurses -lm -Wall -o draw_circle draw_circle.c
 */
#include <stdio.h>
#include <stdlib.h>
#include <ncurses.h>
#include <math.h>

#define DEGTORAD(deg) (deg * (180.0f/M_PI))
#define DOT 46

int main(int argc, char *argv[]) {
	float deg, width, height;
	int y, x;

	/* Fetch width and height from command line arguments */
	if(argc != 3) {
		fprintf(stderr, "Usage: %s <width> <height>\n", argv[0]);
		exit(EXIT_FAILURE);
	}

	/* Convert to int */
	width  = atoi(argv[1]);
	height = atoi(argv[2]);

	/* Initialize ncurses */
	initscr();

	/* Disable mouse pointer */
	curs_set(0);

	/* Draw circle */
	for (deg = 0; deg < 360.0f; deg += 1.0f) {
		x = width+(int)(width * cos(DEGTORAD(deg)));
		y = height+(int)(height * sin(DEGTORAD(deg)));

		mvaddch(y,x,DOT);
	}

	/* Refresh screen */
	refresh();

	/* Wait for user input before exiting program */
	getch();

	/* Escape from ncurses mode */
	endwin();

	return(EXIT_SUCCESS);
}
