#include <cstdio>
#include <cstdlib>

#include "array.h"

// take an initial size as a parameter/optional parameter?
void farray_init(FArray *array) {
	array->n_elements_alloc = INIT_N_ELEMENTS;
	array->data = (float *) malloc(array->n_elements_alloc * sizeof(float));
//	array->data = new float[array->n_elements_alloc];
	array->n_elements = 0;
}

void farray_print(FArray *array) {
	for(int i = 0; i < array->n_elements; ++i) {
		printf("%f\n", array->data[i]);
	}
}

void farray_append(FArray *array, float num) {
	if (array->n_elements_alloc < array->n_elements + 1) {
		array->n_elements_alloc *= 2;
		float *new_data = (float *) malloc(array->n_elements_alloc * sizeof(float)); //@ check for fail?
		for(int i = 0; i < array->n_elements; ++i) {
			new_data[i] = array->data[i];
		}
		free(array->data);
		array->data = new_data;
	}
	array->data[array->n_elements] = num;
	array->n_elements += 1;
}

void farray_append(FArray *array, float nums[], int len_nums) {
	if (array->n_elements_alloc < array->n_elements + len_nums) {
		while (array->n_elements_alloc < array->n_elements + len_nums) {
			array->n_elements_alloc *= 2;
		}
//		printf("allocating memory: %d\n", array->n_elements_alloc);
		float *new_data = (float *) malloc(array->n_elements_alloc * sizeof(float)); //@ check for fail?
		for(int i = 0; i < array->n_elements; ++i) {
			new_data[i] = array->data[i];
		}
		free(array->data);
		array->data = new_data;
	}
	for (int i = 0; i < len_nums; ++i) {
		array->data[array->n_elements] = nums[i];
		array->n_elements += 1;
	}
}