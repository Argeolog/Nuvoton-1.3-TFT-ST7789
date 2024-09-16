
#include <stdio.h>
#include "NuMicro.h"
#include "driver_st7789_basic.h"
#include "driver_st7789_display_test.h"
#include "clock.h"
#include "delay.h"
#include "uart2.h"

#include "driver_st7789_basic.h"
#include "driver_st7789_display_test.h"
#include "clock.h"
#include "delay.h"
#include "uart.h"
#include "shell.h"
#include "getopt.h"
#include <stdlib.h>
//#include "driver_st7789_display_image.h"
#include <stdlib.h>

uint8_t g_buf[256];        /**< uart buffer */
volatile uint16_t g_len;   /**< uart buffer length */

void SYS_Init(void)
{
    /*---------------------------------------------------------------------------------------------------------*/
    /* Init System Clock                                                                                       */
    /*---------------------------------------------------------------------------------------------------------*/
    //CLK->PWRCTL   = (CLK->PWRCTL   & ~(0x0008000FUL)) | 0x0079001CUL;
    //CLK->PLLCTL   = (CLK->PLLCTL   & ~(0x001FDE3FUL)) | 0x00084410UL;
    //CLK->CLKDIV0  = (CLK->CLKDIV0  & ~(0x00FFFFFFUL)) | 0x00000000UL;
    //CLK->CLKDIV1  = (CLK->CLKDIV1  & ~(0xFF0000FFUL)) | 0x00000000UL;
    //CLK->CLKDIV4  = (CLK->CLKDIV4  & ~(0x0000000FUL)) | 0x00000000UL;
    //CLK->PCLKDIV  = (CLK->PCLKDIV  & ~(0x00000077UL)) | 0x00000000UL;
    //CLK->CLKSEL0  = (CLK->CLKSEL0  & ~(0x0000013FUL)) | 0x0000003FUL;
    //CLK->CLKSEL1  = (CLK->CLKSEL1  & ~(0x7777777FUL)) | 0x4477773BUL;
    //CLK->CLKSEL2  = (CLK->CLKSEL2  & ~(0x7000033FUL)) | 0x2000032BUL;
    //CLK->CLKSEL3  = (CLK->CLKSEL3  & ~(0x07000003UL)) | 0x04000003UL;
    //CLK->AHBCLK   = (CLK->AHBCLK   & ~(0x0000808EUL)) | 0x00008004UL;
    //CLK->APBCLK0  = (CLK->APBCLK0  & ~(0x180733FFUL)) | 0x00010105UL;
    //CLK->APBCLK1  = (CLK->APBCLK1  & ~(0xC00F1701UL)) | 0x00000000UL;
    //CLK->CLKOCTL  = (CLK->CLKOCTL  & ~(0x0000007FUL)) | 0x00000000UL;
    //SysTick->CTRL = (SysTick->CTRL & ~(0x00000005UL)) | 0x00000000UL;
    //RTC->LXTCTL   = (RTC->LXTCTL   & ~(0x00000080UL)) | 0x780F010EUL;

    /* Unlock protected registers */
    SYS_UnlockReg();

    /* If the macros do not exist in your project, please refer to the related clk.h in Header folder of the tool package */
    /* Enable clock source */
    CLK_EnableXtalRC(CLK_PWRCTL_HIRCEN_Msk);

    /* Waiting for clock source ready */
    CLK_WaitClockReady(CLK_STATUS_HIRCSTB_Msk);

    /* Disable PLL first to avoid unstable when setting PLL */
    CLK_DisablePLL();

//    /* Set PLL frequency */
//    CLK->PLLCTL = (CLK->PLLCTL & ~(0x001FDE3FUL)) | 0x00084410UL;

//    /* Waiting for PLL ready */
//    CLK_WaitClockReady(CLK_STATUS_PLLSTB_Msk);

    /* Set HCLK clock */
    CLK_SetHCLK(CLK_CLKSEL0_HCLKSEL_HIRC, CLK_CLKDIV0_HCLK(1));

    /* Set PCLK-related clock */
    CLK->PCLKDIV = (CLK_PCLKDIV_APB0DIV_DIV1 | CLK_PCLKDIV_APB1DIV_DIV1);

    /* Enable IP clock */
    CLK_EnableModuleClock(FMCIDLE_MODULE);
    CLK_EnableModuleClock(I2C0_MODULE);
    CLK_EnableModuleClock(ISP_MODULE);
    CLK_EnableModuleClock(TMR0_MODULE);
    CLK_EnableModuleClock(UART0_MODULE);
    CLK_EnableModuleClock(WDT_MODULE);
    CLK_EnableModuleClock(WWDT_MODULE);

    /* Set IP clock */
    CLK_SetModuleClock(TMR0_MODULE, CLK_CLKSEL1_TMR0SEL_HIRC, MODULE_NoMsk);
    CLK_SetModuleClock(UART0_MODULE, CLK_CLKSEL1_UART0SEL_PCLK0, CLK_CLKDIV0_UART0(1));
    CLK_SetModuleClock(WDT_MODULE, CLK_CLKSEL1_WDTSEL_LIRC, MODULE_NoMsk);
    CLK_SetModuleClock(WWDT_MODULE, CLK_CLKSEL1_WWDTSEL_HCLK_DIV2048, MODULE_NoMsk);

    /* Update System Core Clock */
    /* User can use SystemCoreClockUpdate() to calculate SystemCoreClock. */
    SystemCoreClockUpdate();
    SYS->GPA_MFPH = 0x00000000;
    SYS->GPA_MFPL = 0x00000000;
    SYS->GPB_MFPH = 0x00000000;
    SYS->GPB_MFPL = 0x00000000;
    SYS->GPC_MFPH = 0x00000000;
    SYS->GPC_MFPL = SYS_GPC_MFPL_PC1MFP_I2C0_SCL | SYS_GPC_MFPL_PC0MFP_I2C0_SDA;
    SYS->GPD_MFPH = 0x00000000;
    SYS->GPD_MFPL = 0x00000000;
    SYS->GPF_MFPH = 0x00000000;
    SYS->GPF_MFPL = SYS_GPF_MFPL_PF1MFP_ICE_CLK | SYS_GPF_MFPL_PF0MFP_ICE_DAT;
    /*---------------------------------------------------------------------------------------------------------*/
    /* Init I/O Multi-function                                                                                 */
    /*---------------------------------------------------------------------------------------------------------*/
    Uart0DefaultMPF();

}
#define CHIP_NAME                 "Sitronix ST7789"        /**< chip name */
#define MANUFACTURER_NAME         "Sitronix"               /**< manufacturer name */
#define SUPPLY_VOLTAGE_MIN        2.4f                     /**< chip min supply voltage */
#define SUPPLY_VOLTAGE_MAX        3.3f                     /**< chip max supply voltage */
#define MAX_CURRENT               7.5f                     /**< chip max current */
#define TEMPERATURE_MIN           -30.0f                   /**< chip min operating temperature */
#define TEMPERATURE_MAX           85.0f                    /**< chip max operating temperature */
#define DRIVER_VERSION            1000                     /**< driver version */
static st7789_handle_t gs_handle;        /**< st7789 handle */
st7789_info_t info;
int sayi;
uint8_t res;
int32_t main(void)
{
   
    uint8_t reg;
    uint16_t i;
    uint16_t j;
    uint8_t param[14];
    uint8_t params[64];
    st7789_info_t info;
    char test_str1[] ="Test";
    char test_str2[] ="st7789";
    char test_str3[] ="ABCabc";
    char test_str4[] ="123?!#$%";
    char type[33] = "unknown";
    uint32_t color = 65535;
    uint16_t x0 = 0;
    uint16_t x1 = 0;
    uint16_t x2 = 0;
    uint16_t y0 = 0;
    uint16_t y1 = 0;
    uint16_t y2 = 0;
    uint8_t x0_flag = 0;
    uint8_t x1_flag = 0;
    uint8_t x2_flag = 0;
    uint8_t y0_flag = 0;
    uint8_t y1_flag = 0;
    uint8_t y2_flag = 0;
    char str[49] = "libdriver";

    /* Unlock protected registers */
    SYS_UnlockReg();

    /* Init System, IP clock and multi-function I/O. */
    SYS_Init();

    /* Lock protected registers */
    SYS_LockReg();
    uart_init(115200);
    shell_init();
		
		    DRIVER_ST7789_LINK_INIT(&gs_handle, st7789_handle_t);
    DRIVER_ST7789_LINK_SPI_INIT(&gs_handle, st7789_interface_spi_init);
    DRIVER_ST7789_LINK_SPI_DEINIT(&gs_handle, st7789_interface_spi_deinit);
    DRIVER_ST7789_LINK_SPI_WRITE_COMMAND(&gs_handle, st7789_interface_spi_write_cmd);
    DRIVER_ST7789_LINK_COMMAND_DATA_GPIO_INIT(&gs_handle, st7789_interface_cmd_data_gpio_init);
    DRIVER_ST7789_LINK_COMMAND_DATA_GPIO_DEINIT(&gs_handle, st7789_interface_cmd_data_gpio_deinit);
    DRIVER_ST7789_LINK_COMMAND_DATA_GPIO_WRITE(&gs_handle, st7789_interface_cmd_data_gpio_write);
    DRIVER_ST7789_LINK_RESET_GPIO_INIT(&gs_handle, st7789_interface_reset_gpio_init);
    DRIVER_ST7789_LINK_RESET_GPIO_DEINIT(&gs_handle, st7789_interface_reset_gpio_deinit);
    DRIVER_ST7789_LINK_RESET_GPIO_WRITE(&gs_handle, st7789_interface_reset_gpio_write);
    DRIVER_ST7789_LINK_DELAY_MS(&gs_handle, st7789_interface_delay_ms);
    DRIVER_ST7789_LINK_DEBUG_PRINT(&gs_handle, st7789_interface_debug_print);
//    shell_register("st7789", st7789);
//    uart_print("st7789: welcome to libdriver st7789.\n");
                memset(type, 0, sizeof(char) * 33);
                snprintf(type, 32, "t_%s", optarg);
	st7789_info(&info);
	res = st7789_init(&gs_handle);
	res = st7789_set_column(&gs_handle, 240);
	res = st7789_set_row(&gs_handle, 240);
	res = st7789_sleep_out(&gs_handle);
	res = st7789_idle_mode_off(&gs_handle);
	res = st7789_normal_display_mode_on(&gs_handle);
	res = st7789_display_inversion_on(&gs_handle);
	res = st7789_set_gamma(&gs_handle, ST7789_GAMMA_CURVE_1);
	res = st7789_set_memory_data_access_control(&gs_handle, ST7789_ORDER_PAGE_TOP_TO_BOTTOM | ST7789_ORDER_COLUMN_LEFT_TO_RIGHT | 
																						ST7789_ORDER_PAGE_COLUMN_NORMAL | ST7789_ORDER_LINE_TOP_TO_BOTTOM |
																						ST7789_ORDER_COLOR_RGB | ST7789_ORDER_REFRESH_LEFT_TO_RIGHT);
	res = st7789_set_interface_pixel_format(&gs_handle, ST7789_RGB_INTERFACE_COLOR_FORMAT_262K, ST7789_CONTROL_INTERFACE_COLOR_FORMAT_16_BIT);
    /* max brightness */
    res = st7789_set_display_brightness(&gs_handle, 0xFF);


    
    /* disable brightness control */
    res = st7789_set_display_control(&gs_handle, ST7789_BOOL_FALSE, ST7789_BOOL_FALSE, ST7789_BOOL_FALSE);

    
    /* enable color enhancement */
    res = st7789_set_brightness_control_and_color_enhancement(&gs_handle, ST7789_BOOL_TRUE,
                                                              ST7789_COLOR_ENHANCEMENT_MODE_USER_INTERFACE, ST7789_COLOR_ENHANCEMENT_LEVEL_HIGH);

    
    /* set 0x00 */
    res = st7789_set_cabc_minimum_brightness(&gs_handle, 0x00);

    
    /* set ram control */
    res = st7789_set_ram_control(&gs_handle,
                                 ST7789_RAM_ACCESS_MCU,
                                 ST7789_DISPLAY_MODE_MCU,
                                 ST7789_FRAME_TYPE_0,
                                 ST7789_DATA_MODE_MSB,
                                 ST7789_RGB_BUS_WIDTH_18_BIT,
                                 ST7789_PIXEL_TYPE_0);
 
    
    /* set rgb interface control */
    res = st7789_set_rgb_interface_control(&gs_handle,
                                           ST7789_DIRECT_RGB_MODE_MEM,
                                           ST7789_RGB_IF_ENABLE_MODE_MCU,
                                           ST7789_PIN_LEVEL_LOW,
                                           ST7789_PIN_LEVEL_LOW,
                                           ST7789_PIN_LEVEL_LOW,
                                           ST7789_PIN_LEVEL_LOW,
                                           0x02,
                                           0x14);

    
    /* set porch */
    res = st7789_set_porch(&gs_handle,
                           0x0C,
                           0x0C,
                           ST7789_BOOL_FALSE,
                           0x03,
                           0x03, 
                           0x03,
                           0x03);

    
    /* set frame rate control */
    res = st7789_set_frame_rate_control(&gs_handle,
                                        ST7789_BOOL_FALSE,
                                        ST7789_FRAME_RATE_DIVIDED_CONTROL_DIV_1,
                                        ST7789_INVERSION_IDLE_MODE_DOT, 
                                        0x0F,
                                        ST7789_INVERSION_PARTIAL_MODE_DOT,
                                        0x0F);

    
    /* set partial mode control */
    res = st7789_set_partial_mode_control(&gs_handle,
                                          ST7789_NON_DISPLAY_SOURCE_OUTPUT_LEVEL_V63,
                                          ST7789_NON_DISPLAY_AREA_SCAN_MODE_NORMAL,
                                          ST7789_NON_DISPLAY_FRAME_FREQUENCY_EVERY);

    
    /* set gate control */
    res = st7789_set_gate_control(&gs_handle, ST7789_VGHS_14P97_V, ST7789_VGLS_NEGATIVE_8P23);

    
    /* set gate on timing adjustment */
    res = st7789_set_gate_on_timing_adjustment(&gs_handle, 
                                               0x22,
                                               0x07,
                                               0x05);

    
    /* enable digital gamma */
    res = st7789_set_digital_gamma(&gs_handle, ST7789_BOOL_TRUE);

    
    /* vcom convert to register  */
    res = st7789_vcom_convert_to_register(&gs_handle, 1.625f, &reg);

    
    /* set vcoms */
    res = st7789_set_vcoms(&gs_handle, reg);

    /* set lcm control */
    res = st7789_set_lcm_control(&gs_handle,
                                 ST7789_BOOL_FALSE,
                                 ST7789_BOOL_TRUE,
                                 ST7789_BOOL_FALSE,
                                 ST7789_BOOL_TRUE,
                                 ST7789_BOOL_TRUE,
                                 ST7789_BOOL_FALSE,
                                 ST7789_BOOL_FALSE);

    
    /* from cmd */
    res = st7789_set_vdv_vrh_from(&gs_handle, ST7789_VDV_VRH_FROM_CMD);

    /* vrhs convert to register */
    res = st7789_vrhs_convert_to_register(&gs_handle, 4.8f, &reg);

    
    /* set vrhs */
    res = st7789_set_vrhs(&gs_handle, reg);

    
    /* vdv convert to register */
    res = st7789_vdv_convert_to_register(&gs_handle, 0.0f, &reg);

    /* set vdv */
    res = st7789_set_vdv(&gs_handle, reg);

    
    /* vcoms offset convert to register */
    res = st7789_vcoms_offset_convert_to_register(&gs_handle, 0.0f, &reg);

    
    /* set vcoms offset */
    res = st7789_set_vcoms_offset(&gs_handle, reg);

    
    /* set frame rate */
    res = st7789_set_frame_rate(&gs_handle, ST7789_INVERSION_SELECTION_DOT, ST7789_FRAME_RATE_60_HZ);

    
    /* set cabc control */
    res = st7789_set_cabc_control(&gs_handle,
                                  ST7789_BOOL_FALSE,
                                  ST7789_BOOL_FALSE,
                                  ST7789_BOOL_FALSE,
                                  ST7789_BOOL_FALSE);

    
    /* set pwm frequency */
    res = st7789_set_pwm_frequency(&gs_handle, ST7789_PWM_FREQUENCY_9P8_KHZ);

    
    /* set power control 1 */
    res = st7789_set_power_control_1(&gs_handle, ST7789_AVDD_6P8_V, ST7789_AVCL_NEGTIVE_4P8_V, ST7789_VDS_2P3_V);

    /* set command 2 disable */
    res = st7789_set_command_2_enable(&gs_handle, ST7789_BOOL_FALSE);

    
    /* set positive voltage gamma control */
    param[0] = 0xD0;
    param[1] = 0x04;
    param[2] = 0x0D;
    param[3] = 0x11;
    param[4] = 0x13;
    param[5] = 0x2B;
    param[6] = 0x3F;
    param[7] = 0x54;
    param[8] = 0x4C;
    param[9] = 0x18;
    param[10] = 0x0D;
    param[11] = 0x0B;
    param[12] = 0x1F;
    param[13] = 0x23;
    res = st7789_set_positive_voltage_gamma_control(&gs_handle, param);

    
    /* set negative voltage gamma control */
    param[0] = 0xD0;
    param[1] = 0x04;
    param[2] = 0x0C;
    param[3] = 0x11;
    param[4] = 0x13;
    param[5] = 0x2C;
    param[6] = 0x3F;
    param[7] = 0x44;
    param[8] = 0x51;
    param[9] = 0x2F;
    param[10] = 0x1F;
    param[11] = 0x1F;
    param[12] = 0x20;
    param[13] = 0x23;
    res = st7789_set_negative_voltage_gamma_control(&gs_handle, param);

    
    /* create the table */
    for (i = 0; i < 64; i++)
    {
        params[i] = i * 4;
    }
    
    /* set digital gamma look up table red */
    res = st7789_set_digital_gamma_look_up_table_red(&gs_handle, params);

    
    /* set digital gamma look up table blue */
    res = st7789_set_digital_gamma_look_up_table_blue(&gs_handle, params);

    
    /* gate line convert to register */
    res = st7789_gate_line_convert_to_register(&gs_handle, 320, &reg);

    /* set gate */
    res = st7789_set_gate(&gs_handle,
                          reg,
                          0x00,
                          ST7789_GATE_SCAN_MODE_INTERLACE,
                          ST7789_GATE_SCAN_DIRECTION_0_319);

    
    /* disable spi2 */
    res = st7789_set_spi2_enable(&gs_handle, ST7789_BOOL_FALSE, ST7789_BOOL_FALSE);

    
    /* set power control 2 */
    res = st7789_set_power_control_2(&gs_handle, ST7789_SBCLK_DIV_3, ST7789_STP14CK_DIV_6);

    
    /* set equalize time control */
    res = st7789_set_equalize_time_control(&gs_handle, 0x11, 0x11, 0x08);

    
    /* disable program mode */
    res = st7789_set_program_mode_enable(&gs_handle, ST7789_BOOL_FALSE);

    
    /* display on */
    res = st7789_display_on(&gs_handle);

    
    /* clear */
    res = st7789_clear(&gs_handle);

    /* font 12 test */

    
    /* write string */
    res = st7789_write_string(&gs_handle, 0, 0, test_str1, (uint16_t)strlen(test_str1), 0xF800U, ST7789_FONT_12);

    
    /* write string */
    res = st7789_write_string(&gs_handle, 0, 50, test_str2, (uint16_t)strlen(test_str2), 0x07E0U, ST7789_FONT_12);

    /* write string */
    res = st7789_write_string(&gs_handle, 0, 100, test_str3, (uint16_t)strlen(test_str3), 0x003FU, ST7789_FONT_12);

    
    /* write string */
    res = st7789_write_string(&gs_handle, 0, 150, test_str4, (uint16_t)strlen(test_str4), 0xFFFFU, ST7789_FONT_12);

    
    /* delay 1000ms */
    st7789_interface_delay_ms(1000);
    
    /* clear */
    res = st7789_clear(&gs_handle);

    
    /* font 16 test */

    
    /* write string */
    res = st7789_write_string(&gs_handle, 0, 0, test_str1, (uint16_t)strlen(test_str1), 0xF800U, ST7789_FONT_16);
 
    /* write string */
    res = st7789_write_string(&gs_handle, 0, 50, test_str2, (uint16_t)strlen(test_str2), 0x07E0U, ST7789_FONT_16);
 
    
    /* write string */
    res = st7789_write_string(&gs_handle, 0, 100, test_str3, (uint16_t)strlen(test_str3), 0x003FU, ST7789_FONT_16);

    
    /* write string */
    res = st7789_write_string(&gs_handle, 0, 150, test_str4, (uint16_t)strlen(test_str4), 0xFFFFU, ST7789_FONT_16);
 
    
    /* delay 1000ms */
    st7789_interface_delay_ms(1000);
    
    /* clear */
    res = st7789_clear(&gs_handle);

    
    /* font 24 test */

    /* write string */
    res = st7789_write_string(&gs_handle, 0, 0, test_str1, (uint16_t)strlen(test_str1), 0xF800U, ST7789_FONT_24);

    /* write string */
    res = st7789_write_string(&gs_handle, 0, 50, test_str2, (uint16_t)strlen(test_str2), 0x07E0U, ST7789_FONT_24);

    
    /* write string */
    res = st7789_write_string(&gs_handle, 0, 100, test_str3, (uint16_t)strlen(test_str3), 0x003FU, ST7789_FONT_24);

    
    /* write string */
    res = st7789_write_string(&gs_handle, 0, 150, test_str4, (uint16_t)strlen(test_str4), 0xFFFFU, ST7789_FONT_24);

    
    /* delay 1000ms */
    st7789_interface_delay_ms(1000);
    
    /* clear */
    res = st7789_clear(&gs_handle);

    
    /* rectangle test */

    
    /* fill rect */
    res = st7789_fill_rect(&gs_handle, 0, 0, 100, 100, 0xF800U);

    
    /* fill rect */
    res = st7789_fill_rect(&gs_handle, 0, 150, 100, 200, 0x003FU);

    
    /* fill rect */
    res = st7789_fill_rect(&gs_handle, 0, 280, 200,310, 0x08E0U);

    
    /* delay 1000ms */
    st7789_interface_delay_ms(1000);
    
    /* clear */
    res = st7789_clear(&gs_handle);

    

    
    for (i = 0; i < 240; i++)
    {
        for (j = 0; j < 320; j++)
        {
            if ((rand() % 2) != 0)
            {
                res = st7789_draw_point(&gs_handle, i, j, 0xFFFFU);
               
            }
        }
    }
    
    /* delay 1000ms */
    st7789_interface_delay_ms(1000);
    
    /* clear */
    res = st7789_clear(&gs_handle);



    /* delay 1000ms */
    st7789_interface_delay_ms(1000);
    
    /* clear */
    res = st7789_clear(&gs_handle);

    (void)st7789_deinit(&gs_handle);
    

				
    while (1){
			


		}

}

