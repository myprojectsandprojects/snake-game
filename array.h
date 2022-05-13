#ifndef array_h
#define array_h

//const int INIT_N_ELEMENTS = 1000000; // # of elements to allocate storage for initially
const int INIT_N_ELEMENTS = 2; // # of elements to allocate storage for initially

typedef struct {
	float *data;
	int n_elements; 				// # of elements stored
	int n_elements_alloc; 		// # of elements allocated
} FArray;

void farray_init(FArray *array);
void farray_print(FArray *array);
void farray_append(FArray *array, float num);
void farray_append(FArray *array, float nums[], int len_nums);

#endif