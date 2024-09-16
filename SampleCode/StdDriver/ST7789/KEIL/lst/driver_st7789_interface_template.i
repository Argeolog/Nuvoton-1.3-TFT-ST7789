# 1 "../driver_st7789_interface_template.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 390 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "../driver_st7789_interface_template.c" 2
# 37 "../driver_st7789_interface_template.c"
# 1 "..\\driver_st7789_interface.h" 1
# 40 "..\\driver_st7789_interface.h"
# 1 "..\\driver_st7789.h" 1
# 40 "..\\driver_st7789.h"
# 1 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdint.h" 1 3
# 56 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdint.h" 3
typedef signed char int8_t;
typedef signed short int int16_t;
typedef signed int int32_t;
typedef signed long long int int64_t;


typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long int uint64_t;





typedef signed char int_least8_t;
typedef signed short int int_least16_t;
typedef signed int int_least32_t;
typedef signed long long int int_least64_t;


typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;
typedef unsigned long long int uint_least64_t;




typedef signed int int_fast8_t;
typedef signed int int_fast16_t;
typedef signed int int_fast32_t;
typedef signed long long int int_fast64_t;


typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef unsigned long long int uint_fast64_t;






typedef signed int intptr_t;
typedef unsigned int uintptr_t;



typedef signed long long intmax_t;
typedef unsigned long long uintmax_t;
# 41 "..\\driver_st7789.h" 2
# 1 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 1 3
# 53 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
    typedef unsigned int size_t;
# 68 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
    typedef __builtin_va_list __va_list;
# 87 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
typedef struct __fpos_t_struct {
    unsigned long long int __pos;





    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
# 108 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
typedef struct __FILE FILE;
# 119 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
struct __FILE {
    union {
        long __FILE_alignment;



        char __FILE_size[84];

    } __FILE_opaque;
};
# 138 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;
# 224 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int remove(const char * ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) int rename(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 243 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) FILE *tmpfile(void);






extern __attribute__((__nothrow__)) char *tmpnam(char * );
# 265 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fclose(FILE * ) __attribute__((__nonnull__(1)));
# 275 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fflush(FILE * );
# 285 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) FILE *fopen(const char * __restrict ,
                           const char * __restrict ) __attribute__((__nonnull__(1,2)));
# 329 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) FILE *freopen(const char * __restrict ,
                    const char * __restrict ,
                    FILE * __restrict ) __attribute__((__nonnull__(2,3)));
# 342 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) void setbuf(FILE * __restrict ,
                    char * __restrict ) __attribute__((__nonnull__(1)));






extern __attribute__((__nothrow__)) int setvbuf(FILE * __restrict ,
                   char * __restrict ,
                   int , size_t ) __attribute__((__nonnull__(1)));
# 370 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((__nothrow__)) int fprintf(FILE * __restrict ,
                    const char * __restrict , ...) __attribute__((__nonnull__(1,2)));
# 393 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((__nothrow__)) int _fprintf(FILE * __restrict ,
                     const char * __restrict , ...) __attribute__((__nonnull__(1,2)));





#pragma __printf_args
extern __attribute__((__nothrow__)) int printf(const char * __restrict , ...) __attribute__((__nonnull__(1)));






#pragma __printf_args
extern __attribute__((__nothrow__)) int _printf(const char * __restrict , ...) __attribute__((__nonnull__(1)));





#pragma __printf_args
extern __attribute__((__nothrow__)) int sprintf(char * __restrict , const char * __restrict , ...) __attribute__((__nonnull__(1,2)));








#pragma __printf_args
extern __attribute__((__nothrow__)) int _sprintf(char * __restrict , const char * __restrict , ...) __attribute__((__nonnull__(1,2)));






#pragma __printf_args
extern __attribute__((__nothrow__)) int __ARM_snprintf(char * __restrict , size_t ,
                     const char * __restrict , ...) __attribute__((__nonnull__(3)));
# 460 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((__nothrow__)) int _snprintf(char * __restrict , size_t ,
                      const char * __restrict , ...) __attribute__((__nonnull__(3)));





#pragma __scanf_args
extern __attribute__((__nothrow__)) int fscanf(FILE * __restrict ,
                    const char * __restrict , ...) __attribute__((__nonnull__(1,2)));
# 503 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
#pragma __scanf_args
extern __attribute__((__nothrow__)) int _fscanf(FILE * __restrict ,
                     const char * __restrict , ...) __attribute__((__nonnull__(1,2)));





#pragma __scanf_args
extern __attribute__((__nothrow__)) int scanf(const char * __restrict , ...) __attribute__((__nonnull__(1)));








#pragma __scanf_args
extern __attribute__((__nothrow__)) int _scanf(const char * __restrict , ...) __attribute__((__nonnull__(1)));





#pragma __scanf_args
extern __attribute__((__nothrow__)) int sscanf(const char * __restrict ,
                    const char * __restrict , ...) __attribute__((__nonnull__(1,2)));
# 541 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
#pragma __scanf_args
extern __attribute__((__nothrow__)) int _sscanf(const char * __restrict ,
                     const char * __restrict , ...) __attribute__((__nonnull__(1,2)));
# 555 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int _vfscanf(FILE * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) int _vscanf(const char * __restrict , __va_list) __attribute__((__nonnull__(1)));
extern __attribute__((__nothrow__)) int _vsscanf(const char * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) int __ARM_vsscanf(const char * __restrict , const char * __restrict , __va_list) __attribute__((__nonnull__(1,2)));

extern __attribute__((__nothrow__)) int vprintf(const char * __restrict , __va_list ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) int _vprintf(const char * __restrict , __va_list ) __attribute__((__nonnull__(1)));





extern __attribute__((__nothrow__)) int vfprintf(FILE * __restrict ,
                    const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));
# 584 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int vsprintf(char * __restrict ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));
# 594 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int __ARM_vsnprintf(char * __restrict , size_t ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(3)));
# 609 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int _vsprintf(char * __restrict ,
                      const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));





extern __attribute__((__nothrow__)) int _vfprintf(FILE * __restrict ,
                     const char * __restrict , __va_list ) __attribute__((__nonnull__(1,2)));





extern __attribute__((__nothrow__)) int _vsnprintf(char * __restrict , size_t ,
                      const char * __restrict , __va_list ) __attribute__((__nonnull__(3)));
# 635 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
#pragma __printf_args
extern __attribute__((__nothrow__)) int __ARM_asprintf(char ** , const char * __restrict , ...) __attribute__((__nonnull__(2)));
extern __attribute__((__nothrow__)) int __ARM_vasprintf(char ** , const char * __restrict , __va_list ) __attribute__((__nonnull__(2)));
# 649 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fgetc(FILE * ) __attribute__((__nonnull__(1)));
# 659 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) char *fgets(char * __restrict , int ,
                    FILE * __restrict ) __attribute__((__nonnull__(1,3)));
# 673 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fputc(int , FILE * ) __attribute__((__nonnull__(2)));
# 683 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fputs(const char * __restrict , FILE * __restrict ) __attribute__((__nonnull__(1,2)));






extern __attribute__((__nothrow__)) int getc(FILE * ) __attribute__((__nonnull__(1)));
# 704 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
    extern __attribute__((__nothrow__)) int (getchar)(void);
# 713 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) char *gets(char * ) __attribute__((__nonnull__(1)));
# 725 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int putc(int , FILE * ) __attribute__((__nonnull__(2)));
# 737 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
    extern __attribute__((__nothrow__)) int (putchar)(int );






extern __attribute__((__nothrow__)) int puts(const char * ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) int ungetc(int , FILE * ) __attribute__((__nonnull__(2)));
# 778 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) size_t fread(void * __restrict ,
                    size_t , size_t , FILE * __restrict ) __attribute__((__nonnull__(1,4)));
# 794 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) size_t __fread_bytes_avail(void * __restrict ,
                    size_t , FILE * __restrict ) __attribute__((__nonnull__(1,3)));
# 810 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) size_t fwrite(const void * __restrict ,
                    size_t , size_t , FILE * __restrict ) __attribute__((__nonnull__(1,4)));
# 822 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fgetpos(FILE * __restrict , fpos_t * __restrict ) __attribute__((__nonnull__(1,2)));
# 833 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fseek(FILE * , long int , int ) __attribute__((__nonnull__(1)));
# 850 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int fsetpos(FILE * __restrict , const fpos_t * __restrict ) __attribute__((__nonnull__(1,2)));
# 863 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) long int ftell(FILE * ) __attribute__((__nonnull__(1)));
# 877 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) void rewind(FILE * ) __attribute__((__nonnull__(1)));
# 886 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) void clearerr(FILE * ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) int feof(FILE * ) __attribute__((__nonnull__(1)));




extern __attribute__((__nothrow__)) int ferror(FILE * ) __attribute__((__nonnull__(1)));




extern __attribute__((__nothrow__)) void perror(const char * );
# 917 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\stdio.h" 3
extern __attribute__((__nothrow__)) int _fisatty(FILE * ) __attribute__((__nonnull__(1)));



extern __attribute__((__nothrow__)) void __use_no_semihosting_swi(void);
extern __attribute__((__nothrow__)) void __use_no_semihosting(void);
# 42 "..\\driver_st7789.h" 2
# 1 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 1 3
# 58 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) void *memcpy(void * __restrict ,
                    const void * __restrict , size_t ) __attribute__((__nonnull__(1,2)));






extern __attribute__((__nothrow__)) void *memmove(void * ,
                    const void * , size_t ) __attribute__((__nonnull__(1,2)));
# 77 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) char *strcpy(char * __restrict , const char * __restrict ) __attribute__((__nonnull__(1,2)));






extern __attribute__((__nothrow__)) char *strncpy(char * __restrict , const char * __restrict , size_t ) __attribute__((__nonnull__(1,2)));
# 93 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) char *strcat(char * __restrict , const char * __restrict ) __attribute__((__nonnull__(1,2)));






extern __attribute__((__nothrow__)) char *strncat(char * __restrict , const char * __restrict , size_t ) __attribute__((__nonnull__(1,2)));
# 117 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) int memcmp(const void * , const void * , size_t ) __attribute__((__nonnull__(1,2)));







extern __attribute__((__nothrow__)) int strcmp(const char * , const char * ) __attribute__((__nonnull__(1,2)));






extern __attribute__((__nothrow__)) int strncmp(const char * , const char * , size_t ) __attribute__((__nonnull__(1,2)));
# 141 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) int strcasecmp(const char * , const char * ) __attribute__((__nonnull__(1,2)));







extern __attribute__((__nothrow__)) int strncasecmp(const char * , const char * , size_t ) __attribute__((__nonnull__(1,2)));
# 158 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) int strcoll(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 169 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) size_t strxfrm(char * __restrict , const char * __restrict , size_t ) __attribute__((__nonnull__(2)));
# 193 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) void *memchr(const void * , int , size_t ) __attribute__((__nonnull__(1)));
# 209 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) char *strchr(const char * , int ) __attribute__((__nonnull__(1)));
# 218 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) size_t strcspn(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 232 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) char *strpbrk(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 247 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) char *strrchr(const char * , int ) __attribute__((__nonnull__(1)));
# 257 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) size_t strspn(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 270 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) char *strstr(const char * , const char * ) __attribute__((__nonnull__(1,2)));
# 280 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) char *strtok(char * __restrict , const char * __restrict ) __attribute__((__nonnull__(2)));
extern __attribute__((__nothrow__)) char *_strtok_r(char * , const char * , char ** ) __attribute__((__nonnull__(2,3)));
# 321 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) void *memset(void * , int , size_t ) __attribute__((__nonnull__(1)));





extern __attribute__((__nothrow__)) char *strerror(int );







extern __attribute__((__nothrow__)) size_t strlen(const char * ) __attribute__((__nonnull__(1)));





extern __attribute__((__nothrow__)) size_t strnlen(const char * , size_t ) __attribute__((__nonnull__(1)));







extern __attribute__((__nothrow__)) size_t strlcpy(char * , const char * , size_t ) __attribute__((__nonnull__(1,2)));
# 369 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) size_t strlcat(char * , const char * , size_t ) __attribute__((__nonnull__(1,2)));
# 395 "C:\\Keil_v5\\ARM\\ARMCLANG\\bin\\..\\include\\string.h" 3
extern __attribute__((__nothrow__)) void _membitcpybl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitcpybb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitcpyhl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitcpyhb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitcpywl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitcpywb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovebl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovebb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovehl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovehb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovewl(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
extern __attribute__((__nothrow__)) void _membitmovewb(void * , const void * , int , int , size_t ) __attribute__((__nonnull__(1,2)));
# 43 "..\\driver_st7789.h" 2
# 69 "..\\driver_st7789.h"
typedef enum
{
    ST7789_BOOL_FALSE = 0x00,
    ST7789_BOOL_TRUE = 0x01,
} st7789_bool_t;




typedef enum
{
    ST7789_FONT_12 = 0x0C,
    ST7789_FONT_16 = 0x10,
    ST7789_FONT_24 = 0x18,
} st7789_font_t;




typedef enum
{
    ST7789_GAMMA_CURVE_1 = 0x1,
    ST7789_GAMMA_CURVE_2 = 0x2,
    ST7789_GAMMA_CURVE_3 = 0x4,
    ST7789_GAMMA_CURVE_4 = 0x8,
} st7789_gamma_curve_t;




typedef enum
{
    ST7789_TEARING_EFFECT_V_BLANKING = 0x0,
    ST7789_TEARING_EFFECT_V_BLANKING_AND_H_BLANKING = 0x1,
} st7789_tearing_effect_t;




typedef enum
{
    ST7789_ORDER_PAGE_TOP_TO_BOTTOM = (0 << 7),
    ST7789_ORDER_PAGE_BOTTOM_TO_TOP = (1 << 7),
    ST7789_ORDER_COLUMN_LEFT_TO_RIGHT = (0 << 6),
    ST7789_ORDER_COLUMN_RIGHT_TO_LEFT = (1 << 6),
    ST7789_ORDER_PAGE_COLUMN_NORMAL = (0 << 5),
    ST7789_ORDER_PAGE_COLUMN_REVERSE = (1 << 5),
    ST7789_ORDER_LINE_TOP_TO_BOTTOM = (0 << 4),
    ST7789_ORDER_LINE_BOTTOM_TO_TOP = (1 << 4),
    ST7789_ORDER_COLOR_RGB = (0 << 3),
    ST7789_ORDER_COLOR_BGR = (1 << 3),
    ST7789_ORDER_REFRESH_LEFT_TO_RIGHT = (0 << 2),
    ST7789_ORDER_REFRESH_RIGHT_TO_LEFT = (1 << 2),
} st7789_order_t;




typedef enum
{
    ST7789_RGB_INTERFACE_COLOR_FORMAT_65K = 0x5,
    ST7789_RGB_INTERFACE_COLOR_FORMAT_262K = 0x6,
} st7789_rgb_interface_color_format_t;




typedef enum
{
    ST7789_CONTROL_INTERFACE_COLOR_FORMAT_12_BIT = 0x3,
    ST7789_CONTROL_INTERFACE_COLOR_FORMAT_16_BIT = 0x5,
    ST7789_CONTROL_INTERFACE_COLOR_FORMAT_18_BIT = 0x6,
} st7789_control_interface_color_format_t;




typedef enum
{
    ST7789_COLOR_ENHANCEMENT_MODE_OFF = 0x0,
    ST7789_COLOR_ENHANCEMENT_MODE_USER_INTERFACE = 0x1,
    ST7789_COLOR_ENHANCEMENT_MODE_STILL_PICTURE = 0x2,
    ST7789_COLOR_ENHANCEMENT_MODE_MOVING_IMAGE = 0x3,
} st7789_color_enhancement_mode_t;




typedef enum
{
    ST7789_COLOR_ENHANCEMENT_LEVEL_LOW = 0x0,
    ST7789_COLOR_ENHANCEMENT_LEVEL_MEDIUM = 0x1,
    ST7789_COLOR_ENHANCEMENT_LEVEL_HIGH = 0x3,
} st7789_color_enhancement_level_t;
# 176 "..\\driver_st7789.h"
typedef enum
{
    ST7789_RAM_ACCESS_MCU = 0x0,
    ST7789_RAM_ACCESS_RGB = 0x1,
} st7789_ram_access_t;




typedef enum
{
    ST7789_DISPLAY_MODE_MCU = 0x0,
    ST7789_DISPLAY_MODE_RGB = 0x1,
    ST7789_DISPLAY_MODE_VSYNC = 0x2,
} st7789_display_mode_t;




typedef enum
{
    ST7789_DATA_MODE_MSB = 0x0,
    ST7789_DATA_MODE_LSB = 0x1,
} st7789_data_mode_t;




typedef enum
{
    ST7789_RGB_BUS_WIDTH_18_BIT = 0x0,
    ST7789_RGB_BUS_WIDTH_6_BIT = 0x1,
} st7789_rgb_bus_width_t;




typedef enum
{
    ST7789_FRAME_TYPE_0 = 0x0,
    ST7789_FRAME_TYPE_1 = 0x1,
    ST7789_FRAME_TYPE_2 = 0x2,
    ST7789_FRAME_TYPE_3 = 0x3,
} st7789_frame_type_t;




typedef enum
{
    ST7789_PIXEL_TYPE_0 = 0x0,
    ST7789_PIXEL_TYPE_1 = 0x0,
    ST7789_PIXEL_TYPE_2 = 0x0,
    ST7789_PIXEL_TYPE_3 = 0x0,
} st7789_pixel_type_t;




typedef enum
{
    ST7789_DIRECT_RGB_MODE_MEM = 0x0,
    ST7789_DIRECT_RGB_MODE_SHIFT = 0x1,
} st7789_direct_rgb_mode_t;




typedef enum
{
    ST7789_RGB_IF_ENABLE_MODE_MCU = 0x0,
    ST7789_RGB_IF_ENABLE_MODE_DE = 0x2,
    ST7789_RGB_IF_ENABLE_MODE_HV = 0x3,
} st7789_rgb_if_enable_mode_t;




typedef enum
{
    ST7789_PIN_LEVEL_LOW = 0x0,
    ST7789_PIN_LEVEL_HIGH = 0x1,
} st7789_pin_level_t;




typedef enum
{
    ST7789_FRAME_RATE_DIVIDED_CONTROL_DIV_1 = 0x0,
    ST7789_FRAME_RATE_DIVIDED_CONTROL_DIV_2 = 0x1,
    ST7789_FRAME_RATE_DIVIDED_CONTROL_DIV_4 = 0x2,
    ST7789_FRAME_RATE_DIVIDED_CONTROL_DIV_8 = 0x3,
} st7789_frame_rate_divided_control_t;




typedef enum
{
    ST7789_INVERSION_IDLE_MODE_DOT = 0x0,
    ST7789_INVERSION_IDLE_MODE_COLUMN = 0x7,
} st7789_inversion_idle_mode_t;




typedef enum
{
    ST7789_INVERSION_PARTIAL_MODE_DOT = 0x0,
    ST7789_INVERSION_PARTIAL_MODE_COLUMN = 0x7,
} st7789_inversion_partial_mode_t;




typedef enum
{
    ST7789_NON_DISPLAY_SOURCE_OUTPUT_LEVEL_V63 = 0x0,
    ST7789_NON_DISPLAY_SOURCE_OUTPUT_LEVEL_V0 = 0x1,
} st7789_non_display_source_output_level_t;




typedef enum
{
    ST7789_NON_DISPLAY_AREA_SCAN_MODE_NORMAL = 0x0,
    ST7789_NON_DISPLAY_AREA_SCAN_MODE_INTERVAL = 0x1,
} st7789_non_display_area_scan_mode_t;




typedef enum
{
    ST7789_NON_DISPLAY_FRAME_FREQUENCY_EVERY = 0x0,
    ST7789_NON_DISPLAY_FRAME_FREQUENCY_1_DIV_3 = 0x1,
    ST7789_NON_DISPLAY_FRAME_FREQUENCY_1_DIV_5 = 0x2,
    ST7789_NON_DISPLAY_FRAME_FREQUENCY_1_DIV_7 = 0x3,
    ST7789_NON_DISPLAY_FRAME_FREQUENCY_1_DIV_9 = 0x4,
    ST7789_NON_DISPLAY_FRAME_FREQUENCY_1_DIV_11 = 0x5,
    ST7789_NON_DISPLAY_FRAME_FREQUENCY_1_DIV_13 = 0x6,
    ST7789_NON_DISPLAY_FRAME_FREQUENCY_1_DIV_15 = 0x7,
    ST7789_NON_DISPLAY_FRAME_FREQUENCY_1_DIV_17 = 0x8,
    ST7789_NON_DISPLAY_FRAME_FREQUENCY_1_DIV_19 = 0x9,
    ST7789_NON_DISPLAY_FRAME_FREQUENCY_1_DIV_21 = 0xA,
    ST7789_NON_DISPLAY_FRAME_FREQUENCY_1_DIV_23 = 0xB,
    ST7789_NON_DISPLAY_FRAME_FREQUENCY_1_DIV_25 = 0xC,
    ST7789_NON_DISPLAY_FRAME_FREQUENCY_1_DIV_27 = 0xD,
    ST7789_NON_DISPLAY_FRAME_FREQUENCY_1_DIV_29 = 0xE,
    ST7789_NON_DISPLAY_FRAME_FREQUENCY_1_DIV_31 = 0xF,
} st7789_non_display_frame_frequency_t;




typedef enum
{
    ST7789_VGHS_12P20_V = 0x0,
    ST7789_VGHS_12P54_V = 0x1,
    ST7789_VGHS_12P89_V = 0x2,
    ST7789_VGHS_13P26_V = 0x3,
    ST7789_VGHS_13P65_V = 0x4,
    ST7789_VGHS_14P06_V = 0x5,
    ST7789_VGHS_14P50_V = 0x6,
    ST7789_VGHS_14P97_V = 0x7,
} st7789_vghs_t;




typedef enum
{
    ST7789_VGLS_NEGATIVE_7P16 = 0x0,
    ST7789_VGLS_NEGATIVE_7P67 = 0x1,
    ST7789_VGLS_NEGATIVE_8P23 = 0x2,
    ST7789_VGLS_NEGATIVE_8P87 = 0x3,
    ST7789_VGLS_NEGATIVE_9P60 = 0x4,
    ST7789_VGLS_NEGATIVE_10P43 = 0x5,
    ST7789_VGLS_NEGATIVE_11P38 = 0x6,
    ST7789_VGLS_NEGATIVE_12P50 = 0x7,
} st7789_vgls_t;




typedef enum
{
    ST7789_VDV_VRH_FROM_NVM = 0x0,
    ST7789_VDV_VRH_FROM_CMD = 0x1,
} st7789_vdv_vrh_from_t;




typedef enum
{
    ST7789_INVERSION_SELECTION_DOT = 0x0,
    ST7789_INVERSION_SELECTION_COLUMN = 0x7,
} st7789_inversion_selection_t;




typedef enum
{
    ST7789_FRAME_RATE_119_HZ = 0x00,
    ST7789_FRAME_RATE_111_HZ = 0x01,
    ST7789_FRAME_RATE_105_HZ = 0x02,
    ST7789_FRAME_RATE_99_HZ = 0x03,
    ST7789_FRAME_RATE_94_HZ = 0x04,
    ST7789_FRAME_RATE_90_HZ = 0x05,
    ST7789_FRAME_RATE_86_HZ = 0x06,
    ST7789_FRAME_RATE_82_HZ = 0x07,
    ST7789_FRAME_RATE_78_HZ = 0x08,
    ST7789_FRAME_RATE_75_HZ = 0x09,
    ST7789_FRAME_RATE_72_HZ = 0x0A,
    ST7789_FRAME_RATE_69_HZ = 0x0B,
    ST7789_FRAME_RATE_67_HZ = 0x0C,
    ST7789_FRAME_RATE_64_HZ = 0x0D,
    ST7789_FRAME_RATE_62_HZ = 0x0E,
    ST7789_FRAME_RATE_60_HZ = 0x0F,
    ST7789_FRAME_RATE_58_HZ = 0x10,
    ST7789_FRAME_RATE_57_HZ = 0x11,
    ST7789_FRAME_RATE_55_HZ = 0x12,
    ST7789_FRAME_RATE_53_HZ = 0x13,
    ST7789_FRAME_RATE_52_HZ = 0x14,
    ST7789_FRAME_RATE_50_HZ = 0x15,
    ST7789_FRAME_RATE_49_HZ = 0x16,
    ST7789_FRAME_RATE_48_HZ = 0x17,
    ST7789_FRAME_RATE_46_HZ = 0x18,
    ST7789_FRAME_RATE_45_HZ = 0x19,
    ST7789_FRAME_RATE_44_HZ = 0x1A,
    ST7789_FRAME_RATE_43_HZ = 0x1B,
    ST7789_FRAME_RATE_42_HZ = 0x1C,
    ST7789_FRAME_RATE_41_HZ = 0x1D,
    ST7789_FRAME_RATE_40_HZ = 0x1E,
    ST7789_FRAME_RATE_39_HZ = 0x1F,
} st7789_frame_rate_t;




typedef enum
{
    ST7789_PWM_FREQUENCY_39P2_KHZ = (0x0 << 3) | (0x0 << 0),
    ST7789_PWM_FREQUENCY_78P7_KHZ = (0x1 << 3) | (0x0 << 0),
    ST7789_PWM_FREQUENCY_158P7_KHZ = (0x2 << 3) | (0x0 << 0),
    ST7789_PWM_FREQUENCY_322P6_KHZ = (0x3 << 3) | (0x0 << 0),
    ST7789_PWM_FREQUENCY_666P7_KHZ = (0x4 << 3) | (0x0 << 0),
    ST7789_PWM_FREQUENCY_1428P6_KHZ = (0x5 << 3) | (0x0 << 0),
    ST7789_PWM_FREQUENCY_19P6_KHZ = (0x0 << 3) | (0x1 << 0),
    ST7789_PWM_FREQUENCY_39P4_KHZ = (0x1 << 3) | (0x1 << 0),
    ST7789_PWM_FREQUENCY_79P4_KHZ = (0x2 << 3) | (0x1 << 0),
    ST7789_PWM_FREQUENCY_161P3_KHZ = (0x3 << 3) | (0x1 << 0),
    ST7789_PWM_FREQUENCY_333P3_KHZ = (0x4 << 3) | (0x1 << 0),
    ST7789_PWM_FREQUENCY_714P3_KHZ = (0x5 << 3) | (0x1 << 0),
    ST7789_PWM_FREQUENCY_9P8_KHZ = (0x0 << 3) | (0x2 << 0),
    ST7789_PWM_FREQUENCY_19P7_KHZ = (0x1 << 3) | (0x2 << 0),
    ST7789_PWM_FREQUENCY_39P7_KHZ = (0x2 << 3) | (0x2 << 0),
    ST7789_PWM_FREQUENCY_80P6_KHZ = (0x3 << 3) | (0x2 << 0),
    ST7789_PWM_FREQUENCY_166P7_KHZ = (0x4 << 3) | (0x2 << 0),
    ST7789_PWM_FREQUENCY_357P1_KHZ = (0x5 << 3) | (0x2 << 0),
    ST7789_PWM_FREQUENCY_4P9_KHZ = (0x0 << 3) | (0x3 << 0),
    ST7789_PWM_FREQUENCY_9P80_KHZ = (0x1 << 3) | (0x3 << 0),
    ST7789_PWM_FREQUENCY_19P8_KHZ = (0x2 << 3) | (0x3 << 0),
    ST7789_PWM_FREQUENCY_40P3_KHZ = (0x3 << 3) | (0x3 << 0),
    ST7789_PWM_FREQUENCY_83P3_KHZ = (0x4 << 3) | (0x3 << 0),
    ST7789_PWM_FREQUENCY_178P6_KHZ = (0x5 << 3) | (0x3 << 0),
    ST7789_PWM_FREQUENCY_2P45_KHZ = (0x0 << 3) | (0x4 << 0),
    ST7789_PWM_FREQUENCY_4P90_KHZ = (0x1 << 3) | (0x4 << 0),
    ST7789_PWM_FREQUENCY_9P9_KHZ = (0x2 << 3) | (0x4 << 0),
    ST7789_PWM_FREQUENCY_20P2_KHZ = (0x3 << 3) | (0x4 << 0),
    ST7789_PWM_FREQUENCY_41P7_KHZ = (0x4 << 3) | (0x4 << 0),
    ST7789_PWM_FREQUENCY_89P3_KHZ = (0x5 << 3) | (0x4 << 0),
    ST7789_PWM_FREQUENCY_1P23_KHZ = (0x0 << 3) | (0x5 << 0),
    ST7789_PWM_FREQUENCY_2P5_KHZ = (0x1 << 3) | (0x5 << 0),
    ST7789_PWM_FREQUENCY_5P0_KHZ = (0x2 << 3) | (0x5 << 0),
    ST7789_PWM_FREQUENCY_10P1_KHZ = (0x3 << 3) | (0x5 << 0),
    ST7789_PWM_FREQUENCY_20P8_KHZ = (0x4 << 3) | (0x5 << 0),
    ST7789_PWM_FREQUENCY_44P6_KHZ = (0x5 << 3) | (0x5 << 0),
    ST7789_PWM_FREQUENCY_0P61_KHZ = (0x0 << 3) | (0x6 << 0),
    ST7789_PWM_FREQUENCY_1P230_KHZ = (0x1 << 3) | (0x6 << 0),
    ST7789_PWM_FREQUENCY_2P48_KHZ = (0x2 << 3) | (0x6 << 0),
    ST7789_PWM_FREQUENCY_5P00_KHZ = (0x3 << 3) | (0x6 << 0),
    ST7789_PWM_FREQUENCY_10P4_KHZ = (0x4 << 3) | (0x6 << 0),
    ST7789_PWM_FREQUENCY_22P3_KHZ = (0x5 << 3) | (0x6 << 0),
    ST7789_PWM_FREQUENCY_0P31_KHZ = (0x0 << 3) | (0x7 << 0),
    ST7789_PWM_FREQUENCY_0P62_KHZ = (0x1 << 3) | (0x7 << 0),
    ST7789_PWM_FREQUENCY_1P24_KHZ = (0x2 << 3) | (0x7 << 0),
    ST7789_PWM_FREQUENCY_2P25_KHZ = (0x3 << 3) | (0x7 << 0),
    ST7789_PWM_FREQUENCY_5P2_KHZ = (0x4 << 3) | (0x7 << 0),
    ST7789_PWM_FREQUENCY_11P2_KHZ = (0x5 << 3) | (0x7 << 0),
} st7789_pwm_frequency_t;




typedef enum
{
    ST7789_AVDD_6P4_V = 0x0,
    ST7789_AVDD_6P6_V = 0x1,
    ST7789_AVDD_6P8_V = 0x2,
} st7789_avdd_t;




typedef enum
{
    ST7789_AVCL_NEGTIVE_4P4_V = 0x0,
    ST7789_AVCL_NEGTIVE_4P6_V = 0x1,
    ST7789_AVCL_NEGTIVE_4P8_V = 0x2,
    ST7789_AVCL_NEGTIVE_5P0_V = 0x3,
} st7789_avcl_t;




typedef enum
{
    ST7789_VDS_2P19_V = 0x0,
    ST7789_VDS_2P3_V = 0x1,
    ST7789_VDS_2P4_V = 0x2,
    ST7789_VDS_2P51_V = 0x3,
} st7789_vds_t;




typedef enum
{
    ST7789_GATE_SCAN_MODE_INTERLACE = 0x0,
    ST7789_GATE_SCAN_MODE_NON_INTERLACE = 0x1,
} st7789_gate_scan_mode_t;




typedef enum
{
    ST7789_GATE_SCAN_DIRECTION_0_319 = 0x0,
    ST7789_GATE_SCAN_DIRECTION_319_0 = 0x1,
} st7789_gate_scan_direction_t;




typedef enum
{
    ST7789_SBCLK_DIV_2 = 0x0,
    ST7789_SBCLK_DIV_3 = 0x1,
    ST7789_SBCLK_DIV_4 = 0x2,
    ST7789_SBCLK_DIV_6 = 0x3,
} st7789_sbclk_div_t;




typedef enum
{
    ST7789_STP14CK_DIV_2 = 0x0,
    ST7789_STP14CK_DIV_3 = 0x1,
    ST7789_STP14CK_DIV_4 = 0x2,
    ST7789_STP14CK_DIV_6 = 0x3,
} st7789_stp14ck_div_t;
# 556 "..\\driver_st7789.h"
typedef struct st7789_handle_s
{
    uint8_t (*spi_init)(void);
    uint8_t (*spi_deinit)(void);
    uint8_t (*spi_write_cmd)(uint8_t *buf, uint16_t len);
    uint8_t (*cmd_data_gpio_init)(void);
    uint8_t (*cmd_data_gpio_deinit)(void);
    uint8_t (*cmd_data_gpio_write)(uint8_t value);
    uint8_t (*reset_gpio_init)(void);
    uint8_t (*reset_gpio_deinit)(void);
    uint8_t (*reset_gpio_write)(uint8_t value);
    void (*debug_print)(const char *const fmt, ...);
    void (*delay_ms)(uint32_t ms);
    uint8_t inited;
    uint16_t column;
    uint16_t row;
    uint8_t format;
    uint8_t buf[(4096) + 8];
} st7789_handle_t;




typedef struct st7789_info_s
{
    char chip_name[32];
    char manufacturer_name[32];
    char interface[8];
    float supply_voltage_min_v;
    float supply_voltage_max_v;
    float max_current_ma;
    float temperature_min;
    float temperature_max;
    uint32_t driver_version;
} st7789_info_t;
# 718 "..\\driver_st7789.h"
uint8_t st7789_info(st7789_info_t *info);
# 732 "..\\driver_st7789.h"
uint8_t st7789_init(st7789_handle_t *handle);
# 747 "..\\driver_st7789.h"
uint8_t st7789_deinit(st7789_handle_t *handle);
# 760 "..\\driver_st7789.h"
uint8_t st7789_set_column(st7789_handle_t *handle, uint16_t column);
# 773 "..\\driver_st7789.h"
uint8_t st7789_set_row(st7789_handle_t *handle, uint16_t row);
# 786 "..\\driver_st7789.h"
uint8_t st7789_clear(st7789_handle_t *handle);
# 803 "..\\driver_st7789.h"
uint8_t st7789_draw_point(st7789_handle_t *handle, uint16_t x, uint16_t y, uint32_t color);
# 822 "..\\driver_st7789.h"
uint8_t st7789_write_string(st7789_handle_t *handle, uint16_t x, uint16_t y, char *str, uint16_t len, uint32_t color, st7789_font_t font);
# 845 "..\\driver_st7789.h"
uint8_t st7789_fill_rect(st7789_handle_t *handle, uint16_t left, uint16_t top, uint16_t right, uint16_t bottom, uint32_t color);
# 868 "..\\driver_st7789.h"
uint8_t st7789_draw_picture_12bits(st7789_handle_t *handle, uint16_t left, uint16_t top, uint16_t right, uint16_t bottom, uint16_t *image);
# 891 "..\\driver_st7789.h"
uint8_t st7789_draw_picture_16bits(st7789_handle_t *handle, uint16_t left, uint16_t top, uint16_t right, uint16_t bottom, uint16_t *image);
# 914 "..\\driver_st7789.h"
uint8_t st7789_draw_picture_18bits(st7789_handle_t *handle, uint16_t left, uint16_t top, uint16_t right, uint16_t bottom, uint32_t *image);
# 926 "..\\driver_st7789.h"
uint8_t st7789_nop(st7789_handle_t *handle);
# 938 "..\\driver_st7789.h"
uint8_t st7789_software_reset(st7789_handle_t *handle);
# 950 "..\\driver_st7789.h"
uint8_t st7789_sleep_in(st7789_handle_t *handle);
# 962 "..\\driver_st7789.h"
uint8_t st7789_sleep_out(st7789_handle_t *handle);
# 974 "..\\driver_st7789.h"
uint8_t st7789_partial_display_mode_on(st7789_handle_t *handle);
# 986 "..\\driver_st7789.h"
uint8_t st7789_normal_display_mode_on(st7789_handle_t *handle);
# 998 "..\\driver_st7789.h"
uint8_t st7789_display_inversion_off(st7789_handle_t *handle);
# 1010 "..\\driver_st7789.h"
uint8_t st7789_display_inversion_on(st7789_handle_t *handle);
# 1023 "..\\driver_st7789.h"
uint8_t st7789_set_gamma(st7789_handle_t *handle, uint8_t gamma);
# 1035 "..\\driver_st7789.h"
uint8_t st7789_display_off(st7789_handle_t *handle);
# 1047 "..\\driver_st7789.h"
uint8_t st7789_display_on(st7789_handle_t *handle);
# 1063 "..\\driver_st7789.h"
uint8_t st7789_set_column_address(st7789_handle_t *handle, uint16_t start_address, uint16_t end_address);
# 1079 "..\\driver_st7789.h"
uint8_t st7789_set_row_address(st7789_handle_t *handle, uint16_t start_address, uint16_t end_address);
# 1093 "..\\driver_st7789.h"
uint8_t st7789_memory_write(st7789_handle_t *handle, uint8_t *data, uint16_t len);
# 1107 "..\\driver_st7789.h"
uint8_t st7789_set_partial_areas(st7789_handle_t *handle, uint16_t start_row, uint16_t end_row);
# 1122 "..\\driver_st7789.h"
uint8_t st7789_set_vertical_scrolling(st7789_handle_t *handle, uint16_t top_fixed_area,
                                      uint16_t scrolling_area, uint16_t bottom_fixed_area);
# 1135 "..\\driver_st7789.h"
uint8_t st7789_tearing_effect_line_off(st7789_handle_t *handle);
# 1148 "..\\driver_st7789.h"
uint8_t st7789_tearing_effect_line_on(st7789_handle_t *handle, st7789_tearing_effect_t effect);
# 1161 "..\\driver_st7789.h"
uint8_t st7789_set_memory_data_access_control(st7789_handle_t *handle, uint8_t order);
# 1175 "..\\driver_st7789.h"
uint8_t st7789_set_vertical_scroll_start_address(st7789_handle_t *handle, uint16_t start_address);
# 1187 "..\\driver_st7789.h"
uint8_t st7789_idle_mode_off(st7789_handle_t *handle);
# 1199 "..\\driver_st7789.h"
uint8_t st7789_idle_mode_on(st7789_handle_t *handle);
# 1213 "..\\driver_st7789.h"
uint8_t st7789_set_interface_pixel_format(st7789_handle_t *handle, st7789_rgb_interface_color_format_t rgb,
                                          st7789_control_interface_color_format_t control);
# 1228 "..\\driver_st7789.h"
uint8_t st7789_memory_continue_write(st7789_handle_t *handle, uint8_t *data, uint16_t len);
# 1241 "..\\driver_st7789.h"
uint8_t st7789_set_tear_scanline(st7789_handle_t *handle, uint16_t l);
# 1254 "..\\driver_st7789.h"
uint8_t st7789_set_display_brightness(st7789_handle_t *handle, uint8_t brightness);
# 1269 "..\\driver_st7789.h"
uint8_t st7789_set_display_control(st7789_handle_t *handle, st7789_bool_t brightness_control_block,
                                   st7789_bool_t display_dimming, st7789_bool_t backlight_control);
# 1285 "..\\driver_st7789.h"
uint8_t st7789_set_brightness_control_and_color_enhancement(st7789_handle_t *handle, st7789_bool_t color_enhancement,
                                                            st7789_color_enhancement_mode_t mode, st7789_color_enhancement_level_t level);
# 1299 "..\\driver_st7789.h"
uint8_t st7789_set_cabc_minimum_brightness(st7789_handle_t *handle, uint8_t brightness);
# 1328 "..\\driver_st7789.h"
uint8_t st7789_set_ram_control(st7789_handle_t *handle,
                               st7789_ram_access_t ram_mode,
                               st7789_display_mode_t display_mode,
                               st7789_frame_type_t frame_type,
                               st7789_data_mode_t data_mode,
                               st7789_rgb_bus_width_t bus_width,
                               st7789_pixel_type_t pixel_type);
# 1357 "..\\driver_st7789.h"
uint8_t st7789_set_rgb_interface_control(st7789_handle_t *handle,
                                         st7789_direct_rgb_mode_t rgb_mode,
                                         st7789_rgb_if_enable_mode_t rgb_if_mode,
                                         st7789_pin_level_t vspl,
                                         st7789_pin_level_t hspl,
                                         st7789_pin_level_t dpl,
                                         st7789_pin_level_t epl,
                                         uint8_t vbp,
                                         uint8_t hbp);
# 1395 "..\\driver_st7789.h"
uint8_t st7789_set_porch(st7789_handle_t *handle,
                         uint8_t back_porch_normal,
                         uint8_t front_porch_normal,
                         st7789_bool_t separate_porch_enable,
                         uint8_t back_porch_idle,
                         uint8_t front_porch_idle,
                         uint8_t back_porch_partial,
                         uint8_t front_porch_partial);
# 1423 "..\\driver_st7789.h"
uint8_t st7789_set_frame_rate_control(st7789_handle_t *handle,
                                      st7789_bool_t separate_fr_control,
                                      st7789_frame_rate_divided_control_t div_control,
                                      st7789_inversion_idle_mode_t idle_mode,
                                      uint8_t idle_frame_rate,
                                      st7789_inversion_partial_mode_t partial_mode,
                                      uint8_t partial_frame_rate);
# 1444 "..\\driver_st7789.h"
uint8_t st7789_set_partial_mode_control(st7789_handle_t *handle,
                                        st7789_non_display_source_output_level_t level,
                                        st7789_non_display_area_scan_mode_t mode,
                                        st7789_non_display_frame_frequency_t frequency);
# 1461 "..\\driver_st7789.h"
uint8_t st7789_set_gate_control(st7789_handle_t *handle, st7789_vghs_t vghs, st7789_vgls_t vgls);
# 1478 "..\\driver_st7789.h"
uint8_t st7789_set_gate_on_timing_adjustment(st7789_handle_t *handle,
                                             uint8_t gate_on_timing_adjustment,
                                             uint8_t gate_off_timing_adjustment_rgb,
                                             uint8_t gate_off_timing_adjustment);
# 1494 "..\\driver_st7789.h"
uint8_t st7789_set_digital_gamma(st7789_handle_t *handle, st7789_bool_t enable);
# 1508 "..\\driver_st7789.h"
uint8_t st7789_set_vcoms(st7789_handle_t *handle, uint8_t vcoms);
# 1521 "..\\driver_st7789.h"
uint8_t st7789_vcom_convert_to_register(st7789_handle_t *handle, float v, uint8_t *reg);
# 1534 "..\\driver_st7789.h"
uint8_t st7789_vcom_convert_to_data(st7789_handle_t *handle, uint8_t reg, float *v);
# 1553 "..\\driver_st7789.h"
uint8_t st7789_set_lcm_control(st7789_handle_t *handle,
                               st7789_bool_t xmy,
                               st7789_bool_t xbgr,
                               st7789_bool_t xinv,
                               st7789_bool_t xmx,
                               st7789_bool_t xmh,
                               st7789_bool_t xmv,
                               st7789_bool_t xgs);
# 1573 "..\\driver_st7789.h"
uint8_t st7789_set_id_code_setting(st7789_handle_t *handle, uint8_t id[3]);
# 1586 "..\\driver_st7789.h"
uint8_t st7789_set_vdv_vrh_from(st7789_handle_t *handle, st7789_vdv_vrh_from_t from);
# 1600 "..\\driver_st7789.h"
uint8_t st7789_set_vrhs(st7789_handle_t *handle, uint8_t vrhs);
# 1613 "..\\driver_st7789.h"
uint8_t st7789_vrhs_convert_to_register(st7789_handle_t *handle, float v, uint8_t *reg);
# 1626 "..\\driver_st7789.h"
uint8_t st7789_vrhs_convert_to_data(st7789_handle_t *handle, uint8_t reg, float *v);
# 1640 "..\\driver_st7789.h"
uint8_t st7789_set_vdv(st7789_handle_t *handle, uint8_t vdv);
# 1653 "..\\driver_st7789.h"
uint8_t st7789_vdv_convert_to_register(st7789_handle_t *handle, float v, uint8_t *reg);
# 1666 "..\\driver_st7789.h"
uint8_t st7789_vdv_convert_to_data(st7789_handle_t *handle, uint8_t reg, float *v);
# 1680 "..\\driver_st7789.h"
uint8_t st7789_set_vcoms_offset(st7789_handle_t *handle, uint8_t offset);
# 1693 "..\\driver_st7789.h"
uint8_t st7789_vcoms_offset_convert_to_register(st7789_handle_t *handle, float v, uint8_t *reg);
# 1706 "..\\driver_st7789.h"
uint8_t st7789_vcoms_offset_convert_to_data(st7789_handle_t *handle, uint8_t reg, float *v);
# 1720 "..\\driver_st7789.h"
uint8_t st7789_set_frame_rate(st7789_handle_t *handle, st7789_inversion_selection_t selection, st7789_frame_rate_t rate);
# 1736 "..\\driver_st7789.h"
uint8_t st7789_set_cabc_control(st7789_handle_t *handle,
                                st7789_bool_t led_on,
                                st7789_bool_t led_pwm_init,
                                st7789_bool_t led_pwm_fix,
                                st7789_bool_t led_pwm_polarity);
# 1753 "..\\driver_st7789.h"
uint8_t st7789_set_pwm_frequency(st7789_handle_t *handle, st7789_pwm_frequency_t frequency);
# 1768 "..\\driver_st7789.h"
uint8_t st7789_set_power_control_1(st7789_handle_t *handle, st7789_avdd_t avdd, st7789_avcl_t avcl, st7789_vds_t vds);
# 1780 "..\\driver_st7789.h"
uint8_t st7789_enable_vap_van_signal_output(st7789_handle_t *handle);
# 1793 "..\\driver_st7789.h"
uint8_t st7789_set_command_2_enable(st7789_handle_t *handle, st7789_bool_t enable);
# 1806 "..\\driver_st7789.h"
uint8_t st7789_set_positive_voltage_gamma_control(st7789_handle_t *handle, uint8_t param[14]);
# 1819 "..\\driver_st7789.h"
uint8_t st7789_set_negative_voltage_gamma_control(st7789_handle_t *handle, uint8_t param[14]);
# 1832 "..\\driver_st7789.h"
uint8_t st7789_set_digital_gamma_look_up_table_red(st7789_handle_t *handle, uint8_t param[64]);
# 1845 "..\\driver_st7789.h"
uint8_t st7789_set_digital_gamma_look_up_table_blue(st7789_handle_t *handle, uint8_t param[64]);
# 1864 "..\\driver_st7789.h"
uint8_t st7789_set_gate(st7789_handle_t *handle,
                        uint8_t gate_line_number,
                        uint8_t first_scan_line_number,
                        st7789_gate_scan_mode_t mode,
                        st7789_gate_scan_direction_t direction);
# 1881 "..\\driver_st7789.h"
uint8_t st7789_gate_line_convert_to_register(st7789_handle_t *handle, uint16_t l, uint8_t *reg);
# 1894 "..\\driver_st7789.h"
uint8_t st7789_gate_line_convert_to_data(st7789_handle_t *handle, uint8_t reg, uint16_t *l);
# 1908 "..\\driver_st7789.h"
uint8_t st7789_set_spi2_enable(st7789_handle_t *handle, st7789_bool_t date_lane, st7789_bool_t command_table_2);
# 1922 "..\\driver_st7789.h"
uint8_t st7789_set_power_control_2(st7789_handle_t *handle, st7789_sbclk_div_t sbclk, st7789_stp14ck_div_t stp14ck);
# 1940 "..\\driver_st7789.h"
uint8_t st7789_set_equalize_time_control(st7789_handle_t *handle,
                                         uint8_t source_equalize_time,
                                         uint8_t source_pre_drive_time,
                                         uint8_t gate_equalize_time);
# 1955 "..\\driver_st7789.h"
uint8_t st7789_set_program_mode_control(st7789_handle_t *handle);
# 1968 "..\\driver_st7789.h"
uint8_t st7789_set_program_mode_enable(st7789_handle_t *handle, st7789_bool_t enable);
# 1982 "..\\driver_st7789.h"
uint8_t st7789_set_nvm_setting(st7789_handle_t *handle, uint8_t addr, uint8_t data);
# 1994 "..\\driver_st7789.h"
uint8_t st7789_set_program_action(st7789_handle_t *handle);
# 2018 "..\\driver_st7789.h"
uint8_t st7789_write_cmd(st7789_handle_t *handle, uint8_t cmd);
# 2031 "..\\driver_st7789.h"
uint8_t st7789_write_data(st7789_handle_t *handle, uint8_t data);
# 41 "..\\driver_st7789_interface.h" 2
# 61 "..\\driver_st7789_interface.h"
uint8_t st7789_interface_spi_init(void);
# 70 "..\\driver_st7789_interface.h"
uint8_t st7789_interface_spi_deinit(void);
# 81 "..\\driver_st7789_interface.h"
uint8_t st7789_interface_spi_write_cmd(uint8_t *buf, uint16_t len);






void st7789_interface_delay_ms(uint32_t ms);






void st7789_interface_debug_print(const char *const fmt, ...);
# 104 "..\\driver_st7789_interface.h"
uint8_t st7789_interface_cmd_data_gpio_init(void);
# 113 "..\\driver_st7789_interface.h"
uint8_t st7789_interface_cmd_data_gpio_deinit(void);
# 123 "..\\driver_st7789_interface.h"
uint8_t st7789_interface_cmd_data_gpio_write(uint8_t value);
# 132 "..\\driver_st7789_interface.h"
uint8_t st7789_interface_reset_gpio_init(void);
# 141 "..\\driver_st7789_interface.h"
uint8_t st7789_interface_reset_gpio_deinit(void);
# 151 "..\\driver_st7789_interface.h"
uint8_t st7789_interface_reset_gpio_write(uint8_t value);
# 38 "../driver_st7789_interface_template.c" 2








uint8_t st7789_interface_spi_init(void)
{
    return 0;
}
# 58 "../driver_st7789_interface_template.c"
uint8_t st7789_interface_spi_deinit(void)
{
    return 0;
}
# 72 "../driver_st7789_interface_template.c"
uint8_t st7789_interface_spi_write_cmd(uint8_t *buf, uint16_t len)
{
    return 0;
}






void st7789_interface_delay_ms(uint32_t ms)
{

}






void st7789_interface_debug_print(const char *const fmt, ...)
{

}
# 104 "../driver_st7789_interface_template.c"
uint8_t st7789_interface_cmd_data_gpio_init(void)
{
    return 0;
}
# 116 "../driver_st7789_interface_template.c"
uint8_t st7789_interface_cmd_data_gpio_deinit(void)
{
    return 0;
}
# 129 "../driver_st7789_interface_template.c"
uint8_t st7789_interface_cmd_data_gpio_write(uint8_t value)
{
    return 0;
}
# 141 "../driver_st7789_interface_template.c"
uint8_t st7789_interface_reset_gpio_init(void)
{
    return 0;
}
# 153 "../driver_st7789_interface_template.c"
uint8_t st7789_interface_reset_gpio_deinit(void)
{
    return 0;
}
# 166 "../driver_st7789_interface_template.c"
uint8_t st7789_interface_reset_gpio_write(uint8_t value)
{
    return 0;
}
