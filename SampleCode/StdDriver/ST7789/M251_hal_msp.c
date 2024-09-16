/**
 * Copyright (c) 2015 - present LibDriver All rights reserved
 * 
 * The MIT License (MIT)
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE. 
 *
 * @file      stm32f4xx_hal_msp.c
 * @brief     stm32f4xx hal msp source file
 * @version   1.0.0
 * @author    Shifeng Li
 * @date      2022-11-11
 *
 * <h3>history</h3>
 * <table>
 * <tr><th>Date        <th>Version  <th>Author      <th>Description
 * <tr><td>2022/11/11  <td>1.0      <td>Shifeng Li  <td>first upload
 * </table>
 */

#include "NuMicro.h"



/** 
 * @defgroup msp HAL_MSP_Private_Functions
 * @{
 */

/**
 * @brief  initializes the global msp.
 * @note   none
 */
void HAL_MspInit(void)
{
    
}

/**
 * @brief  deinitializes the global msp.
 * @note   none
 */
void HAL_MspDeInit(void)
{
    
}

/**
 * @brief     uart hal init
 * @param[in] *huart points to a uart handle
 * @note      none
 */
void HAL_UART_MspInit(UART_T *uart)
{
//    GPIO_InitTypeDef GPIO_InitStruct;
//    
//    if (huart->Instance == UART1)
//    {
//        /* enable uart gpio clock */
//        __HAL_RCC_GPIOA_CLK_ENABLE();
//        
//        /* enable UART1 clock */
//        __HAL_RCC_UART1_CLK_ENABLE();
//        
//        /**
//         * PA9  ------> UART1_TX
//         * PA10 ------> UART1_RX 
//         */
//        GPIO_InitStruct.Pin = GPIO_PIN_9 | GPIO_PIN_10;
//        GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
//        GPIO_InitStruct.Pull = GPIO_PULLUP;
//        GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
//        GPIO_InitStruct.Alternate = GPIO_AF7_UART1;
//        HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
//        
//        /* enable nvic */
//        HAL_NVIC_SetPriority(UART1_IRQn, 1, 0);
//        HAL_NVIC_EnableIRQ(UART1_IRQn);
//    }
    /* Unlock protected registers */
	    if (uart == (UART_T *)UART1)
    {
    SYS_UnlockReg();
    CLK_EnableModuleClock(UART1_MODULE);
    CLK_SetModuleClock(UART1_MODULE, CLK_CLKSEL1_UART1SEL_PCLK1, CLK_CLKDIV0_UART1(1));
    SYS->GPB_MFPL &= ~(SYS_GPB_MFPL_PB3MFP_Msk | SYS_GPB_MFPL_PB2MFP_Msk);
    SYS->GPB_MFPL |= (SYS_GPB_MFPL_PB3MFP_UART1_TXD | SYS_GPB_MFPL_PB2MFP_UART1_RXD);
		    /* Update System Core Clock */
    /* User can use SystemCoreClockUpdate() to calculate SystemCoreClock. */
    SystemCoreClockUpdate();
			    /* Enable UART RDA/THRE/Time-out interrupt */
    NVIC_EnableIRQ(UART1_IRQn);
    UART_EnableInt(UART1, (UART_INTEN_RDAIEN_Msk ));
		}
//    if (huart->Instance == UART2)
//    {
//        /* enable uart gpio clock */
//        __HAL_RCC_GPIOA_CLK_ENABLE();
//        
//        /* enable UART2 clock */
//        __HAL_RCC_UART2_CLK_ENABLE();
//    
//        /**
//         * PA2 ------> UART2_TX
//         * PA3 ------> UART2_RX 
//         */
//        GPIO_InitStruct.Pin = GPIO_PIN_2 | GPIO_PIN_3;
//        GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
//        GPIO_InitStruct.Pull = GPIO_PULLUP;
//        GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
//        GPIO_InitStruct.Alternate = GPIO_AF7_UART2;
//        HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
//        
//        /* enable nvic */
//        HAL_NVIC_SetPriority(UART2_IRQn, 2, 0);
//        HAL_NVIC_EnableIRQ(UART2_IRQn);
//    }
	    if (uart == (UART_T *)UART2)
			{
				SYS_UnlockReg();
				CLK_EnableModuleClock(UART2_MODULE);
				CLK_SetModuleClock(UART2_MODULE, CLK_CLKSEL3_UART2SEL_PCLK0, CLK_CLKDIV4_UART2(1));
				SYS->GPB_MFPL &= ~(SYS_GPB_MFPL_PB5MFP_Msk | SYS_GPB_MFPL_PB4MFP_Msk);
				SYS->GPB_MFPL |= (SYS_GPB_MFPL_PB5MFP_UART2_TXD | SYS_GPB_MFPL_PB4MFP_UART2_RXD);
						/* Update System Core Clock */
				/* User can use SystemCoreClockUpdate() to calculate SystemCoreClock. */
							/* Enable UART RDA/THRE/Time-out interrupt */

				SystemCoreClockUpdate();
				
				NVIC_EnableIRQ(UART2_IRQn);
				UART_EnableInt(UART2, (UART_INTEN_RDAIEN_Msk));
			}
}

/**
 * @brief     uart hal deinit
 * @param[in] *huart points to a uart handle
 * @note      none
 */
void HAL_UART_MspDeInit(UART_T *uart)
{
	
		    if (uart == (UART_T *)UART1)
    {
    SYS_UnlockReg();
    CLK_EnableModuleClock(UART1_MODULE);
    CLK_SetModuleClock(UART1_MODULE, CLK_CLKSEL1_UART1SEL_PCLK1, CLK_CLKDIV0_UART1(1));
    SYS->GPB_MFPL &= ~(SYS_GPB_MFPL_PB3MFP_Msk | SYS_GPB_MFPL_PB2MFP_Msk);
    SYS->GPB_MFPL |= (SYS_GPB_MFPL_PB3MFP_UART1_TXD | SYS_GPB_MFPL_PB2MFP_UART1_RXD);
		    /* Update System Core Clock */
    /* User can use SystemCoreClockUpdate() to calculate SystemCoreClock. */
    SystemCoreClockUpdate();
			    /* Enable UART RDA/THRE/Time-out interrupt */
    NVIC_EnableIRQ(UART1_IRQn);
    UART_EnableInt(UART1, (UART_INTEN_RDAIEN_Msk ));
		}
//    if (huart->Instance == UART2)
//    {
//        /* enable uart gpio clock */
//        __HAL_RCC_GPIOA_CLK_ENABLE();
//        
//        /* enable UART2 clock */
//        __HAL_RCC_UART2_CLK_ENABLE();
//    
//        /**
//         * PA2 ------> UART2_TX
//         * PA3 ------> UART2_RX 
//         */
//        GPIO_InitStruct.Pin = GPIO_PIN_2 | GPIO_PIN_3;
//        GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
//        GPIO_InitStruct.Pull = GPIO_PULLUP;
//        GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
//        GPIO_InitStruct.Alternate = GPIO_AF7_UART2;
//        HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
//        
//        /* enable nvic */
//        HAL_NVIC_SetPriority(UART2_IRQn, 2, 0);
//        HAL_NVIC_EnableIRQ(UART2_IRQn);
//    }
	    if (uart == (UART_T *)UART2)
			{
				SYS_UnlockReg();
				CLK_EnableModuleClock(UART2_MODULE);
				CLK_SetModuleClock(UART2_MODULE, CLK_CLKSEL3_UART2SEL_PCLK0, CLK_CLKDIV4_UART2(1));
				SYS->GPB_MFPL &= ~(SYS_GPB_MFPL_PB5MFP_Msk | SYS_GPB_MFPL_PB4MFP_Msk);
				SYS->GPB_MFPL |= (SYS_GPB_MFPL_PB5MFP_UART2_TXD | SYS_GPB_MFPL_PB4MFP_UART2_RXD);
						/* Update System Core Clock */
				/* User can use SystemCoreClockUpdate() to calculate SystemCoreClock. */
							/* Enable UART RDA/THRE/Time-out interrupt */

				SystemCoreClockUpdate();
				
				NVIC_EnableIRQ(UART2_IRQn);
				UART_EnableInt(UART2, (UART_INTEN_RDAIEN_Msk));
			}
//    if (huart->Instance == UART1)
//    {
//        /* disable UART1 clock */
//        __HAL_RCC_UART1_CLK_DISABLE();
//        
//        /* uart gpio deinit */
//        HAL_GPIO_DeInit(GPIOA, GPIO_PIN_9 | GPIO_PIN_10);
//        
//        /* disable nvic */
//        HAL_NVIC_DisableIRQ(UART1_IRQn);
//    }
//    if (huart->Instance == UART2)
//    {
//        /* disable UART2 clock */
//        __HAL_RCC_UART2_CLK_DISABLE();
//        
//        /* uart gpio deinit */
//        HAL_GPIO_DeInit(GPIOA, GPIO_PIN_2 | GPIO_PIN_3);
//        
//        /* disable nvic */
//        HAL_NVIC_DisableIRQ(UART2_IRQn);
//    }

}

///**
// * @brief     spi hal init
// * @param[in] *hspi points to a spi handle
// * @note      none
// */
void HAL_SPI_MspInit(SPI_T *spi)
{
//    GPIO_InitTypeDef GPIO_InitStruct;
//    
//    if (hspi->Instance == SPI1)
//    {
//        /* enable spi gpio clock */
//        __HAL_RCC_GPIOA_CLK_ENABLE();
//        
//        /* enable spi1 clock */
//        __HAL_RCC_SPI1_CLK_ENABLE();
//        
//        /**
//         * PA5 ------> SPI1_SCK
//         * PA6 ------> SPI1_MISO
//         * PA7 ------> SPI1_MOSI
//         */
//        GPIO_InitStruct.Pin = GPIO_PIN_5 | GPIO_PIN_6 | GPIO_PIN_7;
//        GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
//        GPIO_InitStruct.Pull = GPIO_NOPULL;
//        GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
//        GPIO_InitStruct.Alternate = GPIO_AF5_SPI1;
//        HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
//    }
		SYS_UnlockReg();
		CLK_EnableModuleClock(SPI0_MODULE);
		CLK_SetModuleClock(SPI0_MODULE, CLK_CLKSEL2_SPI0SEL_PCLK1, MODULE_NoMsk);
		SYS->GPA_MFPL &= ~(SYS_GPA_MFPL_PA3MFP_Msk | SYS_GPA_MFPL_PA2MFP_Msk | SYS_GPA_MFPL_PA1MFP_Msk | SYS_GPA_MFPL_PA0MFP_Msk);
		SYS->GPA_MFPL |= (SYS_GPA_MFPL_PA3MFP_SPI0_SS | SYS_GPA_MFPL_PA2MFP_SPI0_CLK | SYS_GPA_MFPL_PA1MFP_SPI0_MISO | SYS_GPA_MFPL_PA0MFP_SPI0_MOSI);
}

/**
 * @brief     spi hal deinit
 * @param[in] *hspi points to a spi handle
 * @note      none
 */
void HAL_SPI_MspDeInit(SPI_T *spi)
{
//    if (hspi->Instance == SPI1)
//    {
//        /* disable spi1 clock */
//        __HAL_RCC_SPI1_CLK_DISABLE();
//        
//        /* spi gpio deinit */
//        HAL_GPIO_DeInit(GPIOA, GPIO_PIN_5 | GPIO_PIN_6 | GPIO_PIN_7);
//    }
		SYS_UnlockReg();
	
    SYS->GPA_MFPL &= ~(SYS_GPA_MFPL_PA3MFP_Msk | SYS_GPA_MFPL_PA2MFP_Msk | SYS_GPA_MFPL_PA1MFP_Msk | SYS_GPA_MFPL_PA0MFP_Msk);
	
}

/**
 * @}
 */
