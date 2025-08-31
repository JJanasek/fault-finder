
sca-rsa/unprot/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vector_table>:
 8000000:	00 00 01 10 2d 1e 00 08 29 1e 00 08 27 1e 00 08     ....-...)...'...
 8000010:	27 1e 00 08 27 1e 00 08 27 1e 00 08 00 00 00 00     '...'...'.......
	...
 800002c:	29 1e 00 08 29 1e 00 08 00 00 00 00 29 1e 00 08     )...).......)...
 800003c:	29 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     )...'...'...'...
 800004c:	27 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     '...'...'...'...
 800005c:	27 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     '...'...'...'...
 800006c:	27 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     '...'...'...'...
 800007c:	27 1e 00 08 7d 05 00 08 a5 05 00 08 27 1e 00 08     '...}.......'...
 800008c:	27 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     '...'...'...'...
 800009c:	27 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     '...'...'...'...
 80000ac:	27 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     '...'...'...'...
 80000bc:	27 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     '...'...'...'...
 80000cc:	27 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     '...'...'...'...
 80000dc:	27 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     '...'...'...'...
 80000ec:	27 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     '...'...'...'...
 80000fc:	27 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     '...'...'...'...
 800010c:	27 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     '...'...'...'...
 800011c:	27 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     '...'...'...'...
 800012c:	27 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     '...'...'...'...
 800013c:	27 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     '...'...'...'...
 800014c:	27 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     '...'...'...'...
 800015c:	27 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     '...'...'...'...
 800016c:	27 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     '...'...'...'...
 800017c:	27 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     '...'...'...'...
 800018c:	27 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     '...'...'...'...
 800019c:	27 1e 00 08 27 1e 00 08 27 1e 00 08 27 1e 00 08     '...'...'...'...

080001ac <main>:
 80001ac:	b510      	push	{r4, lr}
 80001ae:	f04f 0c00 	mov.w	ip, #0
 80001b2:	f5ad 7d00 	sub.w	sp, sp, #512	@ 0x200
 80001b6:	4815      	ldr	r0, [pc, #84]	@ (800020c <main+0x60>)
 80001b8:	4669      	mov	r1, sp
 80001ba:	4662      	mov	r2, ip
 80001bc:	2430      	movs	r4, #48	@ 0x30
 80001be:	f1a4 0330 	sub.w	r3, r4, #48	@ 0x30
 80001c2:	2b09      	cmp	r3, #9
 80001c4:	d905      	bls.n	80001d2 <main+0x26>
 80001c6:	f1a4 0341 	sub.w	r3, r4, #65	@ 0x41
 80001ca:	2b05      	cmp	r3, #5
 80001cc:	d816      	bhi.n	80001fc <main+0x50>
 80001ce:	f1a4 0337 	sub.w	r3, r4, #55	@ 0x37
 80001d2:	b18a      	cbz	r2, 80001f8 <main+0x4c>
 80001d4:	eb03 130c 	add.w	r3, r3, ip, lsl #4
 80001d8:	f801 3b01 	strb.w	r3, [r1], #1
 80001dc:	f082 0201 	eor.w	r2, r2, #1
 80001e0:	f810 4f01 	ldrb.w	r4, [r0, #1]!
 80001e4:	2c00      	cmp	r4, #0
 80001e6:	d1ea      	bne.n	80001be <main+0x12>
 80001e8:	4909      	ldr	r1, [pc, #36]	@ (8000210 <main+0x64>)
 80001ea:	4668      	mov	r0, sp
 80001ec:	f001 f840 	bl	8001270 <br_rsa_i31_private>
 80001f0:	4620      	mov	r0, r4
 80001f2:	f50d 7d00 	add.w	sp, sp, #512	@ 0x200
 80001f6:	bd10      	pop	{r4, pc}
 80001f8:	469c      	mov	ip, r3
 80001fa:	e7ef      	b.n	80001dc <main+0x30>
 80001fc:	f1a4 0361 	sub.w	r3, r4, #97	@ 0x61
 8000200:	2b05      	cmp	r3, #5
 8000202:	d8ed      	bhi.n	80001e0 <main+0x34>
 8000204:	f1a4 0357 	sub.w	r3, r4, #87	@ 0x57
 8000208:	e7e3      	b.n	80001d2 <main+0x26>
 800020a:	bf00      	nop
 800020c:	08001f44 	.word	0x08001f44
 8000210:	08002048 	.word	0x08002048

08000214 <clock_setup>:
 8000214:	b508      	push	{r3, lr}
 8000216:	480f      	ldr	r0, [pc, #60]	@ (8000254 <clock_setup+0x40>)
 8000218:	f001 fd1a 	bl	8001c50 <rcc_clock_setup_pll>
 800021c:	f44f 60c0 	mov.w	r0, #1536	@ 0x600
 8000220:	f001 fbe6 	bl	80019f0 <rcc_periph_clock_enable>
 8000224:	f640 0011 	movw	r0, #2065	@ 0x811
 8000228:	f001 fbe2 	bl	80019f0 <rcc_periph_clock_enable>
 800022c:	f240 6002 	movw	r0, #1538	@ 0x602
 8000230:	f001 fbde 	bl	80019f0 <rcc_periph_clock_enable>
 8000234:	f640 0013 	movw	r0, #2067	@ 0x813
 8000238:	f001 fbda 	bl	80019f0 <rcc_periph_clock_enable>
 800023c:	f240 6015 	movw	r0, #1557	@ 0x615
 8000240:	f001 fbd6 	bl	80019f0 <rcc_periph_clock_enable>
 8000244:	f240 6086 	movw	r0, #1670	@ 0x686
 8000248:	f001 fbd2 	bl	80019f0 <rcc_periph_clock_enable>
 800024c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000250:	f001 bb6c 	b.w	800192c <flash_prefetch_enable>
 8000254:	08002254 	.word	0x08002254

08000258 <gpio_setup>:
 8000258:	b508      	push	{r3, lr}
 800025a:	480d      	ldr	r0, [pc, #52]	@ (8000290 <gpio_setup+0x38>)
 800025c:	230c      	movs	r3, #12
 800025e:	2200      	movs	r2, #0
 8000260:	2102      	movs	r1, #2
 8000262:	f001 fb79 	bl	8001958 <gpio_mode_setup>
 8000266:	480a      	ldr	r0, [pc, #40]	@ (8000290 <gpio_setup+0x38>)
 8000268:	220c      	movs	r2, #12
 800026a:	2107      	movs	r1, #7
 800026c:	f001 fb94 	bl	8001998 <gpio_set_af>
 8000270:	4808      	ldr	r0, [pc, #32]	@ (8000294 <gpio_setup+0x3c>)
 8000272:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 8000276:	2200      	movs	r2, #0
 8000278:	2102      	movs	r1, #2
 800027a:	f001 fb6d 	bl	8001958 <gpio_mode_setup>
 800027e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000282:	4804      	ldr	r0, [pc, #16]	@ (8000294 <gpio_setup+0x3c>)
 8000284:	f44f 6280 	mov.w	r2, #1024	@ 0x400
 8000288:	2108      	movs	r1, #8
 800028a:	f001 bb85 	b.w	8001998 <gpio_set_af>
 800028e:	bf00      	nop
 8000290:	40020000 	.word	0x40020000
 8000294:	40020800 	.word	0x40020800

08000298 <usart_setup>:
 8000298:	b510      	push	{r4, lr}
 800029a:	4601      	mov	r1, r0
 800029c:	4604      	mov	r4, r0
 800029e:	481b      	ldr	r0, [pc, #108]	@ (800030c <usart_setup+0x74>)
 80002a0:	f001 fd58 	bl	8001d54 <usart_set_baudrate>
 80002a4:	4819      	ldr	r0, [pc, #100]	@ (800030c <usart_setup+0x74>)
 80002a6:	2108      	movs	r1, #8
 80002a8:	f001 fd5f 	bl	8001d6a <usart_set_databits>
 80002ac:	4817      	ldr	r0, [pc, #92]	@ (800030c <usart_setup+0x74>)
 80002ae:	2100      	movs	r1, #0
 80002b0:	f001 fd64 	bl	8001d7c <usart_set_stopbits>
 80002b4:	4815      	ldr	r0, [pc, #84]	@ (800030c <usart_setup+0x74>)
 80002b6:	210c      	movs	r1, #12
 80002b8:	f001 fd6c 	bl	8001d94 <usart_set_mode>
 80002bc:	4813      	ldr	r0, [pc, #76]	@ (800030c <usart_setup+0x74>)
 80002be:	2100      	movs	r1, #0
 80002c0:	f001 fd62 	bl	8001d88 <usart_set_parity>
 80002c4:	2100      	movs	r1, #0
 80002c6:	4811      	ldr	r0, [pc, #68]	@ (800030c <usart_setup+0x74>)
 80002c8:	f001 fd6a 	bl	8001da0 <usart_set_flow_control>
 80002cc:	480f      	ldr	r0, [pc, #60]	@ (800030c <usart_setup+0x74>)
 80002ce:	f001 fd6d 	bl	8001dac <usart_enable>
 80002d2:	4621      	mov	r1, r4
 80002d4:	480e      	ldr	r0, [pc, #56]	@ (8000310 <usart_setup+0x78>)
 80002d6:	f001 fd3d 	bl	8001d54 <usart_set_baudrate>
 80002da:	480d      	ldr	r0, [pc, #52]	@ (8000310 <usart_setup+0x78>)
 80002dc:	2108      	movs	r1, #8
 80002de:	f001 fd44 	bl	8001d6a <usart_set_databits>
 80002e2:	480b      	ldr	r0, [pc, #44]	@ (8000310 <usart_setup+0x78>)
 80002e4:	2100      	movs	r1, #0
 80002e6:	f001 fd49 	bl	8001d7c <usart_set_stopbits>
 80002ea:	4809      	ldr	r0, [pc, #36]	@ (8000310 <usart_setup+0x78>)
 80002ec:	2108      	movs	r1, #8
 80002ee:	f001 fd51 	bl	8001d94 <usart_set_mode>
 80002f2:	4807      	ldr	r0, [pc, #28]	@ (8000310 <usart_setup+0x78>)
 80002f4:	2100      	movs	r1, #0
 80002f6:	f001 fd47 	bl	8001d88 <usart_set_parity>
 80002fa:	4805      	ldr	r0, [pc, #20]	@ (8000310 <usart_setup+0x78>)
 80002fc:	2100      	movs	r1, #0
 80002fe:	f001 fd4f 	bl	8001da0 <usart_set_flow_control>
 8000302:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000306:	4802      	ldr	r0, [pc, #8]	@ (8000310 <usart_setup+0x78>)
 8000308:	f001 bd50 	b.w	8001dac <usart_enable>
 800030c:	40004400 	.word	0x40004400
 8000310:	40004c00 	.word	0x40004c00

08000314 <dma_request_setup>:
 8000314:	b508      	push	{r3, lr}
 8000316:	2105      	movs	r1, #5
 8000318:	481e      	ldr	r0, [pc, #120]	@ (8000394 <dma_request_setup+0x80>)
 800031a:	f001 fa25 	bl	8001768 <dma_stream_reset>
 800031e:	2010      	movs	r0, #16
 8000320:	f001 fdd4 	bl	8001ecc <nvic_enable_irq>
 8000324:	4a1c      	ldr	r2, [pc, #112]	@ (8000398 <dma_request_setup+0x84>)
 8000326:	481b      	ldr	r0, [pc, #108]	@ (8000394 <dma_request_setup+0x80>)
 8000328:	2105      	movs	r1, #5
 800032a:	f001 fae4 	bl	80018f6 <dma_set_peripheral_address>
 800032e:	4819      	ldr	r0, [pc, #100]	@ (8000394 <dma_request_setup+0x80>)
 8000330:	2200      	movs	r2, #0
 8000332:	2105      	movs	r1, #5
 8000334:	f001 fa4d 	bl	80017d2 <dma_set_transfer_mode>
 8000338:	4816      	ldr	r0, [pc, #88]	@ (8000394 <dma_request_setup+0x80>)
 800033a:	2200      	movs	r2, #0
 800033c:	2105      	movs	r1, #5
 800033e:	f001 fa70 	bl	8001822 <dma_set_peripheral_size>
 8000342:	4814      	ldr	r0, [pc, #80]	@ (8000394 <dma_request_setup+0x80>)
 8000344:	2200      	movs	r2, #0
 8000346:	2105      	movs	r1, #5
 8000348:	f001 fa5f 	bl	800180a <dma_set_memory_size>
 800034c:	f44f 3240 	mov.w	r2, #196608	@ 0x30000
 8000350:	4810      	ldr	r0, [pc, #64]	@ (8000394 <dma_request_setup+0x80>)
 8000352:	2105      	movs	r1, #5
 8000354:	f001 fa4d 	bl	80017f2 <dma_set_priority>
 8000358:	480e      	ldr	r0, [pc, #56]	@ (8000394 <dma_request_setup+0x80>)
 800035a:	2100      	movs	r1, #0
 800035c:	f001 fa76 	bl	800184c <dma_disable_peripheral_increment_mode>
 8000360:	480c      	ldr	r0, [pc, #48]	@ (8000394 <dma_request_setup+0x80>)
 8000362:	2105      	movs	r1, #5
 8000364:	f001 fa69 	bl	800183a <dma_enable_memory_increment_mode>
 8000368:	480a      	ldr	r0, [pc, #40]	@ (8000394 <dma_request_setup+0x80>)
 800036a:	2105      	movs	r1, #5
 800036c:	f001 fa7f 	bl	800186e <dma_disable_transfer_error_interrupt>
 8000370:	4808      	ldr	r0, [pc, #32]	@ (8000394 <dma_request_setup+0x80>)
 8000372:	2105      	movs	r1, #5
 8000374:	f001 fa84 	bl	8001880 <dma_disable_half_transfer_interrupt>
 8000378:	4806      	ldr	r0, [pc, #24]	@ (8000394 <dma_request_setup+0x80>)
 800037a:	2105      	movs	r1, #5
 800037c:	f001 fa97 	bl	80018ae <dma_disable_direct_mode_error_interrupt>
 8000380:	4804      	ldr	r0, [pc, #16]	@ (8000394 <dma_request_setup+0x80>)
 8000382:	2105      	movs	r1, #5
 8000384:	f001 fa9c 	bl	80018c0 <dma_disable_fifo_error_interrupt>
 8000388:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800038c:	4801      	ldr	r0, [pc, #4]	@ (8000394 <dma_request_setup+0x80>)
 800038e:	2105      	movs	r1, #5
 8000390:	f001 ba7f 	b.w	8001892 <dma_enable_transfer_complete_interrupt>
 8000394:	40026000 	.word	0x40026000
 8000398:	40004404 	.word	0x40004404

0800039c <dma_transmit_setup>:
 800039c:	b508      	push	{r3, lr}
 800039e:	2106      	movs	r1, #6
 80003a0:	481e      	ldr	r0, [pc, #120]	@ (800041c <dma_transmit_setup+0x80>)
 80003a2:	f001 f9e1 	bl	8001768 <dma_stream_reset>
 80003a6:	2011      	movs	r0, #17
 80003a8:	f001 fd90 	bl	8001ecc <nvic_enable_irq>
 80003ac:	4a1c      	ldr	r2, [pc, #112]	@ (8000420 <dma_transmit_setup+0x84>)
 80003ae:	481b      	ldr	r0, [pc, #108]	@ (800041c <dma_transmit_setup+0x80>)
 80003b0:	2106      	movs	r1, #6
 80003b2:	f001 faa0 	bl	80018f6 <dma_set_peripheral_address>
 80003b6:	4819      	ldr	r0, [pc, #100]	@ (800041c <dma_transmit_setup+0x80>)
 80003b8:	2240      	movs	r2, #64	@ 0x40
 80003ba:	2106      	movs	r1, #6
 80003bc:	f001 fa09 	bl	80017d2 <dma_set_transfer_mode>
 80003c0:	4816      	ldr	r0, [pc, #88]	@ (800041c <dma_transmit_setup+0x80>)
 80003c2:	2200      	movs	r2, #0
 80003c4:	2106      	movs	r1, #6
 80003c6:	f001 fa2c 	bl	8001822 <dma_set_peripheral_size>
 80003ca:	4814      	ldr	r0, [pc, #80]	@ (800041c <dma_transmit_setup+0x80>)
 80003cc:	2200      	movs	r2, #0
 80003ce:	2106      	movs	r1, #6
 80003d0:	f001 fa1b 	bl	800180a <dma_set_memory_size>
 80003d4:	f44f 3240 	mov.w	r2, #196608	@ 0x30000
 80003d8:	4810      	ldr	r0, [pc, #64]	@ (800041c <dma_transmit_setup+0x80>)
 80003da:	2106      	movs	r1, #6
 80003dc:	f001 fa09 	bl	80017f2 <dma_set_priority>
 80003e0:	480e      	ldr	r0, [pc, #56]	@ (800041c <dma_transmit_setup+0x80>)
 80003e2:	2100      	movs	r1, #0
 80003e4:	f001 fa32 	bl	800184c <dma_disable_peripheral_increment_mode>
 80003e8:	480c      	ldr	r0, [pc, #48]	@ (800041c <dma_transmit_setup+0x80>)
 80003ea:	2106      	movs	r1, #6
 80003ec:	f001 fa25 	bl	800183a <dma_enable_memory_increment_mode>
 80003f0:	480a      	ldr	r0, [pc, #40]	@ (800041c <dma_transmit_setup+0x80>)
 80003f2:	2106      	movs	r1, #6
 80003f4:	f001 fa3b 	bl	800186e <dma_disable_transfer_error_interrupt>
 80003f8:	4808      	ldr	r0, [pc, #32]	@ (800041c <dma_transmit_setup+0x80>)
 80003fa:	2106      	movs	r1, #6
 80003fc:	f001 fa40 	bl	8001880 <dma_disable_half_transfer_interrupt>
 8000400:	4806      	ldr	r0, [pc, #24]	@ (800041c <dma_transmit_setup+0x80>)
 8000402:	2106      	movs	r1, #6
 8000404:	f001 fa53 	bl	80018ae <dma_disable_direct_mode_error_interrupt>
 8000408:	4804      	ldr	r0, [pc, #16]	@ (800041c <dma_transmit_setup+0x80>)
 800040a:	2106      	movs	r1, #6
 800040c:	f001 fa58 	bl	80018c0 <dma_disable_fifo_error_interrupt>
 8000410:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000414:	4801      	ldr	r0, [pc, #4]	@ (800041c <dma_transmit_setup+0x80>)
 8000416:	2106      	movs	r1, #6
 8000418:	f001 ba3b 	b.w	8001892 <dma_enable_transfer_complete_interrupt>
 800041c:	40026000 	.word	0x40026000
 8000420:	40004404 	.word	0x40004404

08000424 <dma_request>:
 8000424:	b510      	push	{r4, lr}
 8000426:	4602      	mov	r2, r0
 8000428:	460c      	mov	r4, r1
 800042a:	4810      	ldr	r0, [pc, #64]	@ (800046c <dma_request+0x48>)
 800042c:	2105      	movs	r1, #5
 800042e:	f001 fa6a 	bl	8001906 <dma_set_memory_address>
 8000432:	b2a2      	uxth	r2, r4
 8000434:	480d      	ldr	r0, [pc, #52]	@ (800046c <dma_request+0x48>)
 8000436:	2105      	movs	r1, #5
 8000438:	f001 fa72 	bl	8001920 <dma_set_number_of_data>
 800043c:	f04f 6200 	mov.w	r2, #134217728	@ 0x8000000
 8000440:	480a      	ldr	r0, [pc, #40]	@ (800046c <dma_request+0x48>)
 8000442:	2105      	movs	r1, #5
 8000444:	f001 fa0b 	bl	800185e <dma_channel_select>
 8000448:	4808      	ldr	r0, [pc, #32]	@ (800046c <dma_request+0x48>)
 800044a:	2105      	movs	r1, #5
 800044c:	f001 fa41 	bl	80018d2 <dma_enable_stream>
 8000450:	4807      	ldr	r0, [pc, #28]	@ (8000470 <dma_request+0x4c>)
 8000452:	2178      	movs	r1, #120	@ 0x78
 8000454:	f001 fcaf 	bl	8001db6 <usart_send_blocking>
 8000458:	4806      	ldr	r0, [pc, #24]	@ (8000474 <dma_request+0x50>)
 800045a:	2178      	movs	r1, #120	@ 0x78
 800045c:	f001 fcab 	bl	8001db6 <usart_send_blocking>
 8000460:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000464:	4802      	ldr	r0, [pc, #8]	@ (8000470 <dma_request+0x4c>)
 8000466:	f001 bcba 	b.w	8001dde <usart_enable_rx_dma>
 800046a:	bf00      	nop
 800046c:	40026000 	.word	0x40026000
 8000470:	40004400 	.word	0x40004400
 8000474:	40004c00 	.word	0x40004c00

08000478 <dma_transmit>:
 8000478:	b510      	push	{r4, lr}
 800047a:	4602      	mov	r2, r0
 800047c:	460c      	mov	r4, r1
 800047e:	480c      	ldr	r0, [pc, #48]	@ (80004b0 <dma_transmit+0x38>)
 8000480:	2106      	movs	r1, #6
 8000482:	f001 fa40 	bl	8001906 <dma_set_memory_address>
 8000486:	b2a2      	uxth	r2, r4
 8000488:	4809      	ldr	r0, [pc, #36]	@ (80004b0 <dma_transmit+0x38>)
 800048a:	2106      	movs	r1, #6
 800048c:	f001 fa48 	bl	8001920 <dma_set_number_of_data>
 8000490:	4807      	ldr	r0, [pc, #28]	@ (80004b0 <dma_transmit+0x38>)
 8000492:	f04f 6200 	mov.w	r2, #134217728	@ 0x8000000
 8000496:	2106      	movs	r1, #6
 8000498:	f001 f9e1 	bl	800185e <dma_channel_select>
 800049c:	4804      	ldr	r0, [pc, #16]	@ (80004b0 <dma_transmit+0x38>)
 800049e:	2106      	movs	r1, #6
 80004a0:	f001 fa17 	bl	80018d2 <dma_enable_stream>
 80004a4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80004a8:	4802      	ldr	r0, [pc, #8]	@ (80004b4 <dma_transmit+0x3c>)
 80004aa:	f001 bca2 	b.w	8001df2 <usart_enable_tx_dma>
 80004ae:	bf00      	nop
 80004b0:	40026000 	.word	0x40026000
 80004b4:	40004400 	.word	0x40004400

080004b8 <dma_done>:
 80004b8:	4b04      	ldr	r3, [pc, #16]	@ (80004cc <dma_done+0x14>)
 80004ba:	f8d3 0088 	ldr.w	r0, [r3, #136]	@ 0x88
 80004be:	f8d3 30a0 	ldr.w	r3, [r3, #160]	@ 0xa0
 80004c2:	4318      	orrs	r0, r3
 80004c4:	43c0      	mvns	r0, r0
 80004c6:	f000 0001 	and.w	r0, r0, #1
 80004ca:	4770      	bx	lr
 80004cc:	40026000 	.word	0x40026000

080004d0 <send_USART_str>:
 80004d0:	b538      	push	{r3, r4, r5, lr}
 80004d2:	7801      	ldrb	r1, [r0, #0]
 80004d4:	4604      	mov	r4, r0
 80004d6:	b139      	cbz	r1, 80004e8 <send_USART_str+0x18>
 80004d8:	4605      	mov	r5, r0
 80004da:	4811      	ldr	r0, [pc, #68]	@ (8000520 <send_USART_str+0x50>)
 80004dc:	f001 fc6b 	bl	8001db6 <usart_send_blocking>
 80004e0:	f815 1f01 	ldrb.w	r1, [r5, #1]!
 80004e4:	2900      	cmp	r1, #0
 80004e6:	d1f8      	bne.n	80004da <send_USART_str+0xa>
 80004e8:	480d      	ldr	r0, [pc, #52]	@ (8000520 <send_USART_str+0x50>)
 80004ea:	210d      	movs	r1, #13
 80004ec:	f001 fc63 	bl	8001db6 <usart_send_blocking>
 80004f0:	210a      	movs	r1, #10
 80004f2:	480b      	ldr	r0, [pc, #44]	@ (8000520 <send_USART_str+0x50>)
 80004f4:	f001 fc5f 	bl	8001db6 <usart_send_blocking>
 80004f8:	7821      	ldrb	r1, [r4, #0]
 80004fa:	b131      	cbz	r1, 800050a <send_USART_str+0x3a>
 80004fc:	4809      	ldr	r0, [pc, #36]	@ (8000524 <send_USART_str+0x54>)
 80004fe:	f001 fc5a 	bl	8001db6 <usart_send_blocking>
 8000502:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 8000506:	2900      	cmp	r1, #0
 8000508:	d1f8      	bne.n	80004fc <send_USART_str+0x2c>
 800050a:	4806      	ldr	r0, [pc, #24]	@ (8000524 <send_USART_str+0x54>)
 800050c:	210d      	movs	r1, #13
 800050e:	f001 fc52 	bl	8001db6 <usart_send_blocking>
 8000512:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000516:	4803      	ldr	r0, [pc, #12]	@ (8000524 <send_USART_str+0x54>)
 8000518:	210a      	movs	r1, #10
 800051a:	f001 bc4c 	b.w	8001db6 <usart_send_blocking>
 800051e:	bf00      	nop
 8000520:	40004400 	.word	0x40004400
 8000524:	40004c00 	.word	0x40004c00

08000528 <send_USART_bytes>:
 8000528:	2900      	cmp	r1, #0
 800052a:	dd12      	ble.n	8000552 <send_USART_bytes+0x2a>
 800052c:	b570      	push	{r4, r5, r6, lr}
 800052e:	1e44      	subs	r4, r0, #1
 8000530:	1866      	adds	r6, r4, r1
 8000532:	4625      	mov	r5, r4
 8000534:	f815 1f01 	ldrb.w	r1, [r5, #1]!
 8000538:	4806      	ldr	r0, [pc, #24]	@ (8000554 <send_USART_bytes+0x2c>)
 800053a:	f001 fc3c 	bl	8001db6 <usart_send_blocking>
 800053e:	42b5      	cmp	r5, r6
 8000540:	d1f8      	bne.n	8000534 <send_USART_bytes+0xc>
 8000542:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 8000546:	4804      	ldr	r0, [pc, #16]	@ (8000558 <send_USART_bytes+0x30>)
 8000548:	f001 fc35 	bl	8001db6 <usart_send_blocking>
 800054c:	42b4      	cmp	r4, r6
 800054e:	d1f8      	bne.n	8000542 <send_USART_bytes+0x1a>
 8000550:	bd70      	pop	{r4, r5, r6, pc}
 8000552:	4770      	bx	lr
 8000554:	40004400 	.word	0x40004400
 8000558:	40004c00 	.word	0x40004c00

0800055c <recv_USART_bytes>:
 800055c:	2900      	cmp	r1, #0
 800055e:	dd0a      	ble.n	8000576 <recv_USART_bytes+0x1a>
 8000560:	b538      	push	{r3, r4, r5, lr}
 8000562:	1e44      	subs	r4, r0, #1
 8000564:	1865      	adds	r5, r4, r1
 8000566:	4804      	ldr	r0, [pc, #16]	@ (8000578 <recv_USART_bytes+0x1c>)
 8000568:	f001 fc30 	bl	8001dcc <usart_recv_blocking>
 800056c:	f804 0f01 	strb.w	r0, [r4, #1]!
 8000570:	42ac      	cmp	r4, r5
 8000572:	d1f8      	bne.n	8000566 <recv_USART_bytes+0xa>
 8000574:	bd38      	pop	{r3, r4, r5, pc}
 8000576:	4770      	bx	lr
 8000578:	40004400 	.word	0x40004400

0800057c <dma1_stream5_isr>:
 800057c:	b508      	push	{r3, lr}
 800057e:	4807      	ldr	r0, [pc, #28]	@ (800059c <dma1_stream5_isr+0x20>)
 8000580:	f001 fc32 	bl	8001de8 <usart_disable_rx_dma>
 8000584:	4806      	ldr	r0, [pc, #24]	@ (80005a0 <dma1_stream5_isr+0x24>)
 8000586:	2105      	movs	r1, #5
 8000588:	2220      	movs	r2, #32
 800058a:	f001 f913 	bl	80017b4 <dma_clear_interrupt_flags>
 800058e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000592:	4803      	ldr	r0, [pc, #12]	@ (80005a0 <dma1_stream5_isr+0x24>)
 8000594:	2105      	movs	r1, #5
 8000596:	f001 b9a5 	b.w	80018e4 <dma_disable_stream>
 800059a:	bf00      	nop
 800059c:	40004400 	.word	0x40004400
 80005a0:	40026000 	.word	0x40026000

080005a4 <dma1_stream6_isr>:
 80005a4:	b508      	push	{r3, lr}
 80005a6:	4807      	ldr	r0, [pc, #28]	@ (80005c4 <dma1_stream6_isr+0x20>)
 80005a8:	f001 fc28 	bl	8001dfc <usart_disable_tx_dma>
 80005ac:	4806      	ldr	r0, [pc, #24]	@ (80005c8 <dma1_stream6_isr+0x24>)
 80005ae:	2106      	movs	r1, #6
 80005b0:	2220      	movs	r2, #32
 80005b2:	f001 f8ff 	bl	80017b4 <dma_clear_interrupt_flags>
 80005b6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80005ba:	4803      	ldr	r0, [pc, #12]	@ (80005c8 <dma1_stream6_isr+0x24>)
 80005bc:	2106      	movs	r1, #6
 80005be:	f001 b991 	b.w	80018e4 <dma_disable_stream>
 80005c2:	bf00      	nop
 80005c4:	40004400 	.word	0x40004400
 80005c8:	40026000 	.word	0x40026000

080005cc <signal_host>:
 80005cc:	b508      	push	{r3, lr}
 80005ce:	4805      	ldr	r0, [pc, #20]	@ (80005e4 <signal_host+0x18>)
 80005d0:	2178      	movs	r1, #120	@ 0x78
 80005d2:	f001 fbf0 	bl	8001db6 <usart_send_blocking>
 80005d6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80005da:	4803      	ldr	r0, [pc, #12]	@ (80005e8 <signal_host+0x1c>)
 80005dc:	2178      	movs	r1, #120	@ 0x78
 80005de:	f001 bbea 	b.w	8001db6 <usart_send_blocking>
 80005e2:	bf00      	nop
 80005e4:	40004400 	.word	0x40004400
 80005e8:	40004c00 	.word	0x40004c00

080005ec <br_ccopy>:
 80005ec:	b193      	cbz	r3, 8000614 <br_ccopy+0x28>
 80005ee:	b500      	push	{lr}
 80005f0:	4240      	negs	r0, r0
 80005f2:	440b      	add	r3, r1
 80005f4:	f891 e000 	ldrb.w	lr, [r1]
 80005f8:	f812 cb01 	ldrb.w	ip, [r2], #1
 80005fc:	ea8e 0c0c 	eor.w	ip, lr, ip
 8000600:	ea0c 0c00 	and.w	ip, ip, r0
 8000604:	ea8c 0c0e 	eor.w	ip, ip, lr
 8000608:	f801 cb01 	strb.w	ip, [r1], #1
 800060c:	4299      	cmp	r1, r3
 800060e:	d1f1      	bne.n	80005f4 <br_ccopy+0x8>
 8000610:	f85d fb04 	ldr.w	pc, [sp], #4
 8000614:	4770      	bx	lr
 8000616:	bf00      	nop

08000618 <br_i31_add>:
 8000618:	6803      	ldr	r3, [r0, #0]
 800061a:	333f      	adds	r3, #63	@ 0x3f
 800061c:	2b3f      	cmp	r3, #63	@ 0x3f
 800061e:	d91a      	bls.n	8000656 <br_i31_add+0x3e>
 8000620:	4684      	mov	ip, r0
 8000622:	b510      	push	{r4, lr}
 8000624:	0958      	lsrs	r0, r3, #5
 8000626:	f1ac 0e04 	sub.w	lr, ip, #4
 800062a:	eb0e 0e80 	add.w	lr, lr, r0, lsl #2
 800062e:	4254      	negs	r4, r2
 8000630:	2000      	movs	r0, #0
 8000632:	f85c 2f04 	ldr.w	r2, [ip, #4]!
 8000636:	f851 3f04 	ldr.w	r3, [r1, #4]!
 800063a:	4413      	add	r3, r2
 800063c:	4418      	add	r0, r3
 800063e:	f020 4300 	bic.w	r3, r0, #2147483648	@ 0x80000000
 8000642:	4053      	eors	r3, r2
 8000644:	4023      	ands	r3, r4
 8000646:	4053      	eors	r3, r2
 8000648:	45e6      	cmp	lr, ip
 800064a:	f8cc 3000 	str.w	r3, [ip]
 800064e:	ea4f 70d0 	mov.w	r0, r0, lsr #31
 8000652:	d1ee      	bne.n	8000632 <br_i31_add+0x1a>
 8000654:	bd10      	pop	{r4, pc}
 8000656:	2000      	movs	r0, #0
 8000658:	4770      	bx	lr
 800065a:	bf00      	nop

0800065c <br_i31_bit_length>:
 800065c:	2900      	cmp	r1, #0
 800065e:	d06b      	beq.n	8000738 <br_i31_bit_length+0xdc>
 8000660:	b570      	push	{r4, r5, r6, lr}
 8000662:	f04f 0e00 	mov.w	lr, #0
 8000666:	f101 3cff 	add.w	ip, r1, #4294967295	@ 0xffffffff
 800066a:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 800066e:	4672      	mov	r2, lr
 8000670:	4253      	negs	r3, r2
 8000672:	4313      	orrs	r3, r2
 8000674:	43db      	mvns	r3, r3
 8000676:	0fdb      	lsrs	r3, r3, #31
 8000678:	2b00      	cmp	r3, #0
 800067a:	f850 3d04 	ldr.w	r3, [r0, #-4]!
 800067e:	bf18      	it	ne
 8000680:	46e6      	movne	lr, ip
 8000682:	f10c 3cff 	add.w	ip, ip, #4294967295	@ 0xffffffff
 8000686:	bf18      	it	ne
 8000688:	461a      	movne	r2, r3
 800068a:	f1bc 3fff 	cmp.w	ip, #4294967295	@ 0xffffffff
 800068e:	d1ef      	bne.n	8000670 <br_i31_bit_length+0x14>
 8000690:	f64f 70ff 	movw	r0, #65535	@ 0xffff
 8000694:	1a83      	subs	r3, r0, r2
 8000696:	ea82 0403 	eor.w	r4, r2, r3
 800069a:	4050      	eors	r0, r2
 800069c:	4020      	ands	r0, r4
 800069e:	4058      	eors	r0, r3
 80006a0:	ea82 4312 	eor.w	r3, r2, r2, lsr #16
 80006a4:	ea03 73e0 	and.w	r3, r3, r0, asr #31
 80006a8:	4053      	eors	r3, r2
 80006aa:	f1c3 04ff 	rsb	r4, r3, #255	@ 0xff
 80006ae:	ea4f 7cd0 	mov.w	ip, r0, lsr #31
 80006b2:	ea4f 114e 	mov.w	r1, lr, lsl #5
 80006b6:	ea83 0004 	eor.w	r0, r3, r4
 80006ba:	f083 0eff 	eor.w	lr, r3, #255	@ 0xff
 80006be:	ea0e 0e00 	and.w	lr, lr, r0
 80006c2:	ea8e 0e04 	eor.w	lr, lr, r4
 80006c6:	ea83 2013 	eor.w	r0, r3, r3, lsr #8
 80006ca:	ea00 70ee 	and.w	r0, r0, lr, asr #31
 80006ce:	4058      	eors	r0, r3
 80006d0:	f1c0 030f 	rsb	r3, r0, #15
 80006d4:	ea80 0503 	eor.w	r5, r0, r3
 80006d8:	f080 040f 	eor.w	r4, r0, #15
 80006dc:	402c      	ands	r4, r5
 80006de:	405c      	eors	r4, r3
 80006e0:	ea80 1310 	eor.w	r3, r0, r0, lsr #4
 80006e4:	ea03 73e4 	and.w	r3, r3, r4, asr #31
 80006e8:	4043      	eors	r3, r0
 80006ea:	f1c3 0503 	rsb	r5, r3, #3
 80006ee:	ea83 0605 	eor.w	r6, r3, r5
 80006f2:	f083 0003 	eor.w	r0, r3, #3
 80006f6:	4030      	ands	r0, r6
 80006f8:	4068      	eors	r0, r5
 80006fa:	ea83 0593 	eor.w	r5, r3, r3, lsr #2
 80006fe:	ea05 75e0 	and.w	r5, r5, r0, asr #31
 8000702:	406b      	eors	r3, r5
 8000704:	4255      	negs	r5, r2
 8000706:	432a      	orrs	r2, r5
 8000708:	eb01 71d2 	add.w	r1, r1, r2, lsr #31
 800070c:	ea4f 7ede 	mov.w	lr, lr, lsr #31
 8000710:	eb01 110c 	add.w	r1, r1, ip, lsl #4
 8000714:	0fe4      	lsrs	r4, r4, #31
 8000716:	eb01 01ce 	add.w	r1, r1, lr, lsl #3
 800071a:	0fc0      	lsrs	r0, r0, #31
 800071c:	eb01 0184 	add.w	r1, r1, r4, lsl #2
 8000720:	eb01 0140 	add.w	r1, r1, r0, lsl #1
 8000724:	f1c3 0001 	rsb	r0, r3, #1
 8000728:	f083 0201 	eor.w	r2, r3, #1
 800072c:	4043      	eors	r3, r0
 800072e:	4013      	ands	r3, r2
 8000730:	4043      	eors	r3, r0
 8000732:	eb01 70d3 	add.w	r0, r1, r3, lsr #31
 8000736:	bd70      	pop	{r4, r5, r6, pc}
 8000738:	4608      	mov	r0, r1
 800073a:	4770      	bx	lr

0800073c <br_i31_decode>:
 800073c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800073e:	460f      	mov	r7, r1
 8000740:	4606      	mov	r6, r0
 8000742:	4611      	mov	r1, r2
 8000744:	b1f2      	cbz	r2, 8000784 <br_i31_decode+0x48>
 8000746:	2300      	movs	r3, #0
 8000748:	eb07 0c02 	add.w	ip, r7, r2
 800074c:	461c      	mov	r4, r3
 800074e:	2101      	movs	r1, #1
 8000750:	f81c 5d01 	ldrb.w	r5, [ip, #-1]!
 8000754:	fa05 f203 	lsl.w	r2, r5, r3
 8000758:	f103 0e08 	add.w	lr, r3, #8
 800075c:	4314      	orrs	r4, r2
 800075e:	3b17      	subs	r3, #23
 8000760:	f1be 0f1e 	cmp.w	lr, #30
 8000764:	f024 4000 	bic.w	r0, r4, #2147483648	@ 0x80000000
 8000768:	f1c3 0208 	rsb	r2, r3, #8
 800076c:	bfc3      	ittte	gt
 800076e:	f846 0021 	strgt.w	r0, [r6, r1, lsl #2]
 8000772:	fa25 f402 	lsrgt.w	r4, r5, r2
 8000776:	3101      	addgt	r1, #1
 8000778:	4673      	movle	r3, lr
 800077a:	4567      	cmp	r7, ip
 800077c:	d1e8      	bne.n	8000750 <br_i31_decode+0x14>
 800077e:	b133      	cbz	r3, 800078e <br_i31_decode+0x52>
 8000780:	f846 4021 	str.w	r4, [r6, r1, lsl #2]
 8000784:	1d30      	adds	r0, r6, #4
 8000786:	f7ff ff69 	bl	800065c <br_i31_bit_length>
 800078a:	6030      	str	r0, [r6, #0]
 800078c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800078e:	3901      	subs	r1, #1
 8000790:	1d30      	adds	r0, r6, #4
 8000792:	f7ff ff63 	bl	800065c <br_i31_bit_length>
 8000796:	6030      	str	r0, [r6, #0]
 8000798:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800079a:	bf00      	nop

0800079c <br_i31_decode_reduce>:
 800079c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80007a0:	681c      	ldr	r4, [r3, #0]
 80007a2:	b083      	sub	sp, #12
 80007a4:	4681      	mov	r9, r0
 80007a6:	b924      	cbnz	r4, 80007b2 <br_i31_decode_reduce+0x16>
 80007a8:	f8c9 4000 	str.w	r4, [r9]
 80007ac:	b003      	add	sp, #12
 80007ae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80007b2:	4690      	mov	r8, r2
 80007b4:	1de5      	adds	r5, r4, #7
 80007b6:	f104 021f 	add.w	r2, r4, #31
 80007ba:	0952      	lsrs	r2, r2, #5
 80007bc:	eba5 1554 	sub.w	r5, r5, r4, lsr #5
 80007c0:	0092      	lsls	r2, r2, #2
 80007c2:	f840 4b04 	str.w	r4, [r0], #4
 80007c6:	460f      	mov	r7, r1
 80007c8:	08ed      	lsrs	r5, r5, #3
 80007ca:	2100      	movs	r1, #0
 80007cc:	469b      	mov	fp, r3
 80007ce:	f000 fee3 	bl	8001598 <memset>
 80007d2:	1e6a      	subs	r2, r5, #1
 80007d4:	4542      	cmp	r2, r8
 80007d6:	d245      	bcs.n	8000864 <br_i31_decode_reduce+0xc8>
 80007d8:	4639      	mov	r1, r7
 80007da:	4648      	mov	r0, r9
 80007dc:	3d02      	subs	r5, #2
 80007de:	2600      	movs	r6, #0
 80007e0:	f7ff ffac 	bl	800073c <br_i31_decode>
 80007e4:	443d      	add	r5, r7
 80007e6:	f8c9 4000 	str.w	r4, [r9]
 80007ea:	4632      	mov	r2, r6
 80007ec:	f8cd 9004 	str.w	r9, [sp, #4]
 80007f0:	e007      	b.n	8000802 <br_i31_decode_reduce+0x66>
 80007f2:	3402      	adds	r4, #2
 80007f4:	1be4      	subs	r4, r4, r7
 80007f6:	45a0      	cmp	r8, r4
 80007f8:	ea4a 2202 	orr.w	r2, sl, r2, lsl #8
 80007fc:	f106 0608 	add.w	r6, r6, #8
 8000800:	d919      	bls.n	8000836 <br_i31_decode_reduce+0x9a>
 8000802:	2e16      	cmp	r6, #22
 8000804:	462c      	mov	r4, r5
 8000806:	f815 af01 	ldrb.w	sl, [r5, #1]!
 800080a:	ddf2      	ble.n	80007f2 <br_i31_decode_reduce+0x56>
 800080c:	3e17      	subs	r6, #23
 800080e:	f1c6 0908 	rsb	r9, r6, #8
 8000812:	fa02 f209 	lsl.w	r2, r2, r9
 8000816:	fa2a f106 	lsr.w	r1, sl, r6
 800081a:	4311      	orrs	r1, r2
 800081c:	9801      	ldr	r0, [sp, #4]
 800081e:	465a      	mov	r2, fp
 8000820:	3402      	adds	r4, #2
 8000822:	f000 fb45 	bl	8000eb0 <br_i31_muladd_small>
 8000826:	1be4      	subs	r4, r4, r7
 8000828:	23ff      	movs	r3, #255	@ 0xff
 800082a:	fa43 f309 	asr.w	r3, r3, r9
 800082e:	45a0      	cmp	r8, r4
 8000830:	ea03 020a 	and.w	r2, r3, sl
 8000834:	d8e5      	bhi.n	8000802 <br_i31_decode_reduce+0x66>
 8000836:	f8dd 9004 	ldr.w	r9, [sp, #4]
 800083a:	2e00      	cmp	r6, #0
 800083c:	d0b6      	beq.n	80007ac <br_i31_decode_reduce+0x10>
 800083e:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8000842:	f1c6 011f 	rsb	r1, r6, #31
 8000846:	40b3      	lsls	r3, r6
 8000848:	4648      	mov	r0, r9
 800084a:	ea43 0402 	orr.w	r4, r3, r2
 800084e:	f000 fc67 	bl	8001120 <br_i31_rshift>
 8000852:	465a      	mov	r2, fp
 8000854:	f024 4100 	bic.w	r1, r4, #2147483648	@ 0x80000000
 8000858:	4648      	mov	r0, r9
 800085a:	b003      	add	sp, #12
 800085c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000860:	f000 bb26 	b.w	8000eb0 <br_i31_muladd_small>
 8000864:	4642      	mov	r2, r8
 8000866:	4639      	mov	r1, r7
 8000868:	4648      	mov	r0, r9
 800086a:	f7ff ff67 	bl	800073c <br_i31_decode>
 800086e:	e79b      	b.n	80007a8 <br_i31_decode_reduce+0xc>

08000870 <br_i31_encode>:
 8000870:	6813      	ldr	r3, [r2, #0]
 8000872:	331f      	adds	r3, #31
 8000874:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000876:	4616      	mov	r6, r2
 8000878:	460a      	mov	r2, r1
 800087a:	0959      	lsrs	r1, r3, #5
 800087c:	d03a      	beq.n	80008f4 <br_i31_encode+0x84>
 800087e:	4684      	mov	ip, r0
 8000880:	4494      	add	ip, r2
 8000882:	b3b2      	cbz	r2, 80008f2 <br_i31_encode+0x82>
 8000884:	2000      	movs	r0, #0
 8000886:	4604      	mov	r4, r0
 8000888:	f04f 0e01 	mov.w	lr, #1
 800088c:	e016      	b.n	80008bc <br_i31_encode+0x4c>
 800088e:	f856 5023 	ldr.w	r5, [r6, r3, lsl #2]
 8000892:	f10e 0e02 	add.w	lr, lr, #2
 8000896:	201f      	movs	r0, #31
 8000898:	fa05 f300 	lsl.w	r3, r5, r0
 800089c:	3801      	subs	r0, #1
 800089e:	433b      	orrs	r3, r7
 80008a0:	f1c0 041f 	rsb	r4, r0, #31
 80008a4:	2a03      	cmp	r2, #3
 80008a6:	fa25 f404 	lsr.w	r4, r5, r4
 80008aa:	b2dd      	uxtb	r5, r3
 80008ac:	d915      	bls.n	80008da <br_i31_encode+0x6a>
 80008ae:	ba1b      	rev	r3, r3
 80008b0:	3a04      	subs	r2, #4
 80008b2:	f84c 3c04 	str.w	r3, [ip, #-4]
 80008b6:	f1ac 0c04 	sub.w	ip, ip, #4
 80008ba:	d01a      	beq.n	80008f2 <br_i31_encode+0x82>
 80008bc:	4571      	cmp	r1, lr
 80008be:	bf2c      	ite	cs
 80008c0:	f856 702e 	ldrcs.w	r7, [r6, lr, lsl #2]
 80008c4:	2700      	movcc	r7, #0
 80008c6:	f10e 0301 	add.w	r3, lr, #1
 80008ca:	b9b8      	cbnz	r0, 80008fc <br_i31_encode+0x8c>
 80008cc:	4299      	cmp	r1, r3
 80008ce:	d2de      	bcs.n	800088e <br_i31_encode+0x1e>
 80008d0:	f10e 0e02 	add.w	lr, lr, #2
 80008d4:	201f      	movs	r0, #31
 80008d6:	2500      	movs	r5, #0
 80008d8:	e7de      	b.n	8000898 <br_i31_encode+0x28>
 80008da:	2a02      	cmp	r2, #2
 80008dc:	d004      	beq.n	80008e8 <br_i31_encode+0x78>
 80008de:	2a03      	cmp	r2, #3
 80008e0:	d105      	bne.n	80008ee <br_i31_encode+0x7e>
 80008e2:	0c1a      	lsrs	r2, r3, #16
 80008e4:	f80c 2c03 	strb.w	r2, [ip, #-3]
 80008e8:	0a1b      	lsrs	r3, r3, #8
 80008ea:	f80c 3c02 	strb.w	r3, [ip, #-2]
 80008ee:	f80c 5c01 	strb.w	r5, [ip, #-1]
 80008f2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80008f4:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
 80008f8:	f000 be4e 	b.w	8001598 <memset>
 80008fc:	463d      	mov	r5, r7
 80008fe:	469e      	mov	lr, r3
 8000900:	4627      	mov	r7, r4
 8000902:	e7c9      	b.n	8000898 <br_i31_encode+0x28>

08000904 <br_i31_from_monty>:
 8000904:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000908:	680f      	ldr	r7, [r1, #0]
 800090a:	b083      	sub	sp, #12
 800090c:	371f      	adds	r7, #31
 800090e:	097b      	lsrs	r3, r7, #5
 8000910:	460e      	mov	r6, r1
 8000912:	4605      	mov	r5, r0
 8000914:	9301      	str	r3, [sp, #4]
 8000916:	d037      	beq.n	8000988 <br_i31_from_monty+0x84>
 8000918:	9b01      	ldr	r3, [sp, #4]
 800091a:	4691      	mov	r9, r2
 800091c:	eb00 0b83 	add.w	fp, r0, r3, lsl #2
 8000920:	f04f 0800 	mov.w	r8, #0
 8000924:	686c      	ldr	r4, [r5, #4]
 8000926:	2200      	movs	r2, #0
 8000928:	fb04 f409 	mul.w	r4, r4, r9
 800092c:	f024 4400 	bic.w	r4, r4, #2147483648	@ 0x80000000
 8000930:	4611      	mov	r1, r2
 8000932:	4610      	mov	r0, r2
 8000934:	e005      	b.n	8000942 <br_i31_from_monty+0x3e>
 8000936:	f84e 3c04 	str.w	r3, [lr, #-4]
 800093a:	9b01      	ldr	r3, [sp, #4]
 800093c:	4660      	mov	r0, ip
 800093e:	4283      	cmp	r3, r0
 8000940:	d91c      	bls.n	800097c <br_i31_from_monty+0x78>
 8000942:	f100 0c01 	add.w	ip, r0, #1
 8000946:	f04f 0a00 	mov.w	sl, #0
 800094a:	f855 302c 	ldr.w	r3, [r5, ip, lsl #2]
 800094e:	f856 702c 	ldr.w	r7, [r6, ip, lsl #2]
 8000952:	fbe7 3a04 	umlal	r3, sl, r7, r4
 8000956:	189b      	adds	r3, r3, r2
 8000958:	eb41 0a0a 	adc.w	sl, r1, sl
 800095c:	0fda      	lsrs	r2, r3, #31
 800095e:	ea4f 0e8c 	mov.w	lr, ip, lsl #2
 8000962:	44ae      	add	lr, r5
 8000964:	f023 4300 	bic.w	r3, r3, #2147483648	@ 0x80000000
 8000968:	ea42 024a 	orr.w	r2, r2, sl, lsl #1
 800096c:	ea4f 71da 	mov.w	r1, sl, lsr #31
 8000970:	2800      	cmp	r0, #0
 8000972:	d1e0      	bne.n	8000936 <br_i31_from_monty+0x32>
 8000974:	9b01      	ldr	r3, [sp, #4]
 8000976:	2001      	movs	r0, #1
 8000978:	4283      	cmp	r3, r0
 800097a:	d8e2      	bhi.n	8000942 <br_i31_from_monty+0x3e>
 800097c:	f108 0801 	add.w	r8, r8, #1
 8000980:	4543      	cmp	r3, r8
 8000982:	f8cb 2000 	str.w	r2, [fp]
 8000986:	d1cd      	bne.n	8000924 <br_i31_from_monty+0x20>
 8000988:	4631      	mov	r1, r6
 800098a:	2200      	movs	r2, #0
 800098c:	4628      	mov	r0, r5
 800098e:	f000 fbe9 	bl	8001164 <br_i31_sub>
 8000992:	4631      	mov	r1, r6
 8000994:	f080 0201 	eor.w	r2, r0, #1
 8000998:	4628      	mov	r0, r5
 800099a:	b003      	add	sp, #12
 800099c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80009a0:	f000 bbe0 	b.w	8001164 <br_i31_sub>

080009a4 <br_i31_modpow_opt>:
 80009a4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80009a8:	461f      	mov	r7, r3
 80009aa:	681b      	ldr	r3, [r3, #0]
 80009ac:	b08f      	sub	sp, #60	@ 0x3c
 80009ae:	333f      	adds	r3, #63	@ 0x3f
 80009b0:	9208      	str	r2, [sp, #32]
 80009b2:	095a      	lsrs	r2, r3, #5
 80009b4:	910a      	str	r1, [sp, #40]	@ 0x28
 80009b6:	1c53      	adds	r3, r2, #1
 80009b8:	991a      	ldr	r1, [sp, #104]	@ 0x68
 80009ba:	f023 0301 	bic.w	r3, r3, #1
 80009be:	ebb1 0f43 	cmp.w	r1, r3, lsl #1
 80009c2:	e9dd 9618 	ldrd	r9, r6, [sp, #96]	@ 0x60
 80009c6:	f0c0 80ed 	bcc.w	8000ba4 <br_i31_modpow_opt+0x200>
 80009ca:	0092      	lsls	r2, r2, #2
 80009cc:	009d      	lsls	r5, r3, #2
 80009ce:	9203      	str	r2, [sp, #12]
 80009d0:	eb03 1243 	add.w	r2, r3, r3, lsl #5
 80009d4:	9506      	str	r5, [sp, #24]
 80009d6:	4291      	cmp	r1, r2
 80009d8:	eb06 0583 	add.w	r5, r6, r3, lsl #2
 80009dc:	4604      	mov	r4, r0
 80009de:	9504      	str	r5, [sp, #16]
 80009e0:	f080 8121 	bcs.w	8000c26 <br_i31_modpow_opt+0x282>
 80009e4:	eb03 1203 	add.w	r2, r3, r3, lsl #4
 80009e8:	4291      	cmp	r1, r2
 80009ea:	f080 8112 	bcs.w	8000c12 <br_i31_modpow_opt+0x26e>
 80009ee:	eb03 02c3 	add.w	r2, r3, r3, lsl #3
 80009f2:	4291      	cmp	r1, r2
 80009f4:	f080 8103 	bcs.w	8000bfe <br_i31_modpow_opt+0x25a>
 80009f8:	009a      	lsls	r2, r3, #2
 80009fa:	441a      	add	r2, r3
 80009fc:	4291      	cmp	r1, r2
 80009fe:	9305      	str	r3, [sp, #20]
 8000a00:	4639      	mov	r1, r7
 8000a02:	f080 80d3 	bcs.w	8000bac <br_i31_modpow_opt+0x208>
 8000a06:	f000 fbcf 	bl	80011a8 <br_i31_to_monty>
 8000a0a:	9a03      	ldr	r2, [sp, #12]
 8000a0c:	9804      	ldr	r0, [sp, #16]
 8000a0e:	4621      	mov	r1, r4
 8000a10:	f000 fe10 	bl	8001634 <memcpy>
 8000a14:	2301      	movs	r3, #1
 8000a16:	9307      	str	r3, [sp, #28]
 8000a18:	9b05      	ldr	r3, [sp, #20]
 8000a1a:	683a      	ldr	r2, [r7, #0]
 8000a1c:	930b      	str	r3, [sp, #44]	@ 0x2c
 8000a1e:	4620      	mov	r0, r4
 8000a20:	2100      	movs	r1, #0
 8000a22:	f840 2b04 	str.w	r2, [r0], #4
 8000a26:	321f      	adds	r2, #31
 8000a28:	0952      	lsrs	r2, r2, #5
 8000a2a:	0092      	lsls	r2, r2, #2
 8000a2c:	f000 fdb4 	bl	8001598 <memset>
 8000a30:	683a      	ldr	r2, [r7, #0]
 8000a32:	321f      	adds	r2, #31
 8000a34:	0952      	lsrs	r2, r2, #5
 8000a36:	2001      	movs	r0, #1
 8000a38:	f844 0022 	str.w	r0, [r4, r2, lsl #2]
 8000a3c:	2100      	movs	r1, #0
 8000a3e:	463a      	mov	r2, r7
 8000a40:	4620      	mov	r0, r4
 8000a42:	f000 fa35 	bl	8000eb0 <br_i31_muladd_small>
 8000a46:	2300      	movs	r3, #0
 8000a48:	9305      	str	r3, [sp, #20]
 8000a4a:	9309      	str	r3, [sp, #36]	@ 0x24
 8000a4c:	9b06      	ldr	r3, [sp, #24]
 8000a4e:	1f1d      	subs	r5, r3, #4
 8000a50:	9b04      	ldr	r3, [sp, #16]
 8000a52:	441d      	add	r5, r3
 8000a54:	3304      	adds	r3, #4
 8000a56:	930c      	str	r3, [sp, #48]	@ 0x30
 8000a58:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
 8000a5a:	930d      	str	r3, [sp, #52]	@ 0x34
 8000a5c:	9b05      	ldr	r3, [sp, #20]
 8000a5e:	2b00      	cmp	r3, #0
 8000a60:	dd41      	ble.n	8000ae6 <br_i31_modpow_opt+0x142>
 8000a62:	9a05      	ldr	r2, [sp, #20]
 8000a64:	9b07      	ldr	r3, [sp, #28]
 8000a66:	429a      	cmp	r2, r3
 8000a68:	db55      	blt.n	8000b16 <br_i31_modpow_opt+0x172>
 8000a6a:	9909      	ldr	r1, [sp, #36]	@ 0x24
 8000a6c:	1ad2      	subs	r2, r2, r3
 8000a6e:	9205      	str	r2, [sp, #20]
 8000a70:	fa21 f802 	lsr.w	r8, r1, r2
 8000a74:	469b      	mov	fp, r3
 8000a76:	f8cd 9060 	str.w	r9, [sp, #96]	@ 0x60
 8000a7a:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 8000a7e:	fa03 f30b 	lsl.w	r3, r3, fp
 8000a82:	46a9      	mov	r9, r5
 8000a84:	9d18      	ldr	r5, [sp, #96]	@ 0x60
 8000a86:	ea28 0803 	bic.w	r8, r8, r3
 8000a8a:	f04f 0a00 	mov.w	sl, #0
 8000a8e:	463b      	mov	r3, r7
 8000a90:	4622      	mov	r2, r4
 8000a92:	4621      	mov	r1, r4
 8000a94:	4630      	mov	r0, r6
 8000a96:	9500      	str	r5, [sp, #0]
 8000a98:	f000 f8d0 	bl	8000c3c <br_i31_montymul>
 8000a9c:	f10a 0a01 	add.w	sl, sl, #1
 8000aa0:	9a03      	ldr	r2, [sp, #12]
 8000aa2:	4631      	mov	r1, r6
 8000aa4:	4620      	mov	r0, r4
 8000aa6:	f000 fdc5 	bl	8001634 <memcpy>
 8000aaa:	45d3      	cmp	fp, sl
 8000aac:	d1ef      	bne.n	8000a8e <br_i31_modpow_opt+0xea>
 8000aae:	9b07      	ldr	r3, [sp, #28]
 8000ab0:	9518      	str	r5, [sp, #96]	@ 0x60
 8000ab2:	2b01      	cmp	r3, #1
 8000ab4:	464d      	mov	r5, r9
 8000ab6:	f8dd 9060 	ldr.w	r9, [sp, #96]	@ 0x60
 8000aba:	d135      	bne.n	8000b28 <br_i31_modpow_opt+0x184>
 8000abc:	9a04      	ldr	r2, [sp, #16]
 8000abe:	f8cd 9000 	str.w	r9, [sp]
 8000ac2:	463b      	mov	r3, r7
 8000ac4:	4621      	mov	r1, r4
 8000ac6:	4630      	mov	r0, r6
 8000ac8:	f000 f8b8 	bl	8000c3c <br_i31_montymul>
 8000acc:	f1c8 0000 	rsb	r0, r8, #0
 8000ad0:	ea40 0008 	orr.w	r0, r0, r8
 8000ad4:	9b03      	ldr	r3, [sp, #12]
 8000ad6:	0fc0      	lsrs	r0, r0, #31
 8000ad8:	4632      	mov	r2, r6
 8000ada:	4621      	mov	r1, r4
 8000adc:	f7ff fd86 	bl	80005ec <br_ccopy>
 8000ae0:	9b05      	ldr	r3, [sp, #20]
 8000ae2:	2b00      	cmp	r3, #0
 8000ae4:	dcbd      	bgt.n	8000a62 <br_i31_modpow_opt+0xbe>
 8000ae6:	9b08      	ldr	r3, [sp, #32]
 8000ae8:	2b00      	cmp	r3, #0
 8000aea:	d052      	beq.n	8000b92 <br_i31_modpow_opt+0x1ee>
 8000aec:	9a05      	ldr	r2, [sp, #20]
 8000aee:	9807      	ldr	r0, [sp, #28]
 8000af0:	f8dd c028 	ldr.w	ip, [sp, #40]	@ 0x28
 8000af4:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 8000af6:	3208      	adds	r2, #8
 8000af8:	1a11      	subs	r1, r2, r0
 8000afa:	9a08      	ldr	r2, [sp, #32]
 8000afc:	9105      	str	r1, [sp, #20]
 8000afe:	3a01      	subs	r2, #1
 8000b00:	9208      	str	r2, [sp, #32]
 8000b02:	f81c 2b01 	ldrb.w	r2, [ip], #1
 8000b06:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
 8000b0a:	e9cd 2c09 	strd	r2, ip, [sp, #36]	@ 0x24
 8000b0e:	fa22 f801 	lsr.w	r8, r2, r1
 8000b12:	4683      	mov	fp, r0
 8000b14:	e7af      	b.n	8000a76 <br_i31_modpow_opt+0xd2>
 8000b16:	9b08      	ldr	r3, [sp, #32]
 8000b18:	2b00      	cmp	r3, #0
 8000b1a:	d1e7      	bne.n	8000aec <br_i31_modpow_opt+0x148>
 8000b1c:	e9dd 3808 	ldrd	r3, r8, [sp, #32]
 8000b20:	f8dd b014 	ldr.w	fp, [sp, #20]
 8000b24:	9305      	str	r3, [sp, #20]
 8000b26:	e7a6      	b.n	8000a76 <br_i31_modpow_opt+0xd2>
 8000b28:	683b      	ldr	r3, [r7, #0]
 8000b2a:	9a04      	ldr	r2, [sp, #16]
 8000b2c:	980c      	ldr	r0, [sp, #48]	@ 0x30
 8000b2e:	6013      	str	r3, [r2, #0]
 8000b30:	331f      	adds	r3, #31
 8000b32:	095a      	lsrs	r2, r3, #5
 8000b34:	0092      	lsls	r2, r2, #2
 8000b36:	2100      	movs	r1, #0
 8000b38:	f000 fd2e 	bl	8001598 <memset>
 8000b3c:	9a04      	ldr	r2, [sp, #16]
 8000b3e:	9b06      	ldr	r3, [sp, #24]
 8000b40:	f8dd c034 	ldr.w	ip, [sp, #52]	@ 0x34
 8000b44:	940b      	str	r4, [sp, #44]	@ 0x2c
 8000b46:	f04f 0e01 	mov.w	lr, #1
 8000b4a:	eb02 0a03 	add.w	sl, r2, r3
 8000b4e:	fa0e fb0b 	lsl.w	fp, lr, fp
 8000b52:	463a      	mov	r2, r7
 8000b54:	ea88 030e 	eor.w	r3, r8, lr
 8000b58:	425c      	negs	r4, r3
 8000b5a:	431c      	orrs	r4, r3
 8000b5c:	43e4      	mvns	r4, r4
 8000b5e:	f1bc 0f01 	cmp.w	ip, #1
 8000b62:	ea4f 74d4 	mov.w	r4, r4, lsr #31
 8000b66:	d90b      	bls.n	8000b80 <br_i31_modpow_opt+0x1dc>
 8000b68:	9b04      	ldr	r3, [sp, #16]
 8000b6a:	4650      	mov	r0, sl
 8000b6c:	f850 7f04 	ldr.w	r7, [r0, #4]!
 8000b70:	f853 1f04 	ldr.w	r1, [r3, #4]!
 8000b74:	fb04 f707 	mul.w	r7, r4, r7
 8000b78:	4339      	orrs	r1, r7
 8000b7a:	42ab      	cmp	r3, r5
 8000b7c:	6019      	str	r1, [r3, #0]
 8000b7e:	d1f5      	bne.n	8000b6c <br_i31_modpow_opt+0x1c8>
 8000b80:	9b06      	ldr	r3, [sp, #24]
 8000b82:	f10e 0e01 	add.w	lr, lr, #1
 8000b86:	45de      	cmp	lr, fp
 8000b88:	449a      	add	sl, r3
 8000b8a:	d1e3      	bne.n	8000b54 <br_i31_modpow_opt+0x1b0>
 8000b8c:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
 8000b8e:	4617      	mov	r7, r2
 8000b90:	e794      	b.n	8000abc <br_i31_modpow_opt+0x118>
 8000b92:	4620      	mov	r0, r4
 8000b94:	464a      	mov	r2, r9
 8000b96:	4639      	mov	r1, r7
 8000b98:	f7ff feb4 	bl	8000904 <br_i31_from_monty>
 8000b9c:	2001      	movs	r0, #1
 8000b9e:	b00f      	add	sp, #60	@ 0x3c
 8000ba0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000ba4:	2000      	movs	r0, #0
 8000ba6:	b00f      	add	sp, #60	@ 0x3c
 8000ba8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000bac:	f000 fafc 	bl	80011a8 <br_i31_to_monty>
 8000bb0:	2302      	movs	r3, #2
 8000bb2:	9307      	str	r3, [sp, #28]
 8000bb4:	9b05      	ldr	r3, [sp, #20]
 8000bb6:	f04f 0a04 	mov.w	sl, #4
 8000bba:	9a04      	ldr	r2, [sp, #16]
 8000bbc:	9305      	str	r3, [sp, #20]
 8000bbe:	9b06      	ldr	r3, [sp, #24]
 8000bc0:	18d5      	adds	r5, r2, r3
 8000bc2:	4628      	mov	r0, r5
 8000bc4:	9a03      	ldr	r2, [sp, #12]
 8000bc6:	4621      	mov	r1, r4
 8000bc8:	f000 fd34 	bl	8001634 <memcpy>
 8000bcc:	9b05      	ldr	r3, [sp, #20]
 8000bce:	f8dd b018 	ldr.w	fp, [sp, #24]
 8000bd2:	9619      	str	r6, [sp, #100]	@ 0x64
 8000bd4:	f04f 0802 	mov.w	r8, #2
 8000bd8:	462e      	mov	r6, r5
 8000bda:	464d      	mov	r5, r9
 8000bdc:	4699      	mov	r9, r3
 8000bde:	4631      	mov	r1, r6
 8000be0:	445e      	add	r6, fp
 8000be2:	9500      	str	r5, [sp, #0]
 8000be4:	463b      	mov	r3, r7
 8000be6:	4622      	mov	r2, r4
 8000be8:	4630      	mov	r0, r6
 8000bea:	f108 0801 	add.w	r8, r8, #1
 8000bee:	f000 f825 	bl	8000c3c <br_i31_montymul>
 8000bf2:	45d0      	cmp	r8, sl
 8000bf4:	d1f3      	bne.n	8000bde <br_i31_modpow_opt+0x23a>
 8000bf6:	464b      	mov	r3, r9
 8000bf8:	9e19      	ldr	r6, [sp, #100]	@ 0x64
 8000bfa:	46a9      	mov	r9, r5
 8000bfc:	e70d      	b.n	8000a1a <br_i31_modpow_opt+0x76>
 8000bfe:	4639      	mov	r1, r7
 8000c00:	9305      	str	r3, [sp, #20]
 8000c02:	f000 fad1 	bl	80011a8 <br_i31_to_monty>
 8000c06:	2303      	movs	r3, #3
 8000c08:	9307      	str	r3, [sp, #28]
 8000c0a:	f04f 0a08 	mov.w	sl, #8
 8000c0e:	9b05      	ldr	r3, [sp, #20]
 8000c10:	e7d3      	b.n	8000bba <br_i31_modpow_opt+0x216>
 8000c12:	4639      	mov	r1, r7
 8000c14:	9305      	str	r3, [sp, #20]
 8000c16:	f000 fac7 	bl	80011a8 <br_i31_to_monty>
 8000c1a:	2304      	movs	r3, #4
 8000c1c:	9307      	str	r3, [sp, #28]
 8000c1e:	f04f 0a10 	mov.w	sl, #16
 8000c22:	9b05      	ldr	r3, [sp, #20]
 8000c24:	e7c9      	b.n	8000bba <br_i31_modpow_opt+0x216>
 8000c26:	4639      	mov	r1, r7
 8000c28:	9305      	str	r3, [sp, #20]
 8000c2a:	f000 fabd 	bl	80011a8 <br_i31_to_monty>
 8000c2e:	2305      	movs	r3, #5
 8000c30:	9307      	str	r3, [sp, #28]
 8000c32:	f04f 0a20 	mov.w	sl, #32
 8000c36:	9b05      	ldr	r3, [sp, #20]
 8000c38:	e7bf      	b.n	8000bba <br_i31_modpow_opt+0x216>
 8000c3a:	bf00      	nop

08000c3c <br_i31_montymul>:
 8000c3c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000c40:	b089      	sub	sp, #36	@ 0x24
 8000c42:	469b      	mov	fp, r3
 8000c44:	9b12      	ldr	r3, [sp, #72]	@ 0x48
 8000c46:	9304      	str	r3, [sp, #16]
 8000c48:	f8db 3000 	ldr.w	r3, [fp]
 8000c4c:	4606      	mov	r6, r0
 8000c4e:	f840 3b04 	str.w	r3, [r0], #4
 8000c52:	331f      	adds	r3, #31
 8000c54:	095c      	lsrs	r4, r3, #5
 8000c56:	00a7      	lsls	r7, r4, #2
 8000c58:	460d      	mov	r5, r1
 8000c5a:	4690      	mov	r8, r2
 8000c5c:	f024 0303 	bic.w	r3, r4, #3
 8000c60:	463a      	mov	r2, r7
 8000c62:	2100      	movs	r1, #0
 8000c64:	9303      	str	r3, [sp, #12]
 8000c66:	f000 fc97 	bl	8001598 <memset>
 8000c6a:	2c00      	cmp	r4, #0
 8000c6c:	f000 80c1 	beq.w	8000df2 <br_i31_montymul+0x1b6>
 8000c70:	19f1      	adds	r1, r6, r7
 8000c72:	f024 0203 	bic.w	r2, r4, #3
 8000c76:	9106      	str	r1, [sp, #24]
 8000c78:	19e9      	adds	r1, r5, r7
 8000c7a:	462b      	mov	r3, r5
 8000c7c:	9105      	str	r1, [sp, #20]
 8000c7e:	eb06 0582 	add.w	r5, r6, r2, lsl #2
 8000c82:	2100      	movs	r1, #0
 8000c84:	3a04      	subs	r2, #4
 8000c86:	9101      	str	r1, [sp, #4]
 8000c88:	9207      	str	r2, [sp, #28]
 8000c8a:	9300      	str	r3, [sp, #0]
 8000c8c:	46b6      	mov	lr, r6
 8000c8e:	4647      	mov	r7, r8
 8000c90:	9b00      	ldr	r3, [sp, #0]
 8000c92:	687a      	ldr	r2, [r7, #4]
 8000c94:	f853 1f04 	ldr.w	r1, [r3, #4]!
 8000c98:	f8de 0004 	ldr.w	r0, [lr, #4]
 8000c9c:	9300      	str	r3, [sp, #0]
 8000c9e:	fb01 f202 	mul.w	r2, r1, r2
 8000ca2:	9b04      	ldr	r3, [sp, #16]
 8000ca4:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
 8000ca8:	4402      	add	r2, r0
 8000caa:	fb03 f202 	mul.w	r2, r3, r2
 8000cae:	9b03      	ldr	r3, [sp, #12]
 8000cb0:	f022 4c00 	bic.w	ip, r2, #2147483648	@ 0x80000000
 8000cb4:	2b00      	cmp	r3, #0
 8000cb6:	f000 80ae 	beq.w	8000e16 <br_i31_montymul+0x1da>
 8000cba:	4672      	mov	r2, lr
 8000cbc:	46f1      	mov	r9, lr
 8000cbe:	465e      	mov	r6, fp
 8000cc0:	4638      	mov	r0, r7
 8000cc2:	f04f 0800 	mov.w	r8, #0
 8000cc6:	9402      	str	r4, [sp, #8]
 8000cc8:	46be      	mov	lr, r7
 8000cca:	6843      	ldr	r3, [r0, #4]
 8000ccc:	6877      	ldr	r7, [r6, #4]
 8000cce:	6854      	ldr	r4, [r2, #4]
 8000cd0:	fba3 3a01 	umull	r3, sl, r3, r1
 8000cd4:	fbe7 3a0c 	umlal	r3, sl, r7, ip
 8000cd8:	191b      	adds	r3, r3, r4
 8000cda:	f14a 0400 	adc.w	r4, sl, #0
 8000cde:	eb13 0308 	adds.w	r3, r3, r8
 8000ce2:	f023 4700 	bic.w	r7, r3, #2147483648	@ 0x80000000
 8000ce6:	6017      	str	r7, [r2, #0]
 8000ce8:	ea4f 7ad3 	mov.w	sl, r3, lsr #31
 8000cec:	6883      	ldr	r3, [r0, #8]
 8000cee:	68b7      	ldr	r7, [r6, #8]
 8000cf0:	f144 0400 	adc.w	r4, r4, #0
 8000cf4:	ea4a 0a44 	orr.w	sl, sl, r4, lsl #1
 8000cf8:	fba3 3801 	umull	r3, r8, r3, r1
 8000cfc:	6894      	ldr	r4, [r2, #8]
 8000cfe:	fbe7 380c 	umlal	r3, r8, r7, ip
 8000d02:	191b      	adds	r3, r3, r4
 8000d04:	f148 0400 	adc.w	r4, r8, #0
 8000d08:	eb13 030a 	adds.w	r3, r3, sl
 8000d0c:	f023 4700 	bic.w	r7, r3, #2147483648	@ 0x80000000
 8000d10:	6057      	str	r7, [r2, #4]
 8000d12:	ea4f 78d3 	mov.w	r8, r3, lsr #31
 8000d16:	68c3      	ldr	r3, [r0, #12]
 8000d18:	68f7      	ldr	r7, [r6, #12]
 8000d1a:	f144 0400 	adc.w	r4, r4, #0
 8000d1e:	ea48 0844 	orr.w	r8, r8, r4, lsl #1
 8000d22:	fba3 3a01 	umull	r3, sl, r3, r1
 8000d26:	68d4      	ldr	r4, [r2, #12]
 8000d28:	fbe7 3a0c 	umlal	r3, sl, r7, ip
 8000d2c:	191b      	adds	r3, r3, r4
 8000d2e:	f14a 0a00 	adc.w	sl, sl, #0
 8000d32:	eb13 0308 	adds.w	r3, r3, r8
 8000d36:	f023 4400 	bic.w	r4, r3, #2147483648	@ 0x80000000
 8000d3a:	6094      	str	r4, [r2, #8]
 8000d3c:	f850 7f10 	ldr.w	r7, [r0, #16]!
 8000d40:	f14a 0a00 	adc.w	sl, sl, #0
 8000d44:	0fdc      	lsrs	r4, r3, #31
 8000d46:	f856 3f10 	ldr.w	r3, [r6, #16]!
 8000d4a:	ea44 044a 	orr.w	r4, r4, sl, lsl #1
 8000d4e:	fba7 7a01 	umull	r7, sl, r7, r1
 8000d52:	fbe3 7a0c 	umlal	r7, sl, r3, ip
 8000d56:	6913      	ldr	r3, [r2, #16]
 8000d58:	18ff      	adds	r7, r7, r3
 8000d5a:	f14a 0a00 	adc.w	sl, sl, #0
 8000d5e:	193f      	adds	r7, r7, r4
 8000d60:	f027 4300 	bic.w	r3, r7, #2147483648	@ 0x80000000
 8000d64:	60d3      	str	r3, [r2, #12]
 8000d66:	f102 0210 	add.w	r2, r2, #16
 8000d6a:	f14a 0a00 	adc.w	sl, sl, #0
 8000d6e:	0fff      	lsrs	r7, r7, #31
 8000d70:	4295      	cmp	r5, r2
 8000d72:	ea47 084a 	orr.w	r8, r7, sl, lsl #1
 8000d76:	d1a8      	bne.n	8000cca <br_i31_montymul+0x8e>
 8000d78:	9b07      	ldr	r3, [sp, #28]
 8000d7a:	9c02      	ldr	r4, [sp, #8]
 8000d7c:	1d18      	adds	r0, r3, #4
 8000d7e:	4284      	cmp	r4, r0
 8000d80:	4677      	mov	r7, lr
 8000d82:	46ce      	mov	lr, r9
 8000d84:	d923      	bls.n	8000dce <br_i31_montymul+0x192>
 8000d86:	eb0e 0680 	add.w	r6, lr, r0, lsl #2
 8000d8a:	eb0b 0a80 	add.w	sl, fp, r0, lsl #2
 8000d8e:	eb07 0980 	add.w	r9, r7, r0, lsl #2
 8000d92:	9502      	str	r5, [sp, #8]
 8000d94:	4662      	mov	r2, ip
 8000d96:	f859 3f04 	ldr.w	r3, [r9, #4]!
 8000d9a:	f85a 5f04 	ldr.w	r5, [sl, #4]!
 8000d9e:	fba3 3c01 	umull	r3, ip, r3, r1
 8000da2:	fbe5 3c02 	umlal	r3, ip, r5, r2
 8000da6:	6875      	ldr	r5, [r6, #4]
 8000da8:	195b      	adds	r3, r3, r5
 8000daa:	f14c 0c00 	adc.w	ip, ip, #0
 8000dae:	3001      	adds	r0, #1
 8000db0:	eb13 0308 	adds.w	r3, r3, r8
 8000db4:	f14c 0c00 	adc.w	ip, ip, #0
 8000db8:	ea4f 78d3 	mov.w	r8, r3, lsr #31
 8000dbc:	42a0      	cmp	r0, r4
 8000dbe:	f023 4300 	bic.w	r3, r3, #2147483648	@ 0x80000000
 8000dc2:	f846 3b04 	str.w	r3, [r6], #4
 8000dc6:	ea48 084c 	orr.w	r8, r8, ip, lsl #1
 8000dca:	d3e4      	bcc.n	8000d96 <br_i31_montymul+0x15a>
 8000dcc:	9d02      	ldr	r5, [sp, #8]
 8000dce:	9b01      	ldr	r3, [sp, #4]
 8000dd0:	4443      	add	r3, r8
 8000dd2:	f023 4200 	bic.w	r2, r3, #2147483648	@ 0x80000000
 8000dd6:	4698      	mov	r8, r3
 8000dd8:	9b06      	ldr	r3, [sp, #24]
 8000dda:	601a      	str	r2, [r3, #0]
 8000ddc:	ea4f 73d8 	mov.w	r3, r8, lsr #31
 8000de0:	9a00      	ldr	r2, [sp, #0]
 8000de2:	9301      	str	r3, [sp, #4]
 8000de4:	9b05      	ldr	r3, [sp, #20]
 8000de6:	4293      	cmp	r3, r2
 8000de8:	f47f af52 	bne.w	8000c90 <br_i31_montymul+0x54>
 8000dec:	4647      	mov	r7, r8
 8000dee:	4676      	mov	r6, lr
 8000df0:	0ffc      	lsrs	r4, r7, #31
 8000df2:	f8db 3000 	ldr.w	r3, [fp]
 8000df6:	6033      	str	r3, [r6, #0]
 8000df8:	4659      	mov	r1, fp
 8000dfa:	2200      	movs	r2, #0
 8000dfc:	4630      	mov	r0, r6
 8000dfe:	f000 f9b1 	bl	8001164 <br_i31_sub>
 8000e02:	f080 0201 	eor.w	r2, r0, #1
 8000e06:	4322      	orrs	r2, r4
 8000e08:	4659      	mov	r1, fp
 8000e0a:	4630      	mov	r0, r6
 8000e0c:	b009      	add	sp, #36	@ 0x24
 8000e0e:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000e12:	f000 b9a7 	b.w	8001164 <br_i31_sub>
 8000e16:	9803      	ldr	r0, [sp, #12]
 8000e18:	4680      	mov	r8, r0
 8000e1a:	e7b4      	b.n	8000d86 <br_i31_montymul+0x14a>

08000e1c <br_i31_mulacc>:
 8000e1c:	f8d1 c000 	ldr.w	ip, [r1]
 8000e20:	6813      	ldr	r3, [r2, #0]
 8000e22:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000e26:	095c      	lsrs	r4, r3, #5
 8000e28:	460f      	mov	r7, r1
 8000e2a:	f00c 061f 	and.w	r6, ip, #31
 8000e2e:	f003 011f 	and.w	r1, r3, #31
 8000e32:	440e      	add	r6, r1
 8000e34:	eb04 145c 	add.w	r4, r4, ip, lsr #5
 8000e38:	eb06 1444 	add.w	r4, r6, r4, lsl #5
 8000e3c:	331f      	adds	r3, #31
 8000e3e:	f1c6 061e 	rsb	r6, r6, #30
 8000e42:	eb04 74d6 	add.w	r4, r4, r6, lsr #31
 8000e46:	095b      	lsrs	r3, r3, #5
 8000e48:	4615      	mov	r5, r2
 8000e4a:	6004      	str	r4, [r0, #0]
 8000e4c:	d00e      	beq.n	8000e6c <br_i31_mulacc+0x50>
 8000e4e:	f10c 021f 	add.w	r2, ip, #31
 8000e52:	0952      	lsrs	r2, r2, #5
 8000e54:	eb00 0182 	add.w	r1, r0, r2, lsl #2
 8000e58:	eb05 0a83 	add.w	sl, r5, r3, lsl #2
 8000e5c:	ea4f 0882 	mov.w	r8, r2, lsl #2
 8000e60:	3504      	adds	r5, #4
 8000e62:	b92a      	cbnz	r2, 8000e70 <br_i31_mulacc+0x54>
 8000e64:	45aa      	cmp	sl, r5
 8000e66:	f841 2f04 	str.w	r2, [r1, #4]!
 8000e6a:	d1f9      	bne.n	8000e60 <br_i31_mulacc+0x44>
 8000e6c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000e70:	6828      	ldr	r0, [r5, #0]
 8000e72:	2400      	movs	r4, #0
 8000e74:	eba1 0c08 	sub.w	ip, r1, r8
 8000e78:	46be      	mov	lr, r7
 8000e7a:	2200      	movs	r2, #0
 8000e7c:	f85c 3f04 	ldr.w	r3, [ip, #4]!
 8000e80:	f85e 6f04 	ldr.w	r6, [lr, #4]!
 8000e84:	46a1      	mov	r9, r4
 8000e86:	fbe6 3900 	umlal	r3, r9, r6, r0
 8000e8a:	189b      	adds	r3, r3, r2
 8000e8c:	f149 0900 	adc.w	r9, r9, #0
 8000e90:	0fda      	lsrs	r2, r3, #31
 8000e92:	4561      	cmp	r1, ip
 8000e94:	f023 4300 	bic.w	r3, r3, #2147483648	@ 0x80000000
 8000e98:	f8cc 3000 	str.w	r3, [ip]
 8000e9c:	ea42 0249 	orr.w	r2, r2, r9, lsl #1
 8000ea0:	d1ec      	bne.n	8000e7c <br_i31_mulacc+0x60>
 8000ea2:	4555      	cmp	r5, sl
 8000ea4:	f841 2f04 	str.w	r2, [r1, #4]!
 8000ea8:	d0e0      	beq.n	8000e6c <br_i31_mulacc+0x50>
 8000eaa:	f855 0f04 	ldr.w	r0, [r5, #4]!
 8000eae:	e7e1      	b.n	8000e74 <br_i31_mulacc+0x58>

08000eb0 <br_i31_muladd_small>:
 8000eb0:	6813      	ldr	r3, [r2, #0]
 8000eb2:	2b00      	cmp	r3, #0
 8000eb4:	f000 80c0 	beq.w	8001038 <br_i31_muladd_small+0x188>
 8000eb8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000ebc:	2b1f      	cmp	r3, #31
 8000ebe:	b085      	sub	sp, #20
 8000ec0:	4616      	mov	r6, r2
 8000ec2:	4605      	mov	r5, r0
 8000ec4:	468a      	mov	sl, r1
 8000ec6:	f240 80b8 	bls.w	800103a <br_i31_muladd_small+0x18a>
 8000eca:	f103 041f 	add.w	r4, r3, #31
 8000ece:	0964      	lsrs	r4, r4, #5
 8000ed0:	00a1      	lsls	r1, r4, #2
 8000ed2:	1e62      	subs	r2, r4, #1
 8000ed4:	f013 081f 	ands.w	r8, r3, #31
 8000ed8:	f850 7024 	ldr.w	r7, [r0, r4, lsl #2]
 8000edc:	9101      	str	r1, [sp, #4]
 8000ede:	ea4f 0282 	mov.w	r2, r2, lsl #2
 8000ee2:	f100 0008 	add.w	r0, r0, #8
 8000ee6:	f105 0104 	add.w	r1, r5, #4
 8000eea:	f000 809b 	beq.w	8001024 <br_i31_muladd_small+0x174>
 8000eee:	f104 4b80 	add.w	fp, r4, #1073741824	@ 0x40000000
 8000ef2:	f10b 3bff 	add.w	fp, fp, #4294967295	@ 0xffffffff
 8000ef6:	f855 302b 	ldr.w	r3, [r5, fp, lsl #2]
 8000efa:	fa23 f908 	lsr.w	r9, r3, r8
 8000efe:	f1c8 031f 	rsb	r3, r8, #31
 8000f02:	fa07 f303 	lsl.w	r3, r7, r3
 8000f06:	ea49 0903 	orr.w	r9, r9, r3
 8000f0a:	f000 fac9 	bl	80014a0 <memmove>
 8000f0e:	f8c5 a004 	str.w	sl, [r5, #4]
 8000f12:	f855 3024 	ldr.w	r3, [r5, r4, lsl #2]
 8000f16:	f855 202b 	ldr.w	r2, [r5, fp, lsl #2]
 8000f1a:	f1c8 001f 	rsb	r0, r8, #31
 8000f1e:	fa03 f100 	lsl.w	r1, r3, r0
 8000f22:	f856 302b 	ldr.w	r3, [r6, fp, lsl #2]
 8000f26:	fa22 f208 	lsr.w	r2, r2, r8
 8000f2a:	fa23 f808 	lsr.w	r8, r3, r8
 8000f2e:	f856 3024 	ldr.w	r3, [r6, r4, lsl #2]
 8000f32:	4083      	lsls	r3, r0
 8000f34:	4311      	orrs	r1, r2
 8000f36:	ea48 0803 	orr.w	r8, r8, r3
 8000f3a:	f029 4900 	bic.w	r9, r9, #2147483648	@ 0x80000000
 8000f3e:	f021 4100 	bic.w	r1, r1, #2147483648	@ 0x80000000
 8000f42:	f028 4800 	bic.w	r8, r8, #2147483648	@ 0x80000000
 8000f46:	4642      	mov	r2, r8
 8000f48:	ab03      	add	r3, sp, #12
 8000f4a:	ea41 71c9 	orr.w	r1, r1, r9, lsl #31
 8000f4e:	ea4f 0059 	mov.w	r0, r9, lsr #1
 8000f52:	f000 f939 	bl	80011c8 <br_divrem>
 8000f56:	4242      	negs	r2, r0
 8000f58:	4302      	orrs	r2, r0
 8000f5a:	ea89 0808 	eor.w	r8, r9, r8
 8000f5e:	43d2      	mvns	r2, r2
 8000f60:	3801      	subs	r0, #1
 8000f62:	0fd2      	lsrs	r2, r2, #31
 8000f64:	f1c8 0300 	rsb	r3, r8, #0
 8000f68:	fb00 f202 	mul.w	r2, r0, r2
 8000f6c:	ea53 0308 	orrs.w	r3, r3, r8
 8000f70:	ea82 0200 	eor.w	r2, r2, r0
 8000f74:	bf58      	it	pl
 8000f76:	f06f 4200 	mvnpl.w	r2, #2147483648	@ 0x80000000
 8000f7a:	2c00      	cmp	r4, #0
 8000f7c:	d06a      	beq.n	8001054 <br_i31_muladd_small+0x1a4>
 8000f7e:	9b01      	ldr	r3, [sp, #4]
 8000f80:	2400      	movs	r4, #0
 8000f82:	4433      	add	r3, r6
 8000f84:	4698      	mov	r8, r3
 8000f86:	46b4      	mov	ip, r6
 8000f88:	4628      	mov	r0, r5
 8000f8a:	2101      	movs	r1, #1
 8000f8c:	46a6      	mov	lr, r4
 8000f8e:	f85c 9f04 	ldr.w	r9, [ip, #4]!
 8000f92:	f850 3f04 	ldr.w	r3, [r0, #4]!
 8000f96:	46f2      	mov	sl, lr
 8000f98:	fbe9 4a02 	umlal	r4, sl, r9, r2
 8000f9c:	f024 4b00 	bic.w	fp, r4, #2147483648	@ 0x80000000
 8000fa0:	0fe4      	lsrs	r4, r4, #31
 8000fa2:	eba3 030b 	sub.w	r3, r3, fp
 8000fa6:	ea44 044a 	orr.w	r4, r4, sl, lsl #1
 8000faa:	eb04 74d3 	add.w	r4, r4, r3, lsr #31
 8000fae:	f023 4300 	bic.w	r3, r3, #2147483648	@ 0x80000000
 8000fb2:	eba9 0a03 	sub.w	sl, r9, r3
 8000fb6:	6003      	str	r3, [r0, #0]
 8000fb8:	ea89 0903 	eor.w	r9, r9, r3
 8000fbc:	ea83 030a 	eor.w	r3, r3, sl
 8000fc0:	ea03 0309 	and.w	r3, r3, r9
 8000fc4:	ea83 030a 	eor.w	r3, r3, sl
 8000fc8:	f1c9 0a00 	rsb	sl, r9, #0
 8000fcc:	ea81 71d3 	eor.w	r1, r1, r3, lsr #31
 8000fd0:	ea4a 0909 	orr.w	r9, sl, r9
 8000fd4:	f1b9 0f00 	cmp.w	r9, #0
 8000fd8:	bfb4      	ite	lt
 8000fda:	2100      	movlt	r1, #0
 8000fdc:	f001 0101 	andge.w	r1, r1, #1
 8000fe0:	45e0      	cmp	r8, ip
 8000fe2:	ea81 71d3 	eor.w	r1, r1, r3, lsr #31
 8000fe6:	d1d2      	bne.n	8000f8e <br_i31_muladd_small+0xde>
 8000fe8:	1b3a      	subs	r2, r7, r4
 8000fea:	ea84 0302 	eor.w	r3, r4, r2
 8000fee:	ea87 0004 	eor.w	r0, r7, r4
 8000ff2:	4003      	ands	r3, r0
 8000ff4:	4053      	eors	r3, r2
 8000ff6:	0fda      	lsrs	r2, r3, #31
 8000ff8:	ea6f 73d3 	mvn.w	r3, r3, lsr #31
 8000ffc:	1be4      	subs	r4, r4, r7
 8000ffe:	4067      	eors	r7, r4
 8001000:	4007      	ands	r7, r0
 8001002:	4067      	eors	r7, r4
 8001004:	ea41 71d7 	orr.w	r1, r1, r7, lsr #31
 8001008:	ea01 0403 	and.w	r4, r1, r3
 800100c:	4628      	mov	r0, r5
 800100e:	4631      	mov	r1, r6
 8001010:	f7ff fb02 	bl	8000618 <br_i31_add>
 8001014:	4622      	mov	r2, r4
 8001016:	4631      	mov	r1, r6
 8001018:	4628      	mov	r0, r5
 800101a:	b005      	add	sp, #20
 800101c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8001020:	f000 b8a0 	b.w	8001164 <br_i31_sub>
 8001024:	f000 fa3c 	bl	80014a0 <memmove>
 8001028:	f8c5 a004 	str.w	sl, [r5, #4]
 800102c:	f855 1024 	ldr.w	r1, [r5, r4, lsl #2]
 8001030:	f856 8024 	ldr.w	r8, [r6, r4, lsl #2]
 8001034:	46b9      	mov	r9, r7
 8001036:	e786      	b.n	8000f46 <br_i31_muladd_small+0x96>
 8001038:	4770      	bx	lr
 800103a:	6840      	ldr	r0, [r0, #4]
 800103c:	6852      	ldr	r2, [r2, #4]
 800103e:	ab03      	add	r3, sp, #12
 8001040:	ea41 71c0 	orr.w	r1, r1, r0, lsl #31
 8001044:	0840      	lsrs	r0, r0, #1
 8001046:	f000 f8bf 	bl	80011c8 <br_divrem>
 800104a:	9b03      	ldr	r3, [sp, #12]
 800104c:	606b      	str	r3, [r5, #4]
 800104e:	b005      	add	sp, #20
 8001050:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001054:	4622      	mov	r2, r4
 8001056:	4638      	mov	r0, r7
 8001058:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 800105c:	2101      	movs	r1, #1
 800105e:	e7cd      	b.n	8000ffc <br_i31_muladd_small+0x14c>

08001060 <br_i31_ninv31>:
 8001060:	f1c0 0202 	rsb	r2, r0, #2
 8001064:	fb02 f300 	mul.w	r3, r2, r0
 8001068:	f1c3 0302 	rsb	r3, r3, #2
 800106c:	fb02 f303 	mul.w	r3, r2, r3
 8001070:	fb03 f200 	mul.w	r2, r3, r0
 8001074:	f1c2 0202 	rsb	r2, r2, #2
 8001078:	fb03 f202 	mul.w	r2, r3, r2
 800107c:	fb02 f300 	mul.w	r3, r2, r0
 8001080:	f1c3 0302 	rsb	r3, r3, #2
 8001084:	fb02 f303 	mul.w	r3, r2, r3
 8001088:	fb03 f200 	mul.w	r2, r3, r0
 800108c:	f000 0001 	and.w	r0, r0, #1
 8001090:	fb03 f000 	mul.w	r0, r3, r0
 8001094:	1e93      	subs	r3, r2, #2
 8001096:	fb03 f000 	mul.w	r0, r3, r0
 800109a:	f020 4000 	bic.w	r0, r0, #2147483648	@ 0x80000000
 800109e:	4770      	bx	lr

080010a0 <br_i31_reduce>:
 80010a0:	6813      	ldr	r3, [r2, #0]
 80010a2:	6003      	str	r3, [r0, #0]
 80010a4:	b3db      	cbz	r3, 800111e <br_i31_reduce+0x7e>
 80010a6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80010aa:	4617      	mov	r7, r2
 80010ac:	680a      	ldr	r2, [r1, #0]
 80010ae:	f103 081f 	add.w	r8, r3, #31
 80010b2:	f102 051f 	add.w	r5, r2, #31
 80010b6:	4293      	cmp	r3, r2
 80010b8:	4606      	mov	r6, r0
 80010ba:	ea4f 1858 	mov.w	r8, r8, lsr #5
 80010be:	f100 0004 	add.w	r0, r0, #4
 80010c2:	ea4f 1555 	mov.w	r5, r5, lsr #5
 80010c6:	d819      	bhi.n	80010fc <br_i31_reduce+0x5c>
 80010c8:	eba5 0508 	sub.w	r5, r5, r8
 80010cc:	1cab      	adds	r3, r5, #2
 80010ce:	eb01 0483 	add.w	r4, r1, r3, lsl #2
 80010d2:	f108 32ff 	add.w	r2, r8, #4294967295	@ 0xffffffff
 80010d6:	0092      	lsls	r2, r2, #2
 80010d8:	4621      	mov	r1, r4
 80010da:	f000 faab 	bl	8001634 <memcpy>
 80010de:	2300      	movs	r3, #0
 80010e0:	3501      	adds	r5, #1
 80010e2:	f846 3028 	str.w	r3, [r6, r8, lsl #2]
 80010e6:	d007      	beq.n	80010f8 <br_i31_reduce+0x58>
 80010e8:	f854 1d04 	ldr.w	r1, [r4, #-4]!
 80010ec:	463a      	mov	r2, r7
 80010ee:	4630      	mov	r0, r6
 80010f0:	f7ff fede 	bl	8000eb0 <br_i31_muladd_small>
 80010f4:	3d01      	subs	r5, #1
 80010f6:	d1f7      	bne.n	80010e8 <br_i31_reduce+0x48>
 80010f8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80010fc:	00ac      	lsls	r4, r5, #2
 80010fe:	3104      	adds	r1, #4
 8001100:	4622      	mov	r2, r4
 8001102:	f000 fa97 	bl	8001634 <memcpy>
 8001106:	45a8      	cmp	r8, r5
 8001108:	d9f6      	bls.n	80010f8 <br_i31_reduce+0x58>
 800110a:	eba8 0505 	sub.w	r5, r8, r5
 800110e:	1d20      	adds	r0, r4, #4
 8001110:	00aa      	lsls	r2, r5, #2
 8001112:	4430      	add	r0, r6
 8001114:	2100      	movs	r1, #0
 8001116:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800111a:	f000 ba3d 	b.w	8001598 <memset>
 800111e:	4770      	bx	lr

08001120 <br_i31_rshift>:
 8001120:	6803      	ldr	r3, [r0, #0]
 8001122:	331f      	adds	r3, #31
 8001124:	ea5f 1c53 	movs.w	ip, r3, lsr #5
 8001128:	d01a      	beq.n	8001160 <br_i31_rshift+0x40>
 800112a:	b570      	push	{r4, r5, r6, lr}
 800112c:	6845      	ldr	r5, [r0, #4]
 800112e:	f1bc 0f01 	cmp.w	ip, #1
 8001132:	fa25 f501 	lsr.w	r5, r5, r1
 8001136:	d010      	beq.n	800115a <br_i31_rshift+0x3a>
 8001138:	f1c1 061f 	rsb	r6, r1, #31
 800113c:	1d02      	adds	r2, r0, #4
 800113e:	eb00 0e8c 	add.w	lr, r0, ip, lsl #2
 8001142:	6854      	ldr	r4, [r2, #4]
 8001144:	fa04 f306 	lsl.w	r3, r4, r6
 8001148:	432b      	orrs	r3, r5
 800114a:	f023 4300 	bic.w	r3, r3, #2147483648	@ 0x80000000
 800114e:	f842 3b04 	str.w	r3, [r2], #4
 8001152:	4596      	cmp	lr, r2
 8001154:	fa24 f501 	lsr.w	r5, r4, r1
 8001158:	d1f3      	bne.n	8001142 <br_i31_rshift+0x22>
 800115a:	f840 502c 	str.w	r5, [r0, ip, lsl #2]
 800115e:	bd70      	pop	{r4, r5, r6, pc}
 8001160:	4770      	bx	lr
 8001162:	bf00      	nop

08001164 <br_i31_sub>:
 8001164:	6803      	ldr	r3, [r0, #0]
 8001166:	333f      	adds	r3, #63	@ 0x3f
 8001168:	2b3f      	cmp	r3, #63	@ 0x3f
 800116a:	d91a      	bls.n	80011a2 <br_i31_sub+0x3e>
 800116c:	4684      	mov	ip, r0
 800116e:	b510      	push	{r4, lr}
 8001170:	0958      	lsrs	r0, r3, #5
 8001172:	f1ac 0e04 	sub.w	lr, ip, #4
 8001176:	eb0e 0e80 	add.w	lr, lr, r0, lsl #2
 800117a:	4254      	negs	r4, r2
 800117c:	2000      	movs	r0, #0
 800117e:	f85c 2f04 	ldr.w	r2, [ip, #4]!
 8001182:	f851 3f04 	ldr.w	r3, [r1, #4]!
 8001186:	1ad3      	subs	r3, r2, r3
 8001188:	1a18      	subs	r0, r3, r0
 800118a:	f020 4300 	bic.w	r3, r0, #2147483648	@ 0x80000000
 800118e:	4053      	eors	r3, r2
 8001190:	4023      	ands	r3, r4
 8001192:	4053      	eors	r3, r2
 8001194:	45e6      	cmp	lr, ip
 8001196:	f8cc 3000 	str.w	r3, [ip]
 800119a:	ea4f 70d0 	mov.w	r0, r0, lsr #31
 800119e:	d1ee      	bne.n	800117e <br_i31_sub+0x1a>
 80011a0:	bd10      	pop	{r4, pc}
 80011a2:	2000      	movs	r0, #0
 80011a4:	4770      	bx	lr
 80011a6:	bf00      	nop

080011a8 <br_i31_to_monty>:
 80011a8:	b570      	push	{r4, r5, r6, lr}
 80011aa:	680c      	ldr	r4, [r1, #0]
 80011ac:	341f      	adds	r4, #31
 80011ae:	0964      	lsrs	r4, r4, #5
 80011b0:	d008      	beq.n	80011c4 <br_i31_to_monty+0x1c>
 80011b2:	460d      	mov	r5, r1
 80011b4:	4606      	mov	r6, r0
 80011b6:	462a      	mov	r2, r5
 80011b8:	2100      	movs	r1, #0
 80011ba:	4630      	mov	r0, r6
 80011bc:	f7ff fe78 	bl	8000eb0 <br_i31_muladd_small>
 80011c0:	3c01      	subs	r4, #1
 80011c2:	d1f8      	bne.n	80011b6 <br_i31_to_monty+0xe>
 80011c4:	bd70      	pop	{r4, r5, r6, pc}
 80011c6:	bf00      	nop

080011c8 <br_divrem>:
 80011c8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80011cc:	ea80 0502 	eor.w	r5, r0, r2
 80011d0:	461c      	mov	r4, r3
 80011d2:	426b      	negs	r3, r5
 80011d4:	432b      	orrs	r3, r5
 80011d6:	43db      	mvns	r3, r3
 80011d8:	0fdb      	lsrs	r3, r3, #31
 80011da:	fb00 f303 	mul.w	r3, r0, r3
 80011de:	4043      	eors	r3, r0
 80011e0:	2500      	movs	r5, #0
 80011e2:	201f      	movs	r0, #31
 80011e4:	f1c0 0720 	rsb	r7, r0, #32
 80011e8:	fa21 f600 	lsr.w	r6, r1, r0
 80011ec:	fa03 fc07 	lsl.w	ip, r3, r7
 80011f0:	ea4c 0c06 	orr.w	ip, ip, r6
 80011f4:	ebac 0e02 	sub.w	lr, ip, r2
 80011f8:	ea82 060e 	eor.w	r6, r2, lr
 80011fc:	ea82 0c0c 	eor.w	ip, r2, ip
 8001200:	ea0c 0c06 	and.w	ip, ip, r6
 8001204:	ea8c 0c0e 	eor.w	ip, ip, lr
 8001208:	fa23 f600 	lsr.w	r6, r3, r0
 800120c:	fa02 f800 	lsl.w	r8, r2, r0
 8001210:	f1bc 0f00 	cmp.w	ip, #0
 8001214:	bfa8      	it	ge
 8001216:	f046 0601 	orrge.w	r6, r6, #1
 800121a:	fa2e fe07 	lsr.w	lr, lr, r7
 800121e:	eba1 0c08 	sub.w	ip, r1, r8
 8001222:	4277      	negs	r7, r6
 8001224:	ea8e 0e03 	eor.w	lr, lr, r3
 8001228:	ea8c 0c01 	eor.w	ip, ip, r1
 800122c:	4086      	lsls	r6, r0
 800122e:	ea0e 0e07 	and.w	lr, lr, r7
 8001232:	ea0c 0c07 	and.w	ip, ip, r7
 8001236:	3801      	subs	r0, #1
 8001238:	ea83 030e 	eor.w	r3, r3, lr
 800123c:	ea81 010c 	eor.w	r1, r1, ip
 8001240:	ea45 0506 	orr.w	r5, r5, r6
 8001244:	d1ce      	bne.n	80011e4 <br_divrem+0x1c>
 8001246:	1a88      	subs	r0, r1, r2
 8001248:	ea82 0601 	eor.w	r6, r2, r1
 800124c:	4042      	eors	r2, r0
 800124e:	4032      	ands	r2, r6
 8001250:	4042      	eors	r2, r0
 8001252:	2a00      	cmp	r2, #0
 8001254:	bfa8      	it	ge
 8001256:	f043 0301 	orrge.w	r3, r3, #1
 800125a:	ea81 0200 	eor.w	r2, r1, r0
 800125e:	ea43 0005 	orr.w	r0, r3, r5
 8001262:	425b      	negs	r3, r3
 8001264:	4013      	ands	r3, r2
 8001266:	404b      	eors	r3, r1
 8001268:	6023      	str	r3, [r4, #0]
 800126a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800126e:	bf00      	nop

08001270 <br_rsa_i31_private>:
 8001270:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8001274:	e9d1 a402 	ldrd	sl, r4, [r1, #8]
 8001278:	f5ad 5dd3 	sub.w	sp, sp, #6752	@ 0x1a60
 800127c:	b087      	sub	sp, #28
 800127e:	694a      	ldr	r2, [r1, #20]
 8001280:	9005      	str	r0, [sp, #20]
 8001282:	460e      	mov	r6, r1
 8001284:	6909      	ldr	r1, [r1, #16]
 8001286:	b394      	cbz	r4, 80012ee <br_rsa_i31_private+0x7e>
 8001288:	4653      	mov	r3, sl
 800128a:	e001      	b.n	8001290 <br_rsa_i31_private+0x20>
 800128c:	3c01      	subs	r4, #1
 800128e:	d02d      	beq.n	80012ec <br_rsa_i31_private+0x7c>
 8001290:	469a      	mov	sl, r3
 8001292:	f813 0b01 	ldrb.w	r0, [r3], #1
 8001296:	2800      	cmp	r0, #0
 8001298:	d0f8      	beq.n	800128c <br_rsa_i31_private+0x1c>
 800129a:	2a00      	cmp	r2, #0
 800129c:	f000 80fe 	beq.w	800149c <br_rsa_i31_private+0x22c>
 80012a0:	460b      	mov	r3, r1
 80012a2:	e001      	b.n	80012a8 <br_rsa_i31_private+0x38>
 80012a4:	3a01      	subs	r2, #1
 80012a6:	d033      	beq.n	8001310 <br_rsa_i31_private+0xa0>
 80012a8:	4619      	mov	r1, r3
 80012aa:	f813 0b01 	ldrb.w	r0, [r3], #1
 80012ae:	2800      	cmp	r0, #0
 80012b0:	d0f8      	beq.n	80012a4 <br_rsa_i31_private+0x34>
 80012b2:	42a2      	cmp	r2, r4
 80012b4:	4613      	mov	r3, r2
 80012b6:	bf38      	it	cc
 80012b8:	4623      	movcc	r3, r4
 80012ba:	00db      	lsls	r3, r3, #3
 80012bc:	2b00      	cmp	r3, #0
 80012be:	dd18      	ble.n	80012f2 <br_rsa_i31_private+0x82>
 80012c0:	200b      	movs	r0, #11
 80012c2:	3b1f      	subs	r3, #31
 80012c4:	2b00      	cmp	r3, #0
 80012c6:	4605      	mov	r5, r0
 80012c8:	f100 0001 	add.w	r0, r0, #1
 80012cc:	dcf9      	bgt.n	80012c2 <br_rsa_i31_private+0x52>
 80012ce:	3502      	adds	r5, #2
 80012d0:	f025 0501 	bic.w	r5, r5, #1
 80012d4:	eb05 0345 	add.w	r3, r5, r5, lsl #1
 80012d8:	0058      	lsls	r0, r3, #1
 80012da:	f5b0 6fd2 	cmp.w	r0, #1680	@ 0x690
 80012de:	d91a      	bls.n	8001316 <br_rsa_i31_private+0xa6>
 80012e0:	2000      	movs	r0, #0
 80012e2:	f50d 5dd3 	add.w	sp, sp, #6752	@ 0x1a60
 80012e6:	b007      	add	sp, #28
 80012e8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80012ec:	469a      	mov	sl, r3
 80012ee:	2a00      	cmp	r2, #0
 80012f0:	d1d6      	bne.n	80012a0 <br_rsa_i31_private+0x30>
 80012f2:	f44f 63cc 	mov.w	r3, #1632	@ 0x660
 80012f6:	20f0      	movs	r0, #240	@ 0xf0
 80012f8:	f240 656c 	movw	r5, #1644	@ 0x66c
 80012fc:	e9cd 300a 	strd	r3, r0, [sp, #40]	@ 0x28
 8001300:	2390      	movs	r3, #144	@ 0x90
 8001302:	e9cd 3508 	strd	r3, r5, [sp, #32]
 8001306:	2760      	movs	r7, #96	@ 0x60
 8001308:	25c0      	movs	r5, #192	@ 0xc0
 800130a:	f04f 0930 	mov.w	r9, #48	@ 0x30
 800130e:	e013      	b.n	8001338 <br_rsa_i31_private+0xc8>
 8001310:	4619      	mov	r1, r3
 8001312:	4623      	mov	r3, r4
 8001314:	e7d1      	b.n	80012ba <br_rsa_i31_private+0x4a>
 8001316:	f5c5 70d2 	rsb	r0, r5, #420	@ 0x1a4
 800131a:	0080      	lsls	r0, r0, #2
 800131c:	900a      	str	r0, [sp, #40]	@ 0x28
 800131e:	eb05 0085 	add.w	r0, r5, r5, lsl #2
 8001322:	0080      	lsls	r0, r0, #2
 8001324:	900b      	str	r0, [sp, #44]	@ 0x2c
 8001326:	0098      	lsls	r0, r3, #2
 8001328:	f5c3 63d2 	rsb	r3, r3, #1680	@ 0x690
 800132c:	ea4f 0985 	mov.w	r9, r5, lsl #2
 8001330:	00ef      	lsls	r7, r5, #3
 8001332:	9008      	str	r0, [sp, #32]
 8001334:	012d      	lsls	r5, r5, #4
 8001336:	9309      	str	r3, [sp, #36]	@ 0x24
 8001338:	6873      	ldr	r3, [r6, #4]
 800133a:	f10d 0834 	add.w	r8, sp, #52	@ 0x34
 800133e:	3307      	adds	r3, #7
 8001340:	08db      	lsrs	r3, r3, #3
 8001342:	4640      	mov	r0, r8
 8001344:	eb08 0b09 	add.w	fp, r8, r9
 8001348:	9306      	str	r3, [sp, #24]
 800134a:	f7ff f9f7 	bl	800073c <br_i31_decode>
 800134e:	4622      	mov	r2, r4
 8001350:	4651      	mov	r1, sl
 8001352:	4658      	mov	r0, fp
 8001354:	f7ff f9f2 	bl	800073c <br_i31_decode>
 8001358:	f8d8 3000 	ldr.w	r3, [r8]
 800135c:	f848 3007 	str.w	r3, [r8, r7]
 8001360:	331f      	adds	r3, #31
 8001362:	4447      	add	r7, r8
 8001364:	095a      	lsrs	r2, r3, #5
 8001366:	2100      	movs	r1, #0
 8001368:	0092      	lsls	r2, r2, #2
 800136a:	1d38      	adds	r0, r7, #4
 800136c:	f000 f914 	bl	8001598 <memset>
 8001370:	465a      	mov	r2, fp
 8001372:	4641      	mov	r1, r8
 8001374:	4638      	mov	r0, r7
 8001376:	f7ff fd51 	bl	8000e1c <br_i31_mulacc>
 800137a:	9c06      	ldr	r4, [sp, #24]
 800137c:	4445      	add	r5, r8
 800137e:	463a      	mov	r2, r7
 8001380:	4621      	mov	r1, r4
 8001382:	4628      	mov	r0, r5
 8001384:	f60d 2a78 	addw	sl, sp, #2680	@ 0xa78
 8001388:	f7ff fa72 	bl	8000870 <br_i31_encode>
 800138c:	2c00      	cmp	r4, #0
 800138e:	f000 8083 	beq.w	8001498 <br_rsa_i31_private+0x228>
 8001392:	9905      	ldr	r1, [sp, #20]
 8001394:	192a      	adds	r2, r5, r4
 8001396:	4421      	add	r1, r4
 8001398:	2400      	movs	r4, #0
 800139a:	f812 0d01 	ldrb.w	r0, [r2, #-1]!
 800139e:	f811 3d01 	ldrb.w	r3, [r1, #-1]!
 80013a2:	1a1b      	subs	r3, r3, r0
 80013a4:	1b1c      	subs	r4, r3, r4
 80013a6:	42aa      	cmp	r2, r5
 80013a8:	f3c4 2400 	ubfx	r4, r4, #8, #1
 80013ac:	d1f5      	bne.n	800139a <br_rsa_i31_private+0x12a>
 80013ae:	f6aa 2a44 	subw	sl, sl, #2628	@ 0xa44
 80013b2:	464a      	mov	r2, r9
 80013b4:	4659      	mov	r1, fp
 80013b6:	4638      	mov	r0, r7
 80013b8:	f000 f872 	bl	80014a0 <memmove>
 80013bc:	f8da 0004 	ldr.w	r0, [sl, #4]
 80013c0:	f7ff fe4e 	bl	8001060 <br_i31_ninv31>
 80013c4:	e9dd a205 	ldrd	sl, r2, [sp, #20]
 80013c8:	9007      	str	r0, [sp, #28]
 80013ca:	4643      	mov	r3, r8
 80013cc:	4651      	mov	r1, sl
 80013ce:	4658      	mov	r0, fp
 80013d0:	f7ff f9e4 	bl	800079c <br_i31_decode_reduce>
 80013d4:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 80013d6:	9302      	str	r3, [sp, #8]
 80013d8:	9b08      	ldr	r3, [sp, #32]
 80013da:	4443      	add	r3, r8
 80013dc:	4699      	mov	r9, r3
 80013de:	9301      	str	r3, [sp, #4]
 80013e0:	9b07      	ldr	r3, [sp, #28]
 80013e2:	9300      	str	r3, [sp, #0]
 80013e4:	e9d6 1208 	ldrd	r1, r2, [r6, #32]
 80013e8:	4643      	mov	r3, r8
 80013ea:	4658      	mov	r0, fp
 80013ec:	f7ff fada 	bl	80009a4 <br_i31_modpow_opt>
 80013f0:	9009      	str	r0, [sp, #36]	@ 0x24
 80013f2:	6878      	ldr	r0, [r7, #4]
 80013f4:	f7ff fe34 	bl	8001060 <br_i31_ninv31>
 80013f8:	9a06      	ldr	r2, [sp, #24]
 80013fa:	9008      	str	r0, [sp, #32]
 80013fc:	463b      	mov	r3, r7
 80013fe:	4651      	mov	r1, sl
 8001400:	4648      	mov	r0, r9
 8001402:	f8cd a014 	str.w	sl, [sp, #20]
 8001406:	f7ff f9c9 	bl	800079c <br_i31_decode_reduce>
 800140a:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
 800140c:	9b08      	ldr	r3, [sp, #32]
 800140e:	9300      	str	r3, [sp, #0]
 8001410:	e9cd 5201 	strd	r5, r2, [sp, #4]
 8001414:	463b      	mov	r3, r7
 8001416:	e9d6 1206 	ldrd	r1, r2, [r6, #24]
 800141a:	4648      	mov	r0, r9
 800141c:	f7ff fac2 	bl	80009a4 <br_i31_modpow_opt>
 8001420:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
 8001422:	900a      	str	r0, [sp, #40]	@ 0x28
 8001424:	4442      	add	r2, r8
 8001426:	4692      	mov	sl, r2
 8001428:	4659      	mov	r1, fp
 800142a:	463a      	mov	r2, r7
 800142c:	4650      	mov	r0, sl
 800142e:	f7ff fe37 	bl	80010a0 <br_i31_reduce>
 8001432:	4651      	mov	r1, sl
 8001434:	2201      	movs	r2, #1
 8001436:	4648      	mov	r0, r9
 8001438:	f7ff fe94 	bl	8001164 <br_i31_sub>
 800143c:	4639      	mov	r1, r7
 800143e:	4602      	mov	r2, r0
 8001440:	4648      	mov	r0, r9
 8001442:	f7ff f8e9 	bl	8000618 <br_i31_add>
 8001446:	4639      	mov	r1, r7
 8001448:	4648      	mov	r0, r9
 800144a:	f7ff fead 	bl	80011a8 <br_i31_to_monty>
 800144e:	e9d6 120a 	ldrd	r1, r2, [r6, #40]	@ 0x28
 8001452:	463b      	mov	r3, r7
 8001454:	4628      	mov	r0, r5
 8001456:	f7ff f9a1 	bl	800079c <br_i31_decode_reduce>
 800145a:	9e08      	ldr	r6, [sp, #32]
 800145c:	9600      	str	r6, [sp, #0]
 800145e:	463b      	mov	r3, r7
 8001460:	462a      	mov	r2, r5
 8001462:	4649      	mov	r1, r9
 8001464:	4650      	mov	r0, sl
 8001466:	f7ff fbe9 	bl	8000c3c <br_i31_montymul>
 800146a:	4652      	mov	r2, sl
 800146c:	4641      	mov	r1, r8
 800146e:	4658      	mov	r0, fp
 8001470:	f7ff fcd4 	bl	8000e1c <br_i31_mulacc>
 8001474:	e9dd 0105 	ldrd	r0, r1, [sp, #20]
 8001478:	465a      	mov	r2, fp
 800147a:	f7ff f9f9 	bl	8000870 <br_i31_encode>
 800147e:	9b07      	ldr	r3, [sp, #28]
 8001480:	ea03 0004 	and.w	r0, r3, r4
 8001484:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 8001486:	4018      	ands	r0, r3
 8001488:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
 800148a:	4030      	ands	r0, r6
 800148c:	4018      	ands	r0, r3
 800148e:	f50d 5dd3 	add.w	sp, sp, #6752	@ 0x1a60
 8001492:	b007      	add	sp, #28
 8001494:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001498:	9c06      	ldr	r4, [sp, #24]
 800149a:	e788      	b.n	80013ae <br_rsa_i31_private+0x13e>
 800149c:	4623      	mov	r3, r4
 800149e:	e70c      	b.n	80012ba <br_rsa_i31_private+0x4a>

080014a0 <memmove>:
 80014a0:	4288      	cmp	r0, r1
 80014a2:	d90d      	bls.n	80014c0 <memmove+0x20>
 80014a4:	188b      	adds	r3, r1, r2
 80014a6:	4283      	cmp	r3, r0
 80014a8:	d90a      	bls.n	80014c0 <memmove+0x20>
 80014aa:	eb00 0c02 	add.w	ip, r0, r2
 80014ae:	b35a      	cbz	r2, 8001508 <memmove+0x68>
 80014b0:	4662      	mov	r2, ip
 80014b2:	f813 cd01 	ldrb.w	ip, [r3, #-1]!
 80014b6:	f802 cd01 	strb.w	ip, [r2, #-1]!
 80014ba:	4299      	cmp	r1, r3
 80014bc:	d1f9      	bne.n	80014b2 <memmove+0x12>
 80014be:	4770      	bx	lr
 80014c0:	2a0f      	cmp	r2, #15
 80014c2:	d80d      	bhi.n	80014e0 <memmove+0x40>
 80014c4:	f102 3cff 	add.w	ip, r2, #4294967295	@ 0xffffffff
 80014c8:	b1f2      	cbz	r2, 8001508 <memmove+0x68>
 80014ca:	f10c 0c01 	add.w	ip, ip, #1
 80014ce:	1e43      	subs	r3, r0, #1
 80014d0:	448c      	add	ip, r1
 80014d2:	f811 2b01 	ldrb.w	r2, [r1], #1
 80014d6:	f803 2f01 	strb.w	r2, [r3, #1]!
 80014da:	4561      	cmp	r1, ip
 80014dc:	d1f9      	bne.n	80014d2 <memmove+0x32>
 80014de:	4770      	bx	lr
 80014e0:	ea40 0301 	orr.w	r3, r0, r1
 80014e4:	079b      	lsls	r3, r3, #30
 80014e6:	b5f0      	push	{r4, r5, r6, r7, lr}
 80014e8:	460c      	mov	r4, r1
 80014ea:	d00e      	beq.n	800150a <memmove+0x6a>
 80014ec:	f102 3cff 	add.w	ip, r2, #4294967295	@ 0xffffffff
 80014f0:	4603      	mov	r3, r0
 80014f2:	f10c 0c01 	add.w	ip, ip, #1
 80014f6:	3b01      	subs	r3, #1
 80014f8:	448c      	add	ip, r1
 80014fa:	f811 2b01 	ldrb.w	r2, [r1], #1
 80014fe:	f803 2f01 	strb.w	r2, [r3, #1]!
 8001502:	4561      	cmp	r1, ip
 8001504:	d1f9      	bne.n	80014fa <memmove+0x5a>
 8001506:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001508:	4770      	bx	lr
 800150a:	f1a2 0510 	sub.w	r5, r2, #16
 800150e:	f025 050f 	bic.w	r5, r5, #15
 8001512:	f101 0e20 	add.w	lr, r1, #32
 8001516:	f101 0310 	add.w	r3, r1, #16
 800151a:	44ae      	add	lr, r5
 800151c:	f100 0c10 	add.w	ip, r0, #16
 8001520:	f853 6c10 	ldr.w	r6, [r3, #-16]
 8001524:	f84c 6c10 	str.w	r6, [ip, #-16]
 8001528:	f853 6c0c 	ldr.w	r6, [r3, #-12]
 800152c:	f84c 6c0c 	str.w	r6, [ip, #-12]
 8001530:	f853 6c08 	ldr.w	r6, [r3, #-8]
 8001534:	f84c 6c08 	str.w	r6, [ip, #-8]
 8001538:	f853 6c04 	ldr.w	r6, [r3, #-4]
 800153c:	f84c 6c04 	str.w	r6, [ip, #-4]
 8001540:	3310      	adds	r3, #16
 8001542:	4573      	cmp	r3, lr
 8001544:	f10c 0c10 	add.w	ip, ip, #16
 8001548:	d1ea      	bne.n	8001520 <memmove+0x80>
 800154a:	eb01 0c05 	add.w	ip, r1, r5
 800154e:	f10c 0110 	add.w	r1, ip, #16
 8001552:	4405      	add	r5, r0
 8001554:	f012 0f0c 	tst.w	r2, #12
 8001558:	f105 0310 	add.w	r3, r5, #16
 800155c:	468e      	mov	lr, r1
 800155e:	f002 050f 	and.w	r5, r2, #15
 8001562:	d017      	beq.n	8001594 <memmove+0xf4>
 8001564:	3d04      	subs	r5, #4
 8001566:	f025 0503 	bic.w	r5, r5, #3
 800156a:	44ac      	add	ip, r5
 800156c:	f10c 0c14 	add.w	ip, ip, #20
 8001570:	1b04      	subs	r4, r0, r4
 8001572:	680f      	ldr	r7, [r1, #0]
 8001574:	190e      	adds	r6, r1, r4
 8001576:	3104      	adds	r1, #4
 8001578:	4561      	cmp	r1, ip
 800157a:	6037      	str	r7, [r6, #0]
 800157c:	d1f9      	bne.n	8001572 <memmove+0xd2>
 800157e:	1d2c      	adds	r4, r5, #4
 8001580:	eb04 010e 	add.w	r1, r4, lr
 8001584:	4423      	add	r3, r4
 8001586:	f002 0203 	and.w	r2, r2, #3
 800158a:	f102 3cff 	add.w	ip, r2, #4294967295	@ 0xffffffff
 800158e:	2a00      	cmp	r2, #0
 8001590:	d1af      	bne.n	80014f2 <memmove+0x52>
 8001592:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001594:	462a      	mov	r2, r5
 8001596:	e7f8      	b.n	800158a <memmove+0xea>

08001598 <memset>:
 8001598:	0783      	lsls	r3, r0, #30
 800159a:	b530      	push	{r4, r5, lr}
 800159c:	d046      	beq.n	800162c <memset+0x94>
 800159e:	1884      	adds	r4, r0, r2
 80015a0:	4684      	mov	ip, r0
 80015a2:	e004      	b.n	80015ae <memset+0x16>
 80015a4:	f803 1b01 	strb.w	r1, [r3], #1
 80015a8:	079d      	lsls	r5, r3, #30
 80015aa:	d004      	beq.n	80015b6 <memset+0x1e>
 80015ac:	469c      	mov	ip, r3
 80015ae:	45a4      	cmp	ip, r4
 80015b0:	4663      	mov	r3, ip
 80015b2:	d1f7      	bne.n	80015a4 <memset+0xc>
 80015b4:	bd30      	pop	{r4, r5, pc}
 80015b6:	3a01      	subs	r2, #1
 80015b8:	4402      	add	r2, r0
 80015ba:	eba2 020c 	sub.w	r2, r2, ip
 80015be:	2a03      	cmp	r2, #3
 80015c0:	d929      	bls.n	8001616 <memset+0x7e>
 80015c2:	b2cc      	uxtb	r4, r1
 80015c4:	eb04 2404 	add.w	r4, r4, r4, lsl #8
 80015c8:	2a0f      	cmp	r2, #15
 80015ca:	eb04 4404 	add.w	r4, r4, r4, lsl #16
 80015ce:	d92f      	bls.n	8001630 <memset+0x98>
 80015d0:	f1a2 0c10 	sub.w	ip, r2, #16
 80015d4:	f02c 0c0f 	bic.w	ip, ip, #15
 80015d8:	f103 0510 	add.w	r5, r3, #16
 80015dc:	44ac      	add	ip, r5
 80015de:	e9c3 4400 	strd	r4, r4, [r3]
 80015e2:	e9c3 4402 	strd	r4, r4, [r3, #8]
 80015e6:	3310      	adds	r3, #16
 80015e8:	4563      	cmp	r3, ip
 80015ea:	d1f8      	bne.n	80015de <memset+0x46>
 80015ec:	f012 0f0c 	tst.w	r2, #12
 80015f0:	f002 0e0f 	and.w	lr, r2, #15
 80015f4:	d018      	beq.n	8001628 <memset+0x90>
 80015f6:	f02e 0c03 	bic.w	ip, lr, #3
 80015fa:	449c      	add	ip, r3
 80015fc:	f1ae 0504 	sub.w	r5, lr, #4
 8001600:	461a      	mov	r2, r3
 8001602:	f842 4b04 	str.w	r4, [r2], #4
 8001606:	4562      	cmp	r2, ip
 8001608:	d1fb      	bne.n	8001602 <memset+0x6a>
 800160a:	f025 0403 	bic.w	r4, r5, #3
 800160e:	3304      	adds	r3, #4
 8001610:	f00e 0203 	and.w	r2, lr, #3
 8001614:	4423      	add	r3, r4
 8001616:	2a00      	cmp	r2, #0
 8001618:	d0cc      	beq.n	80015b4 <memset+0x1c>
 800161a:	b2c9      	uxtb	r1, r1
 800161c:	441a      	add	r2, r3
 800161e:	f803 1b01 	strb.w	r1, [r3], #1
 8001622:	4293      	cmp	r3, r2
 8001624:	d1fb      	bne.n	800161e <memset+0x86>
 8001626:	bd30      	pop	{r4, r5, pc}
 8001628:	4672      	mov	r2, lr
 800162a:	e7f4      	b.n	8001616 <memset+0x7e>
 800162c:	4603      	mov	r3, r0
 800162e:	e7c6      	b.n	80015be <memset+0x26>
 8001630:	4696      	mov	lr, r2
 8001632:	e7e0      	b.n	80015f6 <memset+0x5e>

08001634 <memcpy>:
 8001634:	4684      	mov	ip, r0
 8001636:	ea41 0300 	orr.w	r3, r1, r0
 800163a:	f013 0303 	ands.w	r3, r3, #3
 800163e:	d16d      	bne.n	800171c <memcpy+0xe8>
 8001640:	3a40      	subs	r2, #64	@ 0x40
 8001642:	d341      	bcc.n	80016c8 <memcpy+0x94>
 8001644:	f851 3b04 	ldr.w	r3, [r1], #4
 8001648:	f840 3b04 	str.w	r3, [r0], #4
 800164c:	f851 3b04 	ldr.w	r3, [r1], #4
 8001650:	f840 3b04 	str.w	r3, [r0], #4
 8001654:	f851 3b04 	ldr.w	r3, [r1], #4
 8001658:	f840 3b04 	str.w	r3, [r0], #4
 800165c:	f851 3b04 	ldr.w	r3, [r1], #4
 8001660:	f840 3b04 	str.w	r3, [r0], #4
 8001664:	f851 3b04 	ldr.w	r3, [r1], #4
 8001668:	f840 3b04 	str.w	r3, [r0], #4
 800166c:	f851 3b04 	ldr.w	r3, [r1], #4
 8001670:	f840 3b04 	str.w	r3, [r0], #4
 8001674:	f851 3b04 	ldr.w	r3, [r1], #4
 8001678:	f840 3b04 	str.w	r3, [r0], #4
 800167c:	f851 3b04 	ldr.w	r3, [r1], #4
 8001680:	f840 3b04 	str.w	r3, [r0], #4
 8001684:	f851 3b04 	ldr.w	r3, [r1], #4
 8001688:	f840 3b04 	str.w	r3, [r0], #4
 800168c:	f851 3b04 	ldr.w	r3, [r1], #4
 8001690:	f840 3b04 	str.w	r3, [r0], #4
 8001694:	f851 3b04 	ldr.w	r3, [r1], #4
 8001698:	f840 3b04 	str.w	r3, [r0], #4
 800169c:	f851 3b04 	ldr.w	r3, [r1], #4
 80016a0:	f840 3b04 	str.w	r3, [r0], #4
 80016a4:	f851 3b04 	ldr.w	r3, [r1], #4
 80016a8:	f840 3b04 	str.w	r3, [r0], #4
 80016ac:	f851 3b04 	ldr.w	r3, [r1], #4
 80016b0:	f840 3b04 	str.w	r3, [r0], #4
 80016b4:	f851 3b04 	ldr.w	r3, [r1], #4
 80016b8:	f840 3b04 	str.w	r3, [r0], #4
 80016bc:	f851 3b04 	ldr.w	r3, [r1], #4
 80016c0:	f840 3b04 	str.w	r3, [r0], #4
 80016c4:	3a40      	subs	r2, #64	@ 0x40
 80016c6:	d2bd      	bcs.n	8001644 <memcpy+0x10>
 80016c8:	3230      	adds	r2, #48	@ 0x30
 80016ca:	d311      	bcc.n	80016f0 <memcpy+0xbc>
 80016cc:	f851 3b04 	ldr.w	r3, [r1], #4
 80016d0:	f840 3b04 	str.w	r3, [r0], #4
 80016d4:	f851 3b04 	ldr.w	r3, [r1], #4
 80016d8:	f840 3b04 	str.w	r3, [r0], #4
 80016dc:	f851 3b04 	ldr.w	r3, [r1], #4
 80016e0:	f840 3b04 	str.w	r3, [r0], #4
 80016e4:	f851 3b04 	ldr.w	r3, [r1], #4
 80016e8:	f840 3b04 	str.w	r3, [r0], #4
 80016ec:	3a10      	subs	r2, #16
 80016ee:	d2ed      	bcs.n	80016cc <memcpy+0x98>
 80016f0:	320c      	adds	r2, #12
 80016f2:	d305      	bcc.n	8001700 <memcpy+0xcc>
 80016f4:	f851 3b04 	ldr.w	r3, [r1], #4
 80016f8:	f840 3b04 	str.w	r3, [r0], #4
 80016fc:	3a04      	subs	r2, #4
 80016fe:	d2f9      	bcs.n	80016f4 <memcpy+0xc0>
 8001700:	3204      	adds	r2, #4
 8001702:	d008      	beq.n	8001716 <memcpy+0xe2>
 8001704:	07d2      	lsls	r2, r2, #31
 8001706:	bf1c      	itt	ne
 8001708:	f811 3b01 	ldrbne.w	r3, [r1], #1
 800170c:	f800 3b01 	strbne.w	r3, [r0], #1
 8001710:	d301      	bcc.n	8001716 <memcpy+0xe2>
 8001712:	880b      	ldrh	r3, [r1, #0]
 8001714:	8003      	strh	r3, [r0, #0]
 8001716:	4660      	mov	r0, ip
 8001718:	4770      	bx	lr
 800171a:	bf00      	nop
 800171c:	2a08      	cmp	r2, #8
 800171e:	d313      	bcc.n	8001748 <memcpy+0x114>
 8001720:	078b      	lsls	r3, r1, #30
 8001722:	d08d      	beq.n	8001640 <memcpy+0xc>
 8001724:	f010 0303 	ands.w	r3, r0, #3
 8001728:	d08a      	beq.n	8001640 <memcpy+0xc>
 800172a:	f1c3 0304 	rsb	r3, r3, #4
 800172e:	1ad2      	subs	r2, r2, r3
 8001730:	07db      	lsls	r3, r3, #31
 8001732:	bf1c      	itt	ne
 8001734:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8001738:	f800 3b01 	strbne.w	r3, [r0], #1
 800173c:	d380      	bcc.n	8001640 <memcpy+0xc>
 800173e:	f831 3b02 	ldrh.w	r3, [r1], #2
 8001742:	f820 3b02 	strh.w	r3, [r0], #2
 8001746:	e77b      	b.n	8001640 <memcpy+0xc>
 8001748:	3a04      	subs	r2, #4
 800174a:	d3d9      	bcc.n	8001700 <memcpy+0xcc>
 800174c:	3a01      	subs	r2, #1
 800174e:	f811 3b01 	ldrb.w	r3, [r1], #1
 8001752:	f800 3b01 	strb.w	r3, [r0], #1
 8001756:	d2f9      	bcs.n	800174c <memcpy+0x118>
 8001758:	780b      	ldrb	r3, [r1, #0]
 800175a:	7003      	strb	r3, [r0, #0]
 800175c:	784b      	ldrb	r3, [r1, #1]
 800175e:	7043      	strb	r3, [r0, #1]
 8001760:	788b      	ldrb	r3, [r1, #2]
 8001762:	7083      	strb	r3, [r0, #2]
 8001764:	4660      	mov	r0, ip
 8001766:	4770      	bx	lr

08001768 <dma_stream_reset>:
 8001768:	2318      	movs	r3, #24
 800176a:	fb11 0303 	smlabb	r3, r1, r3, r0
 800176e:	b510      	push	{r4, lr}
 8001770:	691a      	ldr	r2, [r3, #16]
 8001772:	f022 0201 	bic.w	r2, r2, #1
 8001776:	611a      	str	r2, [r3, #16]
 8001778:	2200      	movs	r2, #0
 800177a:	611a      	str	r2, [r3, #16]
 800177c:	e9c3 2206 	strd	r2, r2, [r3, #24]
 8001780:	615a      	str	r2, [r3, #20]
 8001782:	621a      	str	r2, [r3, #32]
 8001784:	2221      	movs	r2, #33	@ 0x21
 8001786:	625a      	str	r2, [r3, #36]	@ 0x24
 8001788:	f3c1 0340 	ubfx	r3, r1, #1, #1
 800178c:	011b      	lsls	r3, r3, #4
 800178e:	f001 0201 	and.w	r2, r1, #1
 8001792:	2406      	movs	r4, #6
 8001794:	fb12 3204 	smlabb	r2, r2, r4, r3
 8001798:	2903      	cmp	r1, #3
 800179a:	f04f 033d 	mov.w	r3, #61	@ 0x3d
 800179e:	fa03 f302 	lsl.w	r3, r3, r2
 80017a2:	bf95      	itete	ls
 80017a4:	6882      	ldrls	r2, [r0, #8]
 80017a6:	68c2      	ldrhi	r2, [r0, #12]
 80017a8:	4313      	orrls	r3, r2
 80017aa:	4313      	orrhi	r3, r2
 80017ac:	bf94      	ite	ls
 80017ae:	6083      	strls	r3, [r0, #8]
 80017b0:	60c3      	strhi	r3, [r0, #12]
 80017b2:	bd10      	pop	{r4, pc}

080017b4 <dma_clear_interrupt_flags>:
 80017b4:	b530      	push	{r4, r5, lr}
 80017b6:	f3c1 0440 	ubfx	r4, r1, #1, #1
 80017ba:	f001 0301 	and.w	r3, r1, #1
 80017be:	0124      	lsls	r4, r4, #4
 80017c0:	2506      	movs	r5, #6
 80017c2:	fb13 4305 	smlabb	r3, r3, r5, r4
 80017c6:	409a      	lsls	r2, r3
 80017c8:	2903      	cmp	r1, #3
 80017ca:	bf94      	ite	ls
 80017cc:	6082      	strls	r2, [r0, #8]
 80017ce:	60c2      	strhi	r2, [r0, #12]
 80017d0:	bd30      	pop	{r4, r5, pc}

080017d2 <dma_set_transfer_mode>:
 80017d2:	2318      	movs	r3, #24
 80017d4:	3010      	adds	r0, #16
 80017d6:	fb01 0103 	mla	r1, r1, r3, r0
 80017da:	2a80      	cmp	r2, #128	@ 0x80
 80017dc:	680b      	ldr	r3, [r1, #0]
 80017de:	bf0a      	itet	eq
 80017e0:	f423 2380 	biceq.w	r3, r3, #262144	@ 0x40000
 80017e4:	f023 03c0 	bicne.w	r3, r3, #192	@ 0xc0
 80017e8:	f423 73e0 	biceq.w	r3, r3, #448	@ 0x1c0
 80017ec:	4313      	orrs	r3, r2
 80017ee:	600b      	str	r3, [r1, #0]
 80017f0:	4770      	bx	lr

080017f2 <dma_set_priority>:
 80017f2:	2318      	movs	r3, #24
 80017f4:	3010      	adds	r0, #16
 80017f6:	fb01 0103 	mla	r1, r1, r3, r0
 80017fa:	680b      	ldr	r3, [r1, #0]
 80017fc:	f423 3340 	bic.w	r3, r3, #196608	@ 0x30000
 8001800:	600b      	str	r3, [r1, #0]
 8001802:	680b      	ldr	r3, [r1, #0]
 8001804:	4313      	orrs	r3, r2
 8001806:	600b      	str	r3, [r1, #0]
 8001808:	4770      	bx	lr

0800180a <dma_set_memory_size>:
 800180a:	2318      	movs	r3, #24
 800180c:	3010      	adds	r0, #16
 800180e:	fb01 0103 	mla	r1, r1, r3, r0
 8001812:	680b      	ldr	r3, [r1, #0]
 8001814:	f423 43c0 	bic.w	r3, r3, #24576	@ 0x6000
 8001818:	600b      	str	r3, [r1, #0]
 800181a:	680b      	ldr	r3, [r1, #0]
 800181c:	4313      	orrs	r3, r2
 800181e:	600b      	str	r3, [r1, #0]
 8001820:	4770      	bx	lr

08001822 <dma_set_peripheral_size>:
 8001822:	2318      	movs	r3, #24
 8001824:	3010      	adds	r0, #16
 8001826:	fb01 0103 	mla	r1, r1, r3, r0
 800182a:	680b      	ldr	r3, [r1, #0]
 800182c:	f423 53c0 	bic.w	r3, r3, #6144	@ 0x1800
 8001830:	600b      	str	r3, [r1, #0]
 8001832:	680b      	ldr	r3, [r1, #0]
 8001834:	4313      	orrs	r3, r2
 8001836:	600b      	str	r3, [r1, #0]
 8001838:	4770      	bx	lr

0800183a <dma_enable_memory_increment_mode>:
 800183a:	2318      	movs	r3, #24
 800183c:	3010      	adds	r0, #16
 800183e:	fb01 0103 	mla	r1, r1, r3, r0
 8001842:	680b      	ldr	r3, [r1, #0]
 8001844:	f443 6380 	orr.w	r3, r3, #1024	@ 0x400
 8001848:	600b      	str	r3, [r1, #0]
 800184a:	4770      	bx	lr

0800184c <dma_disable_peripheral_increment_mode>:
 800184c:	2318      	movs	r3, #24
 800184e:	3010      	adds	r0, #16
 8001850:	fb01 0103 	mla	r1, r1, r3, r0
 8001854:	680b      	ldr	r3, [r1, #0]
 8001856:	f423 7300 	bic.w	r3, r3, #512	@ 0x200
 800185a:	600b      	str	r3, [r1, #0]
 800185c:	4770      	bx	lr

0800185e <dma_channel_select>:
 800185e:	2318      	movs	r3, #24
 8001860:	3010      	adds	r0, #16
 8001862:	fb01 0103 	mla	r1, r1, r3, r0
 8001866:	680b      	ldr	r3, [r1, #0]
 8001868:	4313      	orrs	r3, r2
 800186a:	600b      	str	r3, [r1, #0]
 800186c:	4770      	bx	lr

0800186e <dma_disable_transfer_error_interrupt>:
 800186e:	2318      	movs	r3, #24
 8001870:	3010      	adds	r0, #16
 8001872:	fb01 0103 	mla	r1, r1, r3, r0
 8001876:	680b      	ldr	r3, [r1, #0]
 8001878:	f023 0304 	bic.w	r3, r3, #4
 800187c:	600b      	str	r3, [r1, #0]
 800187e:	4770      	bx	lr

08001880 <dma_disable_half_transfer_interrupt>:
 8001880:	2318      	movs	r3, #24
 8001882:	3010      	adds	r0, #16
 8001884:	fb01 0103 	mla	r1, r1, r3, r0
 8001888:	680b      	ldr	r3, [r1, #0]
 800188a:	f023 0308 	bic.w	r3, r3, #8
 800188e:	600b      	str	r3, [r1, #0]
 8001890:	4770      	bx	lr

08001892 <dma_enable_transfer_complete_interrupt>:
 8001892:	b538      	push	{r3, r4, r5, lr}
 8001894:	2220      	movs	r2, #32
 8001896:	4605      	mov	r5, r0
 8001898:	f7ff ff8c 	bl	80017b4 <dma_clear_interrupt_flags>
 800189c:	3510      	adds	r5, #16
 800189e:	2318      	movs	r3, #24
 80018a0:	fb11 5103 	smlabb	r1, r1, r3, r5
 80018a4:	680b      	ldr	r3, [r1, #0]
 80018a6:	f043 0310 	orr.w	r3, r3, #16
 80018aa:	600b      	str	r3, [r1, #0]
 80018ac:	bd38      	pop	{r3, r4, r5, pc}

080018ae <dma_disable_direct_mode_error_interrupt>:
 80018ae:	2318      	movs	r3, #24
 80018b0:	3010      	adds	r0, #16
 80018b2:	fb01 0103 	mla	r1, r1, r3, r0
 80018b6:	680b      	ldr	r3, [r1, #0]
 80018b8:	f023 0302 	bic.w	r3, r3, #2
 80018bc:	600b      	str	r3, [r1, #0]
 80018be:	4770      	bx	lr

080018c0 <dma_disable_fifo_error_interrupt>:
 80018c0:	2318      	movs	r3, #24
 80018c2:	3024      	adds	r0, #36	@ 0x24
 80018c4:	fb01 0103 	mla	r1, r1, r3, r0
 80018c8:	680b      	ldr	r3, [r1, #0]
 80018ca:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 80018ce:	600b      	str	r3, [r1, #0]
 80018d0:	4770      	bx	lr

080018d2 <dma_enable_stream>:
 80018d2:	2318      	movs	r3, #24
 80018d4:	3010      	adds	r0, #16
 80018d6:	fb01 0103 	mla	r1, r1, r3, r0
 80018da:	680b      	ldr	r3, [r1, #0]
 80018dc:	f043 0301 	orr.w	r3, r3, #1
 80018e0:	600b      	str	r3, [r1, #0]
 80018e2:	4770      	bx	lr

080018e4 <dma_disable_stream>:
 80018e4:	2318      	movs	r3, #24
 80018e6:	3010      	adds	r0, #16
 80018e8:	fb01 0103 	mla	r1, r1, r3, r0
 80018ec:	680b      	ldr	r3, [r1, #0]
 80018ee:	f023 0301 	bic.w	r3, r3, #1
 80018f2:	600b      	str	r3, [r1, #0]
 80018f4:	4770      	bx	lr

080018f6 <dma_set_peripheral_address>:
 80018f6:	2318      	movs	r3, #24
 80018f8:	fb01 0003 	mla	r0, r1, r3, r0
 80018fc:	6903      	ldr	r3, [r0, #16]
 80018fe:	07db      	lsls	r3, r3, #31
 8001900:	bf58      	it	pl
 8001902:	6182      	strpl	r2, [r0, #24]
 8001904:	4770      	bx	lr

08001906 <dma_set_memory_address>:
 8001906:	2318      	movs	r3, #24
 8001908:	fb01 0003 	mla	r0, r1, r3, r0
 800190c:	6903      	ldr	r3, [r0, #16]
 800190e:	07d9      	lsls	r1, r3, #31
 8001910:	d504      	bpl.n	800191c <dma_set_memory_address+0x16>
 8001912:	f403 2340 	and.w	r3, r3, #786432	@ 0xc0000
 8001916:	f5b3 2f40 	cmp.w	r3, #786432	@ 0xc0000
 800191a:	d100      	bne.n	800191e <dma_set_memory_address+0x18>
 800191c:	61c2      	str	r2, [r0, #28]
 800191e:	4770      	bx	lr

08001920 <dma_set_number_of_data>:
 8001920:	3014      	adds	r0, #20
 8001922:	2318      	movs	r3, #24
 8001924:	fb01 0003 	mla	r0, r1, r3, r0
 8001928:	6002      	str	r2, [r0, #0]
 800192a:	4770      	bx	lr

0800192c <flash_prefetch_enable>:
 800192c:	4a03      	ldr	r2, [pc, #12]	@ (800193c <flash_prefetch_enable+0x10>)
 800192e:	f8d2 3c00 	ldr.w	r3, [r2, #3072]	@ 0xc00
 8001932:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 8001936:	f8c2 3c00 	str.w	r3, [r2, #3072]	@ 0xc00
 800193a:	4770      	bx	lr
 800193c:	40023000 	.word	0x40023000

08001940 <flash_set_ws>:
 8001940:	4a04      	ldr	r2, [pc, #16]	@ (8001954 <flash_set_ws+0x14>)
 8001942:	f8d2 3c00 	ldr.w	r3, [r2, #3072]	@ 0xc00
 8001946:	f023 030f 	bic.w	r3, r3, #15
 800194a:	4303      	orrs	r3, r0
 800194c:	f8c2 3c00 	str.w	r3, [r2, #3072]	@ 0xc00
 8001950:	4770      	bx	lr
 8001952:	bf00      	nop
 8001954:	40023000 	.word	0x40023000

08001958 <gpio_mode_setup>:
 8001958:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800195c:	6805      	ldr	r5, [r0, #0]
 800195e:	68c4      	ldr	r4, [r0, #12]
 8001960:	2600      	movs	r6, #0
 8001962:	f04f 0e03 	mov.w	lr, #3
 8001966:	fa43 f706 	asr.w	r7, r3, r6
 800196a:	07ff      	lsls	r7, r7, #31
 800196c:	d50d      	bpl.n	800198a <gpio_mode_setup+0x32>
 800196e:	0077      	lsls	r7, r6, #1
 8001970:	fa0e fc07 	lsl.w	ip, lr, r7
 8001974:	fa01 f807 	lsl.w	r8, r1, r7
 8001978:	ea25 050c 	bic.w	r5, r5, ip
 800197c:	ea24 040c 	bic.w	r4, r4, ip
 8001980:	fa02 f707 	lsl.w	r7, r2, r7
 8001984:	ea48 0505 	orr.w	r5, r8, r5
 8001988:	433c      	orrs	r4, r7
 800198a:	3601      	adds	r6, #1
 800198c:	2e10      	cmp	r6, #16
 800198e:	d1ea      	bne.n	8001966 <gpio_mode_setup+0xe>
 8001990:	6005      	str	r5, [r0, #0]
 8001992:	60c4      	str	r4, [r0, #12]
 8001994:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08001998 <gpio_set_af>:
 8001998:	b5f0      	push	{r4, r5, r6, r7, lr}
 800199a:	6a06      	ldr	r6, [r0, #32]
 800199c:	6a45      	ldr	r5, [r0, #36]	@ 0x24
 800199e:	2300      	movs	r3, #0
 80019a0:	f04f 0c0f 	mov.w	ip, #15
 80019a4:	fa42 f403 	asr.w	r4, r2, r3
 80019a8:	07e7      	lsls	r7, r4, #31
 80019aa:	d507      	bpl.n	80019bc <gpio_set_af+0x24>
 80019ac:	009c      	lsls	r4, r3, #2
 80019ae:	fa0c f704 	lsl.w	r7, ip, r4
 80019b2:	ea26 0607 	bic.w	r6, r6, r7
 80019b6:	fa01 f404 	lsl.w	r4, r1, r4
 80019ba:	4326      	orrs	r6, r4
 80019bc:	3301      	adds	r3, #1
 80019be:	2b08      	cmp	r3, #8
 80019c0:	d1f0      	bne.n	80019a4 <gpio_set_af+0xc>
 80019c2:	2300      	movs	r3, #0
 80019c4:	f04f 0c0f 	mov.w	ip, #15
 80019c8:	f103 0408 	add.w	r4, r3, #8
 80019cc:	fa42 f404 	asr.w	r4, r2, r4
 80019d0:	07e4      	lsls	r4, r4, #31
 80019d2:	d507      	bpl.n	80019e4 <gpio_set_af+0x4c>
 80019d4:	009c      	lsls	r4, r3, #2
 80019d6:	fa0c f704 	lsl.w	r7, ip, r4
 80019da:	ea25 0507 	bic.w	r5, r5, r7
 80019de:	fa01 f404 	lsl.w	r4, r1, r4
 80019e2:	4325      	orrs	r5, r4
 80019e4:	3301      	adds	r3, #1
 80019e6:	2b08      	cmp	r3, #8
 80019e8:	d1ee      	bne.n	80019c8 <gpio_set_af+0x30>
 80019ea:	6206      	str	r6, [r0, #32]
 80019ec:	6245      	str	r5, [r0, #36]	@ 0x24
 80019ee:	bdf0      	pop	{r4, r5, r6, r7, pc}

080019f0 <rcc_periph_clock_enable>:
 80019f0:	0943      	lsrs	r3, r0, #5
 80019f2:	f103 4380 	add.w	r3, r3, #1073741824	@ 0x40000000
 80019f6:	f503 330e 	add.w	r3, r3, #145408	@ 0x23800
 80019fa:	f000 001f 	and.w	r0, r0, #31
 80019fe:	6819      	ldr	r1, [r3, #0]
 8001a00:	2201      	movs	r2, #1
 8001a02:	4082      	lsls	r2, r0
 8001a04:	430a      	orrs	r2, r1
 8001a06:	601a      	str	r2, [r3, #0]
 8001a08:	4770      	bx	lr
	...

08001a0c <rcc_is_osc_ready>:
 8001a0c:	2806      	cmp	r0, #6
 8001a0e:	d82b      	bhi.n	8001a68 <rcc_is_osc_ready+0x5c>
 8001a10:	e8df f000 	tbb	[pc, r0]
 8001a14:	0a241e04 	.word	0x0a241e04
 8001a18:	1610      	.short	0x1610
 8001a1a:	1a          	.byte	0x1a
 8001a1b:	00          	.byte	0x00
 8001a1c:	4b13      	ldr	r3, [pc, #76]	@ (8001a6c <rcc_is_osc_ready+0x60>)
 8001a1e:	f8d3 0800 	ldr.w	r0, [r3, #2048]	@ 0x800
 8001a22:	f3c0 6040 	ubfx	r0, r0, #25, #1
 8001a26:	4770      	bx	lr
 8001a28:	4b10      	ldr	r3, [pc, #64]	@ (8001a6c <rcc_is_osc_ready+0x60>)
 8001a2a:	f8d3 0800 	ldr.w	r0, [r3, #2048]	@ 0x800
 8001a2e:	f3c0 4040 	ubfx	r0, r0, #17, #1
 8001a32:	4770      	bx	lr
 8001a34:	4b0d      	ldr	r3, [pc, #52]	@ (8001a6c <rcc_is_osc_ready+0x60>)
 8001a36:	f8d3 0800 	ldr.w	r0, [r3, #2048]	@ 0x800
 8001a3a:	f3c0 0040 	ubfx	r0, r0, #1, #1
 8001a3e:	4770      	bx	lr
 8001a40:	4b0a      	ldr	r3, [pc, #40]	@ (8001a6c <rcc_is_osc_ready+0x60>)
 8001a42:	f8d3 0870 	ldr.w	r0, [r3, #2160]	@ 0x870
 8001a46:	e7f8      	b.n	8001a3a <rcc_is_osc_ready+0x2e>
 8001a48:	4b08      	ldr	r3, [pc, #32]	@ (8001a6c <rcc_is_osc_ready+0x60>)
 8001a4a:	f8d3 0874 	ldr.w	r0, [r3, #2164]	@ 0x874
 8001a4e:	e7f4      	b.n	8001a3a <rcc_is_osc_ready+0x2e>
 8001a50:	4b06      	ldr	r3, [pc, #24]	@ (8001a6c <rcc_is_osc_ready+0x60>)
 8001a52:	f8d3 0800 	ldr.w	r0, [r3, #2048]	@ 0x800
 8001a56:	f3c0 7040 	ubfx	r0, r0, #29, #1
 8001a5a:	4770      	bx	lr
 8001a5c:	4b03      	ldr	r3, [pc, #12]	@ (8001a6c <rcc_is_osc_ready+0x60>)
 8001a5e:	f8d3 0800 	ldr.w	r0, [r3, #2048]	@ 0x800
 8001a62:	f3c0 60c0 	ubfx	r0, r0, #27, #1
 8001a66:	4770      	bx	lr
 8001a68:	2000      	movs	r0, #0
 8001a6a:	4770      	bx	lr
 8001a6c:	40023000 	.word	0x40023000

08001a70 <rcc_wait_for_osc_ready>:
 8001a70:	b508      	push	{r3, lr}
 8001a72:	4602      	mov	r2, r0
 8001a74:	4610      	mov	r0, r2
 8001a76:	f7ff ffc9 	bl	8001a0c <rcc_is_osc_ready>
 8001a7a:	2800      	cmp	r0, #0
 8001a7c:	d0fa      	beq.n	8001a74 <rcc_wait_for_osc_ready+0x4>
 8001a7e:	bd08      	pop	{r3, pc}

08001a80 <rcc_osc_on>:
 8001a80:	2806      	cmp	r0, #6
 8001a82:	d80c      	bhi.n	8001a9e <rcc_osc_on+0x1e>
 8001a84:	e8df f000 	tbb	[pc, r0]
 8001a88:	0c2e2804 	.word	0x0c2e2804
 8001a8c:	1812      	.short	0x1812
 8001a8e:	20          	.byte	0x20
 8001a8f:	00          	.byte	0x00
 8001a90:	4a17      	ldr	r2, [pc, #92]	@ (8001af0 <rcc_osc_on+0x70>)
 8001a92:	f8d2 3800 	ldr.w	r3, [r2, #2048]	@ 0x800
 8001a96:	f043 7380 	orr.w	r3, r3, #16777216	@ 0x1000000
 8001a9a:	f8c2 3800 	str.w	r3, [r2, #2048]	@ 0x800
 8001a9e:	4770      	bx	lr
 8001aa0:	4a13      	ldr	r2, [pc, #76]	@ (8001af0 <rcc_osc_on+0x70>)
 8001aa2:	f8d2 3800 	ldr.w	r3, [r2, #2048]	@ 0x800
 8001aa6:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8001aaa:	e7f6      	b.n	8001a9a <rcc_osc_on+0x1a>
 8001aac:	4a10      	ldr	r2, [pc, #64]	@ (8001af0 <rcc_osc_on+0x70>)
 8001aae:	f8d2 3800 	ldr.w	r3, [r2, #2048]	@ 0x800
 8001ab2:	f043 0301 	orr.w	r3, r3, #1
 8001ab6:	e7f0      	b.n	8001a9a <rcc_osc_on+0x1a>
 8001ab8:	4a0d      	ldr	r2, [pc, #52]	@ (8001af0 <rcc_osc_on+0x70>)
 8001aba:	f8d2 3870 	ldr.w	r3, [r2, #2160]	@ 0x870
 8001abe:	f043 0301 	orr.w	r3, r3, #1
 8001ac2:	f8c2 3870 	str.w	r3, [r2, #2160]	@ 0x870
 8001ac6:	4770      	bx	lr
 8001ac8:	4a09      	ldr	r2, [pc, #36]	@ (8001af0 <rcc_osc_on+0x70>)
 8001aca:	f8d2 3874 	ldr.w	r3, [r2, #2164]	@ 0x874
 8001ace:	f043 0301 	orr.w	r3, r3, #1
 8001ad2:	f8c2 3874 	str.w	r3, [r2, #2164]	@ 0x874
 8001ad6:	4770      	bx	lr
 8001ad8:	4a05      	ldr	r2, [pc, #20]	@ (8001af0 <rcc_osc_on+0x70>)
 8001ada:	f8d2 3800 	ldr.w	r3, [r2, #2048]	@ 0x800
 8001ade:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 8001ae2:	e7da      	b.n	8001a9a <rcc_osc_on+0x1a>
 8001ae4:	4a02      	ldr	r2, [pc, #8]	@ (8001af0 <rcc_osc_on+0x70>)
 8001ae6:	f8d2 3800 	ldr.w	r3, [r2, #2048]	@ 0x800
 8001aea:	f043 6380 	orr.w	r3, r3, #67108864	@ 0x4000000
 8001aee:	e7d4      	b.n	8001a9a <rcc_osc_on+0x1a>
 8001af0:	40023000 	.word	0x40023000

08001af4 <rcc_osc_off>:
 8001af4:	2806      	cmp	r0, #6
 8001af6:	d80c      	bhi.n	8001b12 <rcc_osc_off+0x1e>
 8001af8:	e8df f000 	tbb	[pc, r0]
 8001afc:	0c2e2804 	.word	0x0c2e2804
 8001b00:	1812      	.short	0x1812
 8001b02:	20          	.byte	0x20
 8001b03:	00          	.byte	0x00
 8001b04:	4a17      	ldr	r2, [pc, #92]	@ (8001b64 <rcc_osc_off+0x70>)
 8001b06:	f8d2 3800 	ldr.w	r3, [r2, #2048]	@ 0x800
 8001b0a:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
 8001b0e:	f8c2 3800 	str.w	r3, [r2, #2048]	@ 0x800
 8001b12:	4770      	bx	lr
 8001b14:	4a13      	ldr	r2, [pc, #76]	@ (8001b64 <rcc_osc_off+0x70>)
 8001b16:	f8d2 3800 	ldr.w	r3, [r2, #2048]	@ 0x800
 8001b1a:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 8001b1e:	e7f6      	b.n	8001b0e <rcc_osc_off+0x1a>
 8001b20:	4a10      	ldr	r2, [pc, #64]	@ (8001b64 <rcc_osc_off+0x70>)
 8001b22:	f8d2 3800 	ldr.w	r3, [r2, #2048]	@ 0x800
 8001b26:	f023 0301 	bic.w	r3, r3, #1
 8001b2a:	e7f0      	b.n	8001b0e <rcc_osc_off+0x1a>
 8001b2c:	4a0d      	ldr	r2, [pc, #52]	@ (8001b64 <rcc_osc_off+0x70>)
 8001b2e:	f8d2 3870 	ldr.w	r3, [r2, #2160]	@ 0x870
 8001b32:	f023 0301 	bic.w	r3, r3, #1
 8001b36:	f8c2 3870 	str.w	r3, [r2, #2160]	@ 0x870
 8001b3a:	4770      	bx	lr
 8001b3c:	4a09      	ldr	r2, [pc, #36]	@ (8001b64 <rcc_osc_off+0x70>)
 8001b3e:	f8d2 3874 	ldr.w	r3, [r2, #2164]	@ 0x874
 8001b42:	f023 0301 	bic.w	r3, r3, #1
 8001b46:	f8c2 3874 	str.w	r3, [r2, #2164]	@ 0x874
 8001b4a:	4770      	bx	lr
 8001b4c:	4a05      	ldr	r2, [pc, #20]	@ (8001b64 <rcc_osc_off+0x70>)
 8001b4e:	f8d2 3800 	ldr.w	r3, [r2, #2048]	@ 0x800
 8001b52:	f023 5380 	bic.w	r3, r3, #268435456	@ 0x10000000
 8001b56:	e7da      	b.n	8001b0e <rcc_osc_off+0x1a>
 8001b58:	4a02      	ldr	r2, [pc, #8]	@ (8001b64 <rcc_osc_off+0x70>)
 8001b5a:	f8d2 3800 	ldr.w	r3, [r2, #2048]	@ 0x800
 8001b5e:	f023 6380 	bic.w	r3, r3, #67108864	@ 0x4000000
 8001b62:	e7d4      	b.n	8001b0e <rcc_osc_off+0x1a>
 8001b64:	40023000 	.word	0x40023000

08001b68 <rcc_set_sysclk_source>:
 8001b68:	4a04      	ldr	r2, [pc, #16]	@ (8001b7c <rcc_set_sysclk_source+0x14>)
 8001b6a:	f8d2 3808 	ldr.w	r3, [r2, #2056]	@ 0x808
 8001b6e:	f023 0303 	bic.w	r3, r3, #3
 8001b72:	4303      	orrs	r3, r0
 8001b74:	f8c2 3808 	str.w	r3, [r2, #2056]	@ 0x808
 8001b78:	4770      	bx	lr
 8001b7a:	bf00      	nop
 8001b7c:	40023000 	.word	0x40023000

08001b80 <rcc_set_ppre2>:
 8001b80:	4a04      	ldr	r2, [pc, #16]	@ (8001b94 <rcc_set_ppre2+0x14>)
 8001b82:	f8d2 3808 	ldr.w	r3, [r2, #2056]	@ 0x808
 8001b86:	f423 4360 	bic.w	r3, r3, #57344	@ 0xe000
 8001b8a:	ea43 3340 	orr.w	r3, r3, r0, lsl #13
 8001b8e:	f8c2 3808 	str.w	r3, [r2, #2056]	@ 0x808
 8001b92:	4770      	bx	lr
 8001b94:	40023000 	.word	0x40023000

08001b98 <rcc_set_ppre1>:
 8001b98:	4a04      	ldr	r2, [pc, #16]	@ (8001bac <rcc_set_ppre1+0x14>)
 8001b9a:	f8d2 3808 	ldr.w	r3, [r2, #2056]	@ 0x808
 8001b9e:	f423 53e0 	bic.w	r3, r3, #7168	@ 0x1c00
 8001ba2:	ea43 2380 	orr.w	r3, r3, r0, lsl #10
 8001ba6:	f8c2 3808 	str.w	r3, [r2, #2056]	@ 0x808
 8001baa:	4770      	bx	lr
 8001bac:	40023000 	.word	0x40023000

08001bb0 <rcc_set_hpre>:
 8001bb0:	4a04      	ldr	r2, [pc, #16]	@ (8001bc4 <rcc_set_hpre+0x14>)
 8001bb2:	f8d2 3808 	ldr.w	r3, [r2, #2056]	@ 0x808
 8001bb6:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 8001bba:	ea43 1300 	orr.w	r3, r3, r0, lsl #4
 8001bbe:	f8c2 3808 	str.w	r3, [r2, #2056]	@ 0x808
 8001bc2:	4770      	bx	lr
 8001bc4:	40023000 	.word	0x40023000

08001bc8 <rcc_set_main_pll_hsi>:
 8001bc8:	b510      	push	{r4, lr}
 8001bca:	f647 74c0 	movw	r4, #32704	@ 0x7fc0
 8001bce:	ea04 1481 	and.w	r4, r4, r1, lsl #6
 8001bd2:	f000 003f 	and.w	r0, r0, #63	@ 0x3f
 8001bd6:	061b      	lsls	r3, r3, #24
 8001bd8:	f003 6370 	and.w	r3, r3, #251658240	@ 0xf000000
 8001bdc:	4304      	orrs	r4, r0
 8001bde:	431c      	orrs	r4, r3
 8001be0:	9b02      	ldr	r3, [sp, #8]
 8001be2:	0852      	lsrs	r2, r2, #1
 8001be4:	2b02      	cmp	r3, #2
 8001be6:	f102 32ff 	add.w	r2, r2, #4294967295	@ 0xffffffff
 8001bea:	ea4f 4202 	mov.w	r2, r2, lsl #16
 8001bee:	bf38      	it	cc
 8001bf0:	2302      	movcc	r3, #2
 8001bf2:	f402 3240 	and.w	r2, r2, #196608	@ 0x30000
 8001bf6:	071b      	lsls	r3, r3, #28
 8001bf8:	f003 43e0 	and.w	r3, r3, #1879048192	@ 0x70000000
 8001bfc:	4314      	orrs	r4, r2
 8001bfe:	431c      	orrs	r4, r3
 8001c00:	4b01      	ldr	r3, [pc, #4]	@ (8001c08 <rcc_set_main_pll_hsi+0x40>)
 8001c02:	f8c3 4804 	str.w	r4, [r3, #2052]	@ 0x804
 8001c06:	bd10      	pop	{r4, pc}
 8001c08:	40023000 	.word	0x40023000

08001c0c <rcc_set_main_pll_hse>:
 8001c0c:	b510      	push	{r4, lr}
 8001c0e:	9c02      	ldr	r4, [sp, #8]
 8001c10:	2c02      	cmp	r4, #2
 8001c12:	bf38      	it	cc
 8001c14:	2402      	movcc	r4, #2
 8001c16:	0724      	lsls	r4, r4, #28
 8001c18:	061b      	lsls	r3, r3, #24
 8001c1a:	f003 6370 	and.w	r3, r3, #251658240	@ 0xf000000
 8001c1e:	f004 44e0 	and.w	r4, r4, #1879048192	@ 0x70000000
 8001c22:	0852      	lsrs	r2, r2, #1
 8001c24:	431c      	orrs	r4, r3
 8001c26:	f000 003f 	and.w	r0, r0, #63	@ 0x3f
 8001c2a:	f647 73c0 	movw	r3, #32704	@ 0x7fc0
 8001c2e:	3a01      	subs	r2, #1
 8001c30:	ea03 1381 	and.w	r3, r3, r1, lsl #6
 8001c34:	4304      	orrs	r4, r0
 8001c36:	0412      	lsls	r2, r2, #16
 8001c38:	431c      	orrs	r4, r3
 8001c3a:	f402 3240 	and.w	r2, r2, #196608	@ 0x30000
 8001c3e:	4b03      	ldr	r3, [pc, #12]	@ (8001c4c <rcc_set_main_pll_hse+0x40>)
 8001c40:	4314      	orrs	r4, r2
 8001c42:	f444 0480 	orr.w	r4, r4, #4194304	@ 0x400000
 8001c46:	f8c3 4804 	str.w	r4, [r3, #2052]	@ 0x804
 8001c4a:	bd10      	pop	{r4, pc}
 8001c4c:	40023000 	.word	0x40023000

08001c50 <rcc_clock_setup_pll>:
 8001c50:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8001c52:	4604      	mov	r4, r0
 8001c54:	2004      	movs	r0, #4
 8001c56:	f7ff ff13 	bl	8001a80 <rcc_osc_on>
 8001c5a:	f7ff ff09 	bl	8001a70 <rcc_wait_for_osc_ready>
 8001c5e:	2000      	movs	r0, #0
 8001c60:	f7ff ff82 	bl	8001b68 <rcc_set_sysclk_source>
 8001c64:	79e3      	ldrb	r3, [r4, #7]
 8001c66:	2b01      	cmp	r3, #1
 8001c68:	d104      	bne.n	8001c74 <rcc_clock_setup_pll+0x24>
 8001c6a:	2003      	movs	r0, #3
 8001c6c:	f7ff ff08 	bl	8001a80 <rcc_osc_on>
 8001c70:	f7ff fefe 	bl	8001a70 <rcc_wait_for_osc_ready>
 8001c74:	f640 001c 	movw	r0, #2076	@ 0x81c
 8001c78:	f7ff feba 	bl	80019f0 <rcc_periph_clock_enable>
 8001c7c:	7be0      	ldrb	r0, [r4, #15]
 8001c7e:	f000 f959 	bl	8001f34 <pwr_set_vos_scale>
 8001c82:	7b20      	ldrb	r0, [r4, #12]
 8001c84:	f7ff ff94 	bl	8001bb0 <rcc_set_hpre>
 8001c88:	7b60      	ldrb	r0, [r4, #13]
 8001c8a:	f7ff ff85 	bl	8001b98 <rcc_set_ppre1>
 8001c8e:	7ba0      	ldrb	r0, [r4, #14]
 8001c90:	f7ff ff76 	bl	8001b80 <rcc_set_ppre2>
 8001c94:	2000      	movs	r0, #0
 8001c96:	f7ff ff2d 	bl	8001af4 <rcc_osc_off>
 8001c9a:	79e6      	ldrb	r6, [r4, #7]
 8001c9c:	79a5      	ldrb	r5, [r4, #6]
 8001c9e:	7820      	ldrb	r0, [r4, #0]
 8001ca0:	8861      	ldrh	r1, [r4, #2]
 8001ca2:	7922      	ldrb	r2, [r4, #4]
 8001ca4:	7963      	ldrb	r3, [r4, #5]
 8001ca6:	9500      	str	r5, [sp, #0]
 8001ca8:	2e01      	cmp	r6, #1
 8001caa:	d12f      	bne.n	8001d0c <rcc_clock_setup_pll+0xbc>
 8001cac:	f7ff ffae 	bl	8001c0c <rcc_set_main_pll_hse>
 8001cb0:	2000      	movs	r0, #0
 8001cb2:	f7ff fee5 	bl	8001a80 <rcc_osc_on>
 8001cb6:	f7ff fedb 	bl	8001a70 <rcc_wait_for_osc_ready>
 8001cba:	68a3      	ldr	r3, [r4, #8]
 8001cbc:	055a      	lsls	r2, r3, #21
 8001cbe:	d528      	bpl.n	8001d12 <rcc_clock_setup_pll+0xc2>
 8001cc0:	f000 f910 	bl	8001ee4 <flash_dcache_enable>
 8001cc4:	68a3      	ldr	r3, [r4, #8]
 8001cc6:	059b      	lsls	r3, r3, #22
 8001cc8:	d526      	bpl.n	8001d18 <rcc_clock_setup_pll+0xc8>
 8001cca:	f000 f91f 	bl	8001f0c <flash_icache_enable>
 8001cce:	68a0      	ldr	r0, [r4, #8]
 8001cd0:	f7ff fe36 	bl	8001940 <flash_set_ws>
 8001cd4:	2002      	movs	r0, #2
 8001cd6:	f7ff ff47 	bl	8001b68 <rcc_set_sysclk_source>
 8001cda:	4a12      	ldr	r2, [pc, #72]	@ (8001d24 <rcc_clock_setup_pll+0xd4>)
 8001cdc:	f8d2 3808 	ldr.w	r3, [r2, #2056]	@ 0x808
 8001ce0:	f003 030c 	and.w	r3, r3, #12
 8001ce4:	2b08      	cmp	r3, #8
 8001ce6:	d1f9      	bne.n	8001cdc <rcc_clock_setup_pll+0x8c>
 8001ce8:	4b0f      	ldr	r3, [pc, #60]	@ (8001d28 <rcc_clock_setup_pll+0xd8>)
 8001cea:	6922      	ldr	r2, [r4, #16]
 8001cec:	601a      	str	r2, [r3, #0]
 8001cee:	4b0f      	ldr	r3, [pc, #60]	@ (8001d2c <rcc_clock_setup_pll+0xdc>)
 8001cf0:	6962      	ldr	r2, [r4, #20]
 8001cf2:	601a      	str	r2, [r3, #0]
 8001cf4:	4b0e      	ldr	r3, [pc, #56]	@ (8001d30 <rcc_clock_setup_pll+0xe0>)
 8001cf6:	69a2      	ldr	r2, [r4, #24]
 8001cf8:	601a      	str	r2, [r3, #0]
 8001cfa:	79e3      	ldrb	r3, [r4, #7]
 8001cfc:	2b01      	cmp	r3, #1
 8001cfe:	d10e      	bne.n	8001d1e <rcc_clock_setup_pll+0xce>
 8001d00:	2004      	movs	r0, #4
 8001d02:	b002      	add	sp, #8
 8001d04:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001d08:	f7ff bef4 	b.w	8001af4 <rcc_osc_off>
 8001d0c:	f7ff ff5c 	bl	8001bc8 <rcc_set_main_pll_hsi>
 8001d10:	e7ce      	b.n	8001cb0 <rcc_clock_setup_pll+0x60>
 8001d12:	f000 f8f1 	bl	8001ef8 <flash_dcache_disable>
 8001d16:	e7d5      	b.n	8001cc4 <rcc_clock_setup_pll+0x74>
 8001d18:	f000 f902 	bl	8001f20 <flash_icache_disable>
 8001d1c:	e7d7      	b.n	8001cce <rcc_clock_setup_pll+0x7e>
 8001d1e:	b002      	add	sp, #8
 8001d20:	bd70      	pop	{r4, r5, r6, pc}
 8001d22:	bf00      	nop
 8001d24:	40023000 	.word	0x40023000
 8001d28:	20000008 	.word	0x20000008
 8001d2c:	20000004 	.word	0x20000004
 8001d30:	20000000 	.word	0x20000000

08001d34 <rcc_get_usart_clk_freq>:
 8001d34:	4b04      	ldr	r3, [pc, #16]	@ (8001d48 <rcc_get_usart_clk_freq+0x14>)
 8001d36:	f420 6080 	bic.w	r0, r0, #1024	@ 0x400
 8001d3a:	4298      	cmp	r0, r3
 8001d3c:	bf0c      	ite	eq
 8001d3e:	4b03      	ldreq	r3, [pc, #12]	@ (8001d4c <rcc_get_usart_clk_freq+0x18>)
 8001d40:	4b03      	ldrne	r3, [pc, #12]	@ (8001d50 <rcc_get_usart_clk_freq+0x1c>)
 8001d42:	6818      	ldr	r0, [r3, #0]
 8001d44:	4770      	bx	lr
 8001d46:	bf00      	nop
 8001d48:	40011000 	.word	0x40011000
 8001d4c:	20000000 	.word	0x20000000
 8001d50:	20000004 	.word	0x20000004

08001d54 <usart_set_baudrate>:
 8001d54:	b538      	push	{r3, r4, r5, lr}
 8001d56:	460c      	mov	r4, r1
 8001d58:	4605      	mov	r5, r0
 8001d5a:	f7ff ffeb 	bl	8001d34 <rcc_get_usart_clk_freq>
 8001d5e:	eb00 0354 	add.w	r3, r0, r4, lsr #1
 8001d62:	fbb3 f3f4 	udiv	r3, r3, r4
 8001d66:	60ab      	str	r3, [r5, #8]
 8001d68:	bd38      	pop	{r3, r4, r5, pc}

08001d6a <usart_set_databits>:
 8001d6a:	68c3      	ldr	r3, [r0, #12]
 8001d6c:	2908      	cmp	r1, #8
 8001d6e:	bf0c      	ite	eq
 8001d70:	f423 5380 	biceq.w	r3, r3, #4096	@ 0x1000
 8001d74:	f443 5380 	orrne.w	r3, r3, #4096	@ 0x1000
 8001d78:	60c3      	str	r3, [r0, #12]
 8001d7a:	4770      	bx	lr

08001d7c <usart_set_stopbits>:
 8001d7c:	6903      	ldr	r3, [r0, #16]
 8001d7e:	f423 5340 	bic.w	r3, r3, #12288	@ 0x3000
 8001d82:	430b      	orrs	r3, r1
 8001d84:	6103      	str	r3, [r0, #16]
 8001d86:	4770      	bx	lr

08001d88 <usart_set_parity>:
 8001d88:	68c3      	ldr	r3, [r0, #12]
 8001d8a:	f423 63c0 	bic.w	r3, r3, #1536	@ 0x600
 8001d8e:	430b      	orrs	r3, r1
 8001d90:	60c3      	str	r3, [r0, #12]
 8001d92:	4770      	bx	lr

08001d94 <usart_set_mode>:
 8001d94:	68c3      	ldr	r3, [r0, #12]
 8001d96:	f023 030c 	bic.w	r3, r3, #12
 8001d9a:	430b      	orrs	r3, r1
 8001d9c:	60c3      	str	r3, [r0, #12]
 8001d9e:	4770      	bx	lr

08001da0 <usart_set_flow_control>:
 8001da0:	6943      	ldr	r3, [r0, #20]
 8001da2:	f423 7340 	bic.w	r3, r3, #768	@ 0x300
 8001da6:	430b      	orrs	r3, r1
 8001da8:	6143      	str	r3, [r0, #20]
 8001daa:	4770      	bx	lr

08001dac <usart_enable>:
 8001dac:	68c3      	ldr	r3, [r0, #12]
 8001dae:	f443 5300 	orr.w	r3, r3, #8192	@ 0x2000
 8001db2:	60c3      	str	r3, [r0, #12]
 8001db4:	4770      	bx	lr

08001db6 <usart_send_blocking>:
 8001db6:	b538      	push	{r3, r4, r5, lr}
 8001db8:	4604      	mov	r4, r0
 8001dba:	460d      	mov	r5, r1
 8001dbc:	f000 f82b 	bl	8001e16 <usart_wait_send_ready>
 8001dc0:	4629      	mov	r1, r5
 8001dc2:	4620      	mov	r0, r4
 8001dc4:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001dc8:	f000 b81d 	b.w	8001e06 <usart_send>

08001dcc <usart_recv_blocking>:
 8001dcc:	b510      	push	{r4, lr}
 8001dce:	4604      	mov	r4, r0
 8001dd0:	f000 f825 	bl	8001e1e <usart_wait_recv_ready>
 8001dd4:	4620      	mov	r0, r4
 8001dd6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001dda:	f000 b818 	b.w	8001e0e <usart_recv>

08001dde <usart_enable_rx_dma>:
 8001dde:	6943      	ldr	r3, [r0, #20]
 8001de0:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 8001de4:	6143      	str	r3, [r0, #20]
 8001de6:	4770      	bx	lr

08001de8 <usart_disable_rx_dma>:
 8001de8:	6943      	ldr	r3, [r0, #20]
 8001dea:	f023 0340 	bic.w	r3, r3, #64	@ 0x40
 8001dee:	6143      	str	r3, [r0, #20]
 8001df0:	4770      	bx	lr

08001df2 <usart_enable_tx_dma>:
 8001df2:	6943      	ldr	r3, [r0, #20]
 8001df4:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
 8001df8:	6143      	str	r3, [r0, #20]
 8001dfa:	4770      	bx	lr

08001dfc <usart_disable_tx_dma>:
 8001dfc:	6943      	ldr	r3, [r0, #20]
 8001dfe:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 8001e02:	6143      	str	r3, [r0, #20]
 8001e04:	4770      	bx	lr

08001e06 <usart_send>:
 8001e06:	f3c1 0108 	ubfx	r1, r1, #0, #9
 8001e0a:	6041      	str	r1, [r0, #4]
 8001e0c:	4770      	bx	lr

08001e0e <usart_recv>:
 8001e0e:	6840      	ldr	r0, [r0, #4]
 8001e10:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8001e14:	4770      	bx	lr

08001e16 <usart_wait_send_ready>:
 8001e16:	6803      	ldr	r3, [r0, #0]
 8001e18:	061b      	lsls	r3, r3, #24
 8001e1a:	d5fc      	bpl.n	8001e16 <usart_wait_send_ready>
 8001e1c:	4770      	bx	lr

08001e1e <usart_wait_recv_ready>:
 8001e1e:	6803      	ldr	r3, [r0, #0]
 8001e20:	069b      	lsls	r3, r3, #26
 8001e22:	d5fc      	bpl.n	8001e1e <usart_wait_recv_ready>
 8001e24:	4770      	bx	lr

08001e26 <blocking_handler>:
 8001e26:	e7fe      	b.n	8001e26 <blocking_handler>

08001e28 <null_handler>:
 8001e28:	4770      	bx	lr
	...

08001e2c <reset_handler>:
 8001e2c:	b538      	push	{r3, r4, r5, lr}
 8001e2e:	4a1d      	ldr	r2, [pc, #116]	@ (8001ea4 <reset_handler+0x78>)
 8001e30:	4b1d      	ldr	r3, [pc, #116]	@ (8001ea8 <reset_handler+0x7c>)
 8001e32:	491e      	ldr	r1, [pc, #120]	@ (8001eac <reset_handler+0x80>)
 8001e34:	428b      	cmp	r3, r1
 8001e36:	d320      	bcc.n	8001e7a <reset_handler+0x4e>
 8001e38:	4a1d      	ldr	r2, [pc, #116]	@ (8001eb0 <reset_handler+0x84>)
 8001e3a:	2100      	movs	r1, #0
 8001e3c:	4293      	cmp	r3, r2
 8001e3e:	d321      	bcc.n	8001e84 <reset_handler+0x58>
 8001e40:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
 8001e44:	4c1b      	ldr	r4, [pc, #108]	@ (8001eb4 <reset_handler+0x88>)
 8001e46:	f8d3 2d14 	ldr.w	r2, [r3, #3348]	@ 0xd14
 8001e4a:	4d1b      	ldr	r5, [pc, #108]	@ (8001eb8 <reset_handler+0x8c>)
 8001e4c:	f442 7200 	orr.w	r2, r2, #512	@ 0x200
 8001e50:	f8c3 2d14 	str.w	r2, [r3, #3348]	@ 0xd14
 8001e54:	f8d3 2d88 	ldr.w	r2, [r3, #3464]	@ 0xd88
 8001e58:	f442 0270 	orr.w	r2, r2, #15728640	@ 0xf00000
 8001e5c:	f8c3 2d88 	str.w	r2, [r3, #3464]	@ 0xd88
 8001e60:	42ac      	cmp	r4, r5
 8001e62:	d312      	bcc.n	8001e8a <reset_handler+0x5e>
 8001e64:	4c15      	ldr	r4, [pc, #84]	@ (8001ebc <reset_handler+0x90>)
 8001e66:	4d16      	ldr	r5, [pc, #88]	@ (8001ec0 <reset_handler+0x94>)
 8001e68:	42ac      	cmp	r4, r5
 8001e6a:	d312      	bcc.n	8001e92 <reset_handler+0x66>
 8001e6c:	f7fe f99e 	bl	80001ac <main>
 8001e70:	4c14      	ldr	r4, [pc, #80]	@ (8001ec4 <reset_handler+0x98>)
 8001e72:	4d15      	ldr	r5, [pc, #84]	@ (8001ec8 <reset_handler+0x9c>)
 8001e74:	42ac      	cmp	r4, r5
 8001e76:	d310      	bcc.n	8001e9a <reset_handler+0x6e>
 8001e78:	bd38      	pop	{r3, r4, r5, pc}
 8001e7a:	f852 0b04 	ldr.w	r0, [r2], #4
 8001e7e:	f843 0b04 	str.w	r0, [r3], #4
 8001e82:	e7d7      	b.n	8001e34 <reset_handler+0x8>
 8001e84:	f843 1b04 	str.w	r1, [r3], #4
 8001e88:	e7d8      	b.n	8001e3c <reset_handler+0x10>
 8001e8a:	f854 3b04 	ldr.w	r3, [r4], #4
 8001e8e:	4798      	blx	r3
 8001e90:	e7e6      	b.n	8001e60 <reset_handler+0x34>
 8001e92:	f854 3b04 	ldr.w	r3, [r4], #4
 8001e96:	4798      	blx	r3
 8001e98:	e7e6      	b.n	8001e68 <reset_handler+0x3c>
 8001e9a:	f854 3b04 	ldr.w	r3, [r4], #4
 8001e9e:	4798      	blx	r3
 8001ea0:	e7e8      	b.n	8001e74 <reset_handler+0x48>
 8001ea2:	bf00      	nop
 8001ea4:	08002278 	.word	0x08002278
 8001ea8:	20000000 	.word	0x20000000
 8001eac:	2000000c 	.word	0x2000000c
 8001eb0:	2000000c 	.word	0x2000000c
 8001eb4:	08002270 	.word	0x08002270
 8001eb8:	08002270 	.word	0x08002270
 8001ebc:	08002270 	.word	0x08002270
 8001ec0:	08002270 	.word	0x08002270
 8001ec4:	08002270 	.word	0x08002270
 8001ec8:	08002270 	.word	0x08002270

08001ecc <nvic_enable_irq>:
 8001ecc:	4b04      	ldr	r3, [pc, #16]	@ (8001ee0 <nvic_enable_irq+0x14>)
 8001ece:	0942      	lsrs	r2, r0, #5
 8001ed0:	eb03 0382 	add.w	r3, r3, r2, lsl #2
 8001ed4:	f000 001f 	and.w	r0, r0, #31
 8001ed8:	2201      	movs	r2, #1
 8001eda:	4082      	lsls	r2, r0
 8001edc:	601a      	str	r2, [r3, #0]
 8001ede:	4770      	bx	lr
 8001ee0:	e000e100 	.word	0xe000e100

08001ee4 <flash_dcache_enable>:
 8001ee4:	4a03      	ldr	r2, [pc, #12]	@ (8001ef4 <flash_dcache_enable+0x10>)
 8001ee6:	f8d2 3c00 	ldr.w	r3, [r2, #3072]	@ 0xc00
 8001eea:	f443 6380 	orr.w	r3, r3, #1024	@ 0x400
 8001eee:	f8c2 3c00 	str.w	r3, [r2, #3072]	@ 0xc00
 8001ef2:	4770      	bx	lr
 8001ef4:	40023000 	.word	0x40023000

08001ef8 <flash_dcache_disable>:
 8001ef8:	4a03      	ldr	r2, [pc, #12]	@ (8001f08 <flash_dcache_disable+0x10>)
 8001efa:	f8d2 3c00 	ldr.w	r3, [r2, #3072]	@ 0xc00
 8001efe:	f423 6380 	bic.w	r3, r3, #1024	@ 0x400
 8001f02:	f8c2 3c00 	str.w	r3, [r2, #3072]	@ 0xc00
 8001f06:	4770      	bx	lr
 8001f08:	40023000 	.word	0x40023000

08001f0c <flash_icache_enable>:
 8001f0c:	4a03      	ldr	r2, [pc, #12]	@ (8001f1c <flash_icache_enable+0x10>)
 8001f0e:	f8d2 3c00 	ldr.w	r3, [r2, #3072]	@ 0xc00
 8001f12:	f443 7300 	orr.w	r3, r3, #512	@ 0x200
 8001f16:	f8c2 3c00 	str.w	r3, [r2, #3072]	@ 0xc00
 8001f1a:	4770      	bx	lr
 8001f1c:	40023000 	.word	0x40023000

08001f20 <flash_icache_disable>:
 8001f20:	4a03      	ldr	r2, [pc, #12]	@ (8001f30 <flash_icache_disable+0x10>)
 8001f22:	f8d2 3c00 	ldr.w	r3, [r2, #3072]	@ 0xc00
 8001f26:	f423 7300 	bic.w	r3, r3, #512	@ 0x200
 8001f2a:	f8c2 3c00 	str.w	r3, [r2, #3072]	@ 0xc00
 8001f2e:	4770      	bx	lr
 8001f30:	40023000 	.word	0x40023000

08001f34 <pwr_set_vos_scale>:
 8001f34:	4a02      	ldr	r2, [pc, #8]	@ (8001f40 <pwr_set_vos_scale+0xc>)
 8001f36:	6813      	ldr	r3, [r2, #0]
 8001f38:	f360 338f 	bfi	r3, r0, #14, #2
 8001f3c:	6013      	str	r3, [r2, #0]
 8001f3e:	4770      	bx	lr
 8001f40:	40007000 	.word	0x40007000
 8001f44:	31303030 	.word	0x31303030
 8001f48:	46464646 	.word	0x46464646
 8001f4c:	46464646 	.word	0x46464646
 8001f50:	46464646 	.word	0x46464646
 8001f54:	46464646 	.word	0x46464646
 8001f58:	46464646 	.word	0x46464646
 8001f5c:	46464646 	.word	0x46464646
 8001f60:	46464646 	.word	0x46464646
 8001f64:	46464646 	.word	0x46464646
 8001f68:	46464646 	.word	0x46464646
 8001f6c:	46464646 	.word	0x46464646
 8001f70:	46464646 	.word	0x46464646
 8001f74:	46464646 	.word	0x46464646
 8001f78:	46464646 	.word	0x46464646
 8001f7c:	46464646 	.word	0x46464646
 8001f80:	46464646 	.word	0x46464646
 8001f84:	46464646 	.word	0x46464646
 8001f88:	46464646 	.word	0x46464646
 8001f8c:	46464646 	.word	0x46464646
 8001f90:	46464646 	.word	0x46464646
 8001f94:	46464646 	.word	0x46464646
 8001f98:	46464646 	.word	0x46464646
 8001f9c:	46464646 	.word	0x46464646
 8001fa0:	46464646 	.word	0x46464646
 8001fa4:	46464646 	.word	0x46464646
 8001fa8:	46464646 	.word	0x46464646
 8001fac:	46464646 	.word	0x46464646
 8001fb0:	46464646 	.word	0x46464646
 8001fb4:	46464646 	.word	0x46464646
 8001fb8:	46464646 	.word	0x46464646
 8001fbc:	46464646 	.word	0x46464646
 8001fc0:	46464646 	.word	0x46464646
 8001fc4:	46464646 	.word	0x46464646
 8001fc8:	46464646 	.word	0x46464646
 8001fcc:	46464646 	.word	0x46464646
 8001fd0:	46464646 	.word	0x46464646
 8001fd4:	46464646 	.word	0x46464646
 8001fd8:	46464646 	.word	0x46464646
 8001fdc:	46464646 	.word	0x46464646
 8001fe0:	46464646 	.word	0x46464646
 8001fe4:	46464646 	.word	0x46464646
 8001fe8:	46464646 	.word	0x46464646
 8001fec:	46464646 	.word	0x46464646
 8001ff0:	46464646 	.word	0x46464646
 8001ff4:	46464646 	.word	0x46464646
 8001ff8:	46464646 	.word	0x46464646
 8001ffc:	30333030 	.word	0x30333030
 8002000:	30333132 	.word	0x30333132
 8002004:	36303930 	.word	0x36303930
 8002008:	42323530 	.word	0x42323530
 800200c:	33304530 	.word	0x33304530
 8002010:	41313230 	.word	0x41313230
 8002014:	30303530 	.word	0x30303530
 8002018:	34313430 	.word	0x34313430
 800201c:	41343941 	.word	0x41343941
 8002020:	35454638 	.word	0x35454638
 8002024:	31424343 	.word	0x31424343
 8002028:	36414239 	.word	0x36414239
 800202c:	43344331 	.word	0x43344331
 8002030:	33373830 	.word	0x33373830
 8002034:	31393344 	.word	0x31393344
 8002038:	37383945 	.word	0x37383945
 800203c:	46323839 	.word	0x46323839
 8002040:	33444242 	.word	0x33444242
 8002044:	00000000 	.word	0x00000000

08002048 <RSA_SK>:
 8002048:	080021d4 00000400 08002190 00000040     .!.......!..@...
 8002058:	08002150 00000040 08002110 00000040     P!..@....!..@...
 8002068:	080020d0 00000040 08002090 00000040     . ..@.... ..@...
 8002078:	080021d0 00000003 00000000 00000000     .!..............
	...

08002090 <RSA_IQ>:
 8002090:	7904ebe8 de79c1a5 0ba149d5 550eb948     ...y..y..I..H..U
 80020a0:	ee542c74 c201b0a8 473e3cd2 3dc87c3a     t,T......<>G:|.=
 80020b0:	4d54332e 74412940 0993e1ba 4d1be0ec     .3TM@)At.......M
 80020c0:	4aca2a1f bee65f0b c9c40a59 e1ac82d9     .*.J._..Y.......

080020d0 <RSA_DQ>:
 80020d0:	984bc029 70d313fd 241dae99 fb3a5a83     ).K....p...$.Z:.
 80020e0:	b65fe31f 865cc97d 86c8b4d3 c330e8e9     .._.}.\.......0.
 80020f0:	ad6c4da4 7275b5a4 e994c196 04aad1c4     .Ml...ur........
 8002100:	201b337c 667cd3eb 8a53f472 cdf9b20a     |3. ..|fr.S.....

08002110 <RSA_DP>:
 8002110:	60be97af 3683ce0f 2ed92d51 c6394122     ...`...6Q-.."A9.
 8002120:	cfa4945c 9cfabd28 dee9d63b 3f24e356     \...(...;...V.$?
 8002130:	ca1431e1 af1b55ba 35dd6d71 a71f1c0c     .1...U..qm.5....
 8002140:	afdb3e2c 7f2ad8a6 b4e8e201 61dbfaf5     ,>....*........a

08002150 <RSA_Q>:
 8002150:	bf920aca f62eb058 48b15066 6c864229     ....X...fP.H)B.l
 8002160:	b87e0698 c4fb4fb5 9136c3f3 e9dbb607     ..~..O....6.....
 8002170:	7d513c56 a90aecb5 d8f9667c 94d2de25     V<Q}....|f..%...
 8002180:	93f1585a 275ff0e4 cac783bd 55b26a48     ZX...._'....Hj.U

08002190 <RSA_P>:
 8002190:	666fe7f2 d403c42e e1cc2489 82013fcd     ..of.....$...?..
 80021a0:	44affbc1 aa0eccfa 65a9749d 874cedef     ...D.....t.e..L.
 80021b0:	eac6b3f0 4ede8561 9f5ab266 66c5417a     ....a..Nf.Z.zA.f
 80021c0:	f088df57 7ec7f2b5 962155e6 57abd883     W......~.U!....W

080021d0 <RSA_E>:
 80021d0:	00010001                                ....

080021d4 <RSA_N>:
 80021d4:	2ea6b4bf 8d9c3f87 7b2ec4a0 b00f3659     .....?.....{Y6..
 80021e4:	4925e1ff b036e6e5 6b08c248 51c0a777     ..%I..6.H..kw..Q
 80021f4:	a9063566 7f17df59 e5b4f615 3c72ee44     f5..Y.......D.r<
 8002204:	c9521153 924f61c9 43706433 7f3ff107     S.R..aO.3dpC..?.
 8002214:	c1f0ac15 c0557d54 cc9edc29 72111de4     ....T}U.)......r
 8002224:	70d2f445 1fb234fc f06aadf3 f81156e5     E..p.4....j..V..
 8002234:	048b3a0c d9777c46 be401f41 239d8093     .:..F|w.A.@....#
 8002244:	26128075 dd1c725a 332ab347 e36119d8     u..&Zr..G.*3..a.

08002254 <benchmarkclock>:
 8002254:	00c00008 01000408 00000600 00000400     ................
 8002264:	0a037a00 00b71b00 016e3600              .z.......6n.
