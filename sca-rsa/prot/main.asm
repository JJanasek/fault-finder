
main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vector_table>:
 8000000:	00 00 01 10 21 40 00 08 1d 40 00 08 1b 40 00 08     ....!@...@...@..
 8000010:	1b 40 00 08 1b 40 00 08 1b 40 00 08 00 00 00 00     .@...@...@......
	...
 800002c:	1d 40 00 08 1d 40 00 08 00 00 00 00 1d 40 00 08     .@...@.......@..
 800003c:	1d 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..
 800004c:	1b 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..
 800005c:	1b 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..
 800006c:	1b 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..
 800007c:	1b 40 00 08 7d 05 00 08 a5 05 00 08 1b 40 00 08     .@..}........@..
 800008c:	1b 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..
 800009c:	1b 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..
 80000ac:	1b 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..
 80000bc:	1b 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..
 80000cc:	1b 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..
 80000dc:	1b 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..
 80000ec:	1b 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..
 80000fc:	1b 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..
 800010c:	1b 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..
 800011c:	1b 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..
 800012c:	1b 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..
 800013c:	1b 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..
 800014c:	1b 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..
 800015c:	1b 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..
 800016c:	1b 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..
 800017c:	1b 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..
 800018c:	1b 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..
 800019c:	1b 40 00 08 1b 40 00 08 1b 40 00 08 1b 40 00 08     .@...@...@...@..

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
 80001ec:	f002 fa2a 	bl	8002644 <br_rsa_i31_private_blind_mod_key_FI>
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
 800020c:	08004138 	.word	0x08004138
 8000210:	08004240 	.word	0x08004240

08000214 <clock_setup>:
 8000214:	b508      	push	{r3, lr}
 8000216:	480f      	ldr	r0, [pc, #60]	@ (8000254 <clock_setup+0x40>)
 8000218:	f003 fe14 	bl	8003e44 <rcc_clock_setup_pll>
 800021c:	f44f 60c0 	mov.w	r0, #1536	@ 0x600
 8000220:	f003 fce0 	bl	8003be4 <rcc_periph_clock_enable>
 8000224:	f640 0011 	movw	r0, #2065	@ 0x811
 8000228:	f003 fcdc 	bl	8003be4 <rcc_periph_clock_enable>
 800022c:	f240 6002 	movw	r0, #1538	@ 0x602
 8000230:	f003 fcd8 	bl	8003be4 <rcc_periph_clock_enable>
 8000234:	f640 0013 	movw	r0, #2067	@ 0x813
 8000238:	f003 fcd4 	bl	8003be4 <rcc_periph_clock_enable>
 800023c:	f240 6015 	movw	r0, #1557	@ 0x615
 8000240:	f003 fcd0 	bl	8003be4 <rcc_periph_clock_enable>
 8000244:	f240 6086 	movw	r0, #1670	@ 0x686
 8000248:	f003 fccc 	bl	8003be4 <rcc_periph_clock_enable>
 800024c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000250:	f003 bc66 	b.w	8003b20 <flash_prefetch_enable>
 8000254:	0800444c 	.word	0x0800444c

08000258 <gpio_setup>:
 8000258:	b508      	push	{r3, lr}
 800025a:	480d      	ldr	r0, [pc, #52]	@ (8000290 <gpio_setup+0x38>)
 800025c:	230c      	movs	r3, #12
 800025e:	2200      	movs	r2, #0
 8000260:	2102      	movs	r1, #2
 8000262:	f003 fc73 	bl	8003b4c <gpio_mode_setup>
 8000266:	480a      	ldr	r0, [pc, #40]	@ (8000290 <gpio_setup+0x38>)
 8000268:	220c      	movs	r2, #12
 800026a:	2107      	movs	r1, #7
 800026c:	f003 fc8e 	bl	8003b8c <gpio_set_af>
 8000270:	4808      	ldr	r0, [pc, #32]	@ (8000294 <gpio_setup+0x3c>)
 8000272:	f44f 6380 	mov.w	r3, #1024	@ 0x400
 8000276:	2200      	movs	r2, #0
 8000278:	2102      	movs	r1, #2
 800027a:	f003 fc67 	bl	8003b4c <gpio_mode_setup>
 800027e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000282:	4804      	ldr	r0, [pc, #16]	@ (8000294 <gpio_setup+0x3c>)
 8000284:	f44f 6280 	mov.w	r2, #1024	@ 0x400
 8000288:	2108      	movs	r1, #8
 800028a:	f003 bc7f 	b.w	8003b8c <gpio_set_af>
 800028e:	bf00      	nop
 8000290:	40020000 	.word	0x40020000
 8000294:	40020800 	.word	0x40020800

08000298 <usart_setup>:
 8000298:	b510      	push	{r4, lr}
 800029a:	4601      	mov	r1, r0
 800029c:	4604      	mov	r4, r0
 800029e:	481b      	ldr	r0, [pc, #108]	@ (800030c <usart_setup+0x74>)
 80002a0:	f003 fe52 	bl	8003f48 <usart_set_baudrate>
 80002a4:	4819      	ldr	r0, [pc, #100]	@ (800030c <usart_setup+0x74>)
 80002a6:	2108      	movs	r1, #8
 80002a8:	f003 fe59 	bl	8003f5e <usart_set_databits>
 80002ac:	4817      	ldr	r0, [pc, #92]	@ (800030c <usart_setup+0x74>)
 80002ae:	2100      	movs	r1, #0
 80002b0:	f003 fe5e 	bl	8003f70 <usart_set_stopbits>
 80002b4:	4815      	ldr	r0, [pc, #84]	@ (800030c <usart_setup+0x74>)
 80002b6:	210c      	movs	r1, #12
 80002b8:	f003 fe66 	bl	8003f88 <usart_set_mode>
 80002bc:	4813      	ldr	r0, [pc, #76]	@ (800030c <usart_setup+0x74>)
 80002be:	2100      	movs	r1, #0
 80002c0:	f003 fe5c 	bl	8003f7c <usart_set_parity>
 80002c4:	2100      	movs	r1, #0
 80002c6:	4811      	ldr	r0, [pc, #68]	@ (800030c <usart_setup+0x74>)
 80002c8:	f003 fe64 	bl	8003f94 <usart_set_flow_control>
 80002cc:	480f      	ldr	r0, [pc, #60]	@ (800030c <usart_setup+0x74>)
 80002ce:	f003 fe67 	bl	8003fa0 <usart_enable>
 80002d2:	4621      	mov	r1, r4
 80002d4:	480e      	ldr	r0, [pc, #56]	@ (8000310 <usart_setup+0x78>)
 80002d6:	f003 fe37 	bl	8003f48 <usart_set_baudrate>
 80002da:	480d      	ldr	r0, [pc, #52]	@ (8000310 <usart_setup+0x78>)
 80002dc:	2108      	movs	r1, #8
 80002de:	f003 fe3e 	bl	8003f5e <usart_set_databits>
 80002e2:	480b      	ldr	r0, [pc, #44]	@ (8000310 <usart_setup+0x78>)
 80002e4:	2100      	movs	r1, #0
 80002e6:	f003 fe43 	bl	8003f70 <usart_set_stopbits>
 80002ea:	4809      	ldr	r0, [pc, #36]	@ (8000310 <usart_setup+0x78>)
 80002ec:	2108      	movs	r1, #8
 80002ee:	f003 fe4b 	bl	8003f88 <usart_set_mode>
 80002f2:	4807      	ldr	r0, [pc, #28]	@ (8000310 <usart_setup+0x78>)
 80002f4:	2100      	movs	r1, #0
 80002f6:	f003 fe41 	bl	8003f7c <usart_set_parity>
 80002fa:	4805      	ldr	r0, [pc, #20]	@ (8000310 <usart_setup+0x78>)
 80002fc:	2100      	movs	r1, #0
 80002fe:	f003 fe49 	bl	8003f94 <usart_set_flow_control>
 8000302:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000306:	4802      	ldr	r0, [pc, #8]	@ (8000310 <usart_setup+0x78>)
 8000308:	f003 be4a 	b.w	8003fa0 <usart_enable>
 800030c:	40004400 	.word	0x40004400
 8000310:	40004c00 	.word	0x40004c00

08000314 <dma_request_setup>:
 8000314:	b508      	push	{r3, lr}
 8000316:	2105      	movs	r1, #5
 8000318:	481e      	ldr	r0, [pc, #120]	@ (8000394 <dma_request_setup+0x80>)
 800031a:	f003 fb1f 	bl	800395c <dma_stream_reset>
 800031e:	2010      	movs	r0, #16
 8000320:	f003 fece 	bl	80040c0 <nvic_enable_irq>
 8000324:	4a1c      	ldr	r2, [pc, #112]	@ (8000398 <dma_request_setup+0x84>)
 8000326:	481b      	ldr	r0, [pc, #108]	@ (8000394 <dma_request_setup+0x80>)
 8000328:	2105      	movs	r1, #5
 800032a:	f003 fbde 	bl	8003aea <dma_set_peripheral_address>
 800032e:	4819      	ldr	r0, [pc, #100]	@ (8000394 <dma_request_setup+0x80>)
 8000330:	2200      	movs	r2, #0
 8000332:	2105      	movs	r1, #5
 8000334:	f003 fb47 	bl	80039c6 <dma_set_transfer_mode>
 8000338:	4816      	ldr	r0, [pc, #88]	@ (8000394 <dma_request_setup+0x80>)
 800033a:	2200      	movs	r2, #0
 800033c:	2105      	movs	r1, #5
 800033e:	f003 fb6a 	bl	8003a16 <dma_set_peripheral_size>
 8000342:	4814      	ldr	r0, [pc, #80]	@ (8000394 <dma_request_setup+0x80>)
 8000344:	2200      	movs	r2, #0
 8000346:	2105      	movs	r1, #5
 8000348:	f003 fb59 	bl	80039fe <dma_set_memory_size>
 800034c:	f44f 3240 	mov.w	r2, #196608	@ 0x30000
 8000350:	4810      	ldr	r0, [pc, #64]	@ (8000394 <dma_request_setup+0x80>)
 8000352:	2105      	movs	r1, #5
 8000354:	f003 fb47 	bl	80039e6 <dma_set_priority>
 8000358:	480e      	ldr	r0, [pc, #56]	@ (8000394 <dma_request_setup+0x80>)
 800035a:	2100      	movs	r1, #0
 800035c:	f003 fb70 	bl	8003a40 <dma_disable_peripheral_increment_mode>
 8000360:	480c      	ldr	r0, [pc, #48]	@ (8000394 <dma_request_setup+0x80>)
 8000362:	2105      	movs	r1, #5
 8000364:	f003 fb63 	bl	8003a2e <dma_enable_memory_increment_mode>
 8000368:	480a      	ldr	r0, [pc, #40]	@ (8000394 <dma_request_setup+0x80>)
 800036a:	2105      	movs	r1, #5
 800036c:	f003 fb79 	bl	8003a62 <dma_disable_transfer_error_interrupt>
 8000370:	4808      	ldr	r0, [pc, #32]	@ (8000394 <dma_request_setup+0x80>)
 8000372:	2105      	movs	r1, #5
 8000374:	f003 fb7e 	bl	8003a74 <dma_disable_half_transfer_interrupt>
 8000378:	4806      	ldr	r0, [pc, #24]	@ (8000394 <dma_request_setup+0x80>)
 800037a:	2105      	movs	r1, #5
 800037c:	f003 fb91 	bl	8003aa2 <dma_disable_direct_mode_error_interrupt>
 8000380:	4804      	ldr	r0, [pc, #16]	@ (8000394 <dma_request_setup+0x80>)
 8000382:	2105      	movs	r1, #5
 8000384:	f003 fb96 	bl	8003ab4 <dma_disable_fifo_error_interrupt>
 8000388:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800038c:	4801      	ldr	r0, [pc, #4]	@ (8000394 <dma_request_setup+0x80>)
 800038e:	2105      	movs	r1, #5
 8000390:	f003 bb79 	b.w	8003a86 <dma_enable_transfer_complete_interrupt>
 8000394:	40026000 	.word	0x40026000
 8000398:	40004404 	.word	0x40004404

0800039c <dma_transmit_setup>:
 800039c:	b508      	push	{r3, lr}
 800039e:	2106      	movs	r1, #6
 80003a0:	481e      	ldr	r0, [pc, #120]	@ (800041c <dma_transmit_setup+0x80>)
 80003a2:	f003 fadb 	bl	800395c <dma_stream_reset>
 80003a6:	2011      	movs	r0, #17
 80003a8:	f003 fe8a 	bl	80040c0 <nvic_enable_irq>
 80003ac:	4a1c      	ldr	r2, [pc, #112]	@ (8000420 <dma_transmit_setup+0x84>)
 80003ae:	481b      	ldr	r0, [pc, #108]	@ (800041c <dma_transmit_setup+0x80>)
 80003b0:	2106      	movs	r1, #6
 80003b2:	f003 fb9a 	bl	8003aea <dma_set_peripheral_address>
 80003b6:	4819      	ldr	r0, [pc, #100]	@ (800041c <dma_transmit_setup+0x80>)
 80003b8:	2240      	movs	r2, #64	@ 0x40
 80003ba:	2106      	movs	r1, #6
 80003bc:	f003 fb03 	bl	80039c6 <dma_set_transfer_mode>
 80003c0:	4816      	ldr	r0, [pc, #88]	@ (800041c <dma_transmit_setup+0x80>)
 80003c2:	2200      	movs	r2, #0
 80003c4:	2106      	movs	r1, #6
 80003c6:	f003 fb26 	bl	8003a16 <dma_set_peripheral_size>
 80003ca:	4814      	ldr	r0, [pc, #80]	@ (800041c <dma_transmit_setup+0x80>)
 80003cc:	2200      	movs	r2, #0
 80003ce:	2106      	movs	r1, #6
 80003d0:	f003 fb15 	bl	80039fe <dma_set_memory_size>
 80003d4:	f44f 3240 	mov.w	r2, #196608	@ 0x30000
 80003d8:	4810      	ldr	r0, [pc, #64]	@ (800041c <dma_transmit_setup+0x80>)
 80003da:	2106      	movs	r1, #6
 80003dc:	f003 fb03 	bl	80039e6 <dma_set_priority>
 80003e0:	480e      	ldr	r0, [pc, #56]	@ (800041c <dma_transmit_setup+0x80>)
 80003e2:	2100      	movs	r1, #0
 80003e4:	f003 fb2c 	bl	8003a40 <dma_disable_peripheral_increment_mode>
 80003e8:	480c      	ldr	r0, [pc, #48]	@ (800041c <dma_transmit_setup+0x80>)
 80003ea:	2106      	movs	r1, #6
 80003ec:	f003 fb1f 	bl	8003a2e <dma_enable_memory_increment_mode>
 80003f0:	480a      	ldr	r0, [pc, #40]	@ (800041c <dma_transmit_setup+0x80>)
 80003f2:	2106      	movs	r1, #6
 80003f4:	f003 fb35 	bl	8003a62 <dma_disable_transfer_error_interrupt>
 80003f8:	4808      	ldr	r0, [pc, #32]	@ (800041c <dma_transmit_setup+0x80>)
 80003fa:	2106      	movs	r1, #6
 80003fc:	f003 fb3a 	bl	8003a74 <dma_disable_half_transfer_interrupt>
 8000400:	4806      	ldr	r0, [pc, #24]	@ (800041c <dma_transmit_setup+0x80>)
 8000402:	2106      	movs	r1, #6
 8000404:	f003 fb4d 	bl	8003aa2 <dma_disable_direct_mode_error_interrupt>
 8000408:	4804      	ldr	r0, [pc, #16]	@ (800041c <dma_transmit_setup+0x80>)
 800040a:	2106      	movs	r1, #6
 800040c:	f003 fb52 	bl	8003ab4 <dma_disable_fifo_error_interrupt>
 8000410:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000414:	4801      	ldr	r0, [pc, #4]	@ (800041c <dma_transmit_setup+0x80>)
 8000416:	2106      	movs	r1, #6
 8000418:	f003 bb35 	b.w	8003a86 <dma_enable_transfer_complete_interrupt>
 800041c:	40026000 	.word	0x40026000
 8000420:	40004404 	.word	0x40004404

08000424 <dma_request>:
 8000424:	b510      	push	{r4, lr}
 8000426:	4602      	mov	r2, r0
 8000428:	460c      	mov	r4, r1
 800042a:	4810      	ldr	r0, [pc, #64]	@ (800046c <dma_request+0x48>)
 800042c:	2105      	movs	r1, #5
 800042e:	f003 fb64 	bl	8003afa <dma_set_memory_address>
 8000432:	b2a2      	uxth	r2, r4
 8000434:	480d      	ldr	r0, [pc, #52]	@ (800046c <dma_request+0x48>)
 8000436:	2105      	movs	r1, #5
 8000438:	f003 fb6c 	bl	8003b14 <dma_set_number_of_data>
 800043c:	f04f 6200 	mov.w	r2, #134217728	@ 0x8000000
 8000440:	480a      	ldr	r0, [pc, #40]	@ (800046c <dma_request+0x48>)
 8000442:	2105      	movs	r1, #5
 8000444:	f003 fb05 	bl	8003a52 <dma_channel_select>
 8000448:	4808      	ldr	r0, [pc, #32]	@ (800046c <dma_request+0x48>)
 800044a:	2105      	movs	r1, #5
 800044c:	f003 fb3b 	bl	8003ac6 <dma_enable_stream>
 8000450:	4807      	ldr	r0, [pc, #28]	@ (8000470 <dma_request+0x4c>)
 8000452:	2178      	movs	r1, #120	@ 0x78
 8000454:	f003 fda9 	bl	8003faa <usart_send_blocking>
 8000458:	4806      	ldr	r0, [pc, #24]	@ (8000474 <dma_request+0x50>)
 800045a:	2178      	movs	r1, #120	@ 0x78
 800045c:	f003 fda5 	bl	8003faa <usart_send_blocking>
 8000460:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000464:	4802      	ldr	r0, [pc, #8]	@ (8000470 <dma_request+0x4c>)
 8000466:	f003 bdb4 	b.w	8003fd2 <usart_enable_rx_dma>
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
 8000482:	f003 fb3a 	bl	8003afa <dma_set_memory_address>
 8000486:	b2a2      	uxth	r2, r4
 8000488:	4809      	ldr	r0, [pc, #36]	@ (80004b0 <dma_transmit+0x38>)
 800048a:	2106      	movs	r1, #6
 800048c:	f003 fb42 	bl	8003b14 <dma_set_number_of_data>
 8000490:	4807      	ldr	r0, [pc, #28]	@ (80004b0 <dma_transmit+0x38>)
 8000492:	f04f 6200 	mov.w	r2, #134217728	@ 0x8000000
 8000496:	2106      	movs	r1, #6
 8000498:	f003 fadb 	bl	8003a52 <dma_channel_select>
 800049c:	4804      	ldr	r0, [pc, #16]	@ (80004b0 <dma_transmit+0x38>)
 800049e:	2106      	movs	r1, #6
 80004a0:	f003 fb11 	bl	8003ac6 <dma_enable_stream>
 80004a4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80004a8:	4802      	ldr	r0, [pc, #8]	@ (80004b4 <dma_transmit+0x3c>)
 80004aa:	f003 bd9c 	b.w	8003fe6 <usart_enable_tx_dma>
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
 80004dc:	f003 fd65 	bl	8003faa <usart_send_blocking>
 80004e0:	f815 1f01 	ldrb.w	r1, [r5, #1]!
 80004e4:	2900      	cmp	r1, #0
 80004e6:	d1f8      	bne.n	80004da <send_USART_str+0xa>
 80004e8:	480d      	ldr	r0, [pc, #52]	@ (8000520 <send_USART_str+0x50>)
 80004ea:	210d      	movs	r1, #13
 80004ec:	f003 fd5d 	bl	8003faa <usart_send_blocking>
 80004f0:	210a      	movs	r1, #10
 80004f2:	480b      	ldr	r0, [pc, #44]	@ (8000520 <send_USART_str+0x50>)
 80004f4:	f003 fd59 	bl	8003faa <usart_send_blocking>
 80004f8:	7821      	ldrb	r1, [r4, #0]
 80004fa:	b131      	cbz	r1, 800050a <send_USART_str+0x3a>
 80004fc:	4809      	ldr	r0, [pc, #36]	@ (8000524 <send_USART_str+0x54>)
 80004fe:	f003 fd54 	bl	8003faa <usart_send_blocking>
 8000502:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 8000506:	2900      	cmp	r1, #0
 8000508:	d1f8      	bne.n	80004fc <send_USART_str+0x2c>
 800050a:	4806      	ldr	r0, [pc, #24]	@ (8000524 <send_USART_str+0x54>)
 800050c:	210d      	movs	r1, #13
 800050e:	f003 fd4c 	bl	8003faa <usart_send_blocking>
 8000512:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000516:	4803      	ldr	r0, [pc, #12]	@ (8000524 <send_USART_str+0x54>)
 8000518:	210a      	movs	r1, #10
 800051a:	f003 bd46 	b.w	8003faa <usart_send_blocking>
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
 800053a:	f003 fd36 	bl	8003faa <usart_send_blocking>
 800053e:	42b5      	cmp	r5, r6
 8000540:	d1f8      	bne.n	8000534 <send_USART_bytes+0xc>
 8000542:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 8000546:	4804      	ldr	r0, [pc, #16]	@ (8000558 <send_USART_bytes+0x30>)
 8000548:	f003 fd2f 	bl	8003faa <usart_send_blocking>
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
 8000568:	f003 fd2a 	bl	8003fc0 <usart_recv_blocking>
 800056c:	f804 0f01 	strb.w	r0, [r4, #1]!
 8000570:	42ac      	cmp	r4, r5
 8000572:	d1f8      	bne.n	8000566 <recv_USART_bytes+0xa>
 8000574:	bd38      	pop	{r3, r4, r5, pc}
 8000576:	4770      	bx	lr
 8000578:	40004400 	.word	0x40004400

0800057c <dma1_stream5_isr>:
 800057c:	b508      	push	{r3, lr}
 800057e:	4807      	ldr	r0, [pc, #28]	@ (800059c <dma1_stream5_isr+0x20>)
 8000580:	f003 fd2c 	bl	8003fdc <usart_disable_rx_dma>
 8000584:	4806      	ldr	r0, [pc, #24]	@ (80005a0 <dma1_stream5_isr+0x24>)
 8000586:	2105      	movs	r1, #5
 8000588:	2220      	movs	r2, #32
 800058a:	f003 fa0d 	bl	80039a8 <dma_clear_interrupt_flags>
 800058e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000592:	4803      	ldr	r0, [pc, #12]	@ (80005a0 <dma1_stream5_isr+0x24>)
 8000594:	2105      	movs	r1, #5
 8000596:	f003 ba9f 	b.w	8003ad8 <dma_disable_stream>
 800059a:	bf00      	nop
 800059c:	40004400 	.word	0x40004400
 80005a0:	40026000 	.word	0x40026000

080005a4 <dma1_stream6_isr>:
 80005a4:	b508      	push	{r3, lr}
 80005a6:	4807      	ldr	r0, [pc, #28]	@ (80005c4 <dma1_stream6_isr+0x20>)
 80005a8:	f003 fd22 	bl	8003ff0 <usart_disable_tx_dma>
 80005ac:	4806      	ldr	r0, [pc, #24]	@ (80005c8 <dma1_stream6_isr+0x24>)
 80005ae:	2106      	movs	r1, #6
 80005b0:	2220      	movs	r2, #32
 80005b2:	f003 f9f9 	bl	80039a8 <dma_clear_interrupt_flags>
 80005b6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80005ba:	4803      	ldr	r0, [pc, #12]	@ (80005c8 <dma1_stream6_isr+0x24>)
 80005bc:	2106      	movs	r1, #6
 80005be:	f003 ba8b 	b.w	8003ad8 <dma_disable_stream>
 80005c2:	bf00      	nop
 80005c4:	40004400 	.word	0x40004400
 80005c8:	40026000 	.word	0x40026000

080005cc <signal_host>:
 80005cc:	b508      	push	{r3, lr}
 80005ce:	4805      	ldr	r0, [pc, #20]	@ (80005e4 <signal_host+0x18>)
 80005d0:	2178      	movs	r1, #120	@ 0x78
 80005d2:	f003 fcea 	bl	8003faa <usart_send_blocking>
 80005d6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80005da:	4803      	ldr	r0, [pc, #12]	@ (80005e8 <signal_host+0x1c>)
 80005dc:	2178      	movs	r1, #120	@ 0x78
 80005de:	f003 bce4 	b.w	8003faa <usart_send_blocking>
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

08000618 <br_range_dec32be>:
 8000618:	f101 3cff 	add.w	ip, r1, #4294967295	@ 0xffffffff
 800061c:	b149      	cbz	r1, 8000632 <br_range_dec32be+0x1a>
 800061e:	f852 3b04 	ldr.w	r3, [r2], #4
 8000622:	f10c 3cff 	add.w	ip, ip, #4294967295	@ 0xffffffff
 8000626:	ba1b      	rev	r3, r3
 8000628:	f1bc 3fff 	cmp.w	ip, #4294967295	@ 0xffffffff
 800062c:	f840 3b04 	str.w	r3, [r0], #4
 8000630:	d1f5      	bne.n	800061e <br_range_dec32be+0x6>
 8000632:	4770      	bx	lr

08000634 <br_range_enc32be>:
 8000634:	f102 3cff 	add.w	ip, r2, #4294967295	@ 0xffffffff
 8000638:	b14a      	cbz	r2, 800064e <br_range_enc32be+0x1a>
 800063a:	f851 3b04 	ldr.w	r3, [r1], #4
 800063e:	f10c 3cff 	add.w	ip, ip, #4294967295	@ 0xffffffff
 8000642:	ba1b      	rev	r3, r3
 8000644:	f1bc 3fff 	cmp.w	ip, #4294967295	@ 0xffffffff
 8000648:	f840 3b04 	str.w	r3, [r0], #4
 800064c:	d1f5      	bne.n	800063a <br_range_enc32be+0x6>
 800064e:	4770      	bx	lr

08000650 <br_i31_add>:
 8000650:	6803      	ldr	r3, [r0, #0]
 8000652:	333f      	adds	r3, #63	@ 0x3f
 8000654:	2b3f      	cmp	r3, #63	@ 0x3f
 8000656:	d91a      	bls.n	800068e <br_i31_add+0x3e>
 8000658:	4684      	mov	ip, r0
 800065a:	b510      	push	{r4, lr}
 800065c:	0958      	lsrs	r0, r3, #5
 800065e:	f1ac 0e04 	sub.w	lr, ip, #4
 8000662:	eb0e 0e80 	add.w	lr, lr, r0, lsl #2
 8000666:	4254      	negs	r4, r2
 8000668:	2000      	movs	r0, #0
 800066a:	f85c 2f04 	ldr.w	r2, [ip, #4]!
 800066e:	f851 3f04 	ldr.w	r3, [r1, #4]!
 8000672:	4413      	add	r3, r2
 8000674:	4418      	add	r0, r3
 8000676:	f020 4300 	bic.w	r3, r0, #2147483648	@ 0x80000000
 800067a:	4053      	eors	r3, r2
 800067c:	4023      	ands	r3, r4
 800067e:	4053      	eors	r3, r2
 8000680:	45e6      	cmp	lr, ip
 8000682:	f8cc 3000 	str.w	r3, [ip]
 8000686:	ea4f 70d0 	mov.w	r0, r0, lsr #31
 800068a:	d1ee      	bne.n	800066a <br_i31_add+0x1a>
 800068c:	bd10      	pop	{r4, pc}
 800068e:	2000      	movs	r0, #0
 8000690:	4770      	bx	lr
 8000692:	bf00      	nop

08000694 <br_i31_bit_length>:
 8000694:	2900      	cmp	r1, #0
 8000696:	d06b      	beq.n	8000770 <br_i31_bit_length+0xdc>
 8000698:	b570      	push	{r4, r5, r6, lr}
 800069a:	f04f 0e00 	mov.w	lr, #0
 800069e:	f101 3cff 	add.w	ip, r1, #4294967295	@ 0xffffffff
 80006a2:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 80006a6:	4672      	mov	r2, lr
 80006a8:	4253      	negs	r3, r2
 80006aa:	4313      	orrs	r3, r2
 80006ac:	43db      	mvns	r3, r3
 80006ae:	0fdb      	lsrs	r3, r3, #31
 80006b0:	2b00      	cmp	r3, #0
 80006b2:	f850 3d04 	ldr.w	r3, [r0, #-4]!
 80006b6:	bf18      	it	ne
 80006b8:	46e6      	movne	lr, ip
 80006ba:	f10c 3cff 	add.w	ip, ip, #4294967295	@ 0xffffffff
 80006be:	bf18      	it	ne
 80006c0:	461a      	movne	r2, r3
 80006c2:	f1bc 3fff 	cmp.w	ip, #4294967295	@ 0xffffffff
 80006c6:	d1ef      	bne.n	80006a8 <br_i31_bit_length+0x14>
 80006c8:	f64f 70ff 	movw	r0, #65535	@ 0xffff
 80006cc:	1a83      	subs	r3, r0, r2
 80006ce:	ea82 0403 	eor.w	r4, r2, r3
 80006d2:	4050      	eors	r0, r2
 80006d4:	4020      	ands	r0, r4
 80006d6:	4058      	eors	r0, r3
 80006d8:	ea82 4312 	eor.w	r3, r2, r2, lsr #16
 80006dc:	ea03 73e0 	and.w	r3, r3, r0, asr #31
 80006e0:	4053      	eors	r3, r2
 80006e2:	f1c3 04ff 	rsb	r4, r3, #255	@ 0xff
 80006e6:	ea4f 7cd0 	mov.w	ip, r0, lsr #31
 80006ea:	ea4f 114e 	mov.w	r1, lr, lsl #5
 80006ee:	ea83 0004 	eor.w	r0, r3, r4
 80006f2:	f083 0eff 	eor.w	lr, r3, #255	@ 0xff
 80006f6:	ea0e 0e00 	and.w	lr, lr, r0
 80006fa:	ea8e 0e04 	eor.w	lr, lr, r4
 80006fe:	ea83 2013 	eor.w	r0, r3, r3, lsr #8
 8000702:	ea00 70ee 	and.w	r0, r0, lr, asr #31
 8000706:	4058      	eors	r0, r3
 8000708:	f1c0 030f 	rsb	r3, r0, #15
 800070c:	ea80 0503 	eor.w	r5, r0, r3
 8000710:	f080 040f 	eor.w	r4, r0, #15
 8000714:	402c      	ands	r4, r5
 8000716:	405c      	eors	r4, r3
 8000718:	ea80 1310 	eor.w	r3, r0, r0, lsr #4
 800071c:	ea03 73e4 	and.w	r3, r3, r4, asr #31
 8000720:	4043      	eors	r3, r0
 8000722:	f1c3 0503 	rsb	r5, r3, #3
 8000726:	ea83 0605 	eor.w	r6, r3, r5
 800072a:	f083 0003 	eor.w	r0, r3, #3
 800072e:	4030      	ands	r0, r6
 8000730:	4068      	eors	r0, r5
 8000732:	ea83 0593 	eor.w	r5, r3, r3, lsr #2
 8000736:	ea05 75e0 	and.w	r5, r5, r0, asr #31
 800073a:	406b      	eors	r3, r5
 800073c:	4255      	negs	r5, r2
 800073e:	432a      	orrs	r2, r5
 8000740:	eb01 71d2 	add.w	r1, r1, r2, lsr #31
 8000744:	ea4f 7ede 	mov.w	lr, lr, lsr #31
 8000748:	eb01 110c 	add.w	r1, r1, ip, lsl #4
 800074c:	0fe4      	lsrs	r4, r4, #31
 800074e:	eb01 01ce 	add.w	r1, r1, lr, lsl #3
 8000752:	0fc0      	lsrs	r0, r0, #31
 8000754:	eb01 0184 	add.w	r1, r1, r4, lsl #2
 8000758:	eb01 0140 	add.w	r1, r1, r0, lsl #1
 800075c:	f1c3 0001 	rsb	r0, r3, #1
 8000760:	f083 0201 	eor.w	r2, r3, #1
 8000764:	4043      	eors	r3, r0
 8000766:	4013      	ands	r3, r2
 8000768:	4043      	eors	r3, r0
 800076a:	eb01 70d3 	add.w	r0, r1, r3, lsr #31
 800076e:	bd70      	pop	{r4, r5, r6, pc}
 8000770:	4608      	mov	r0, r1
 8000772:	4770      	bx	lr

08000774 <br_i31_decode>:
 8000774:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000776:	460f      	mov	r7, r1
 8000778:	4606      	mov	r6, r0
 800077a:	4611      	mov	r1, r2
 800077c:	b1f2      	cbz	r2, 80007bc <br_i31_decode+0x48>
 800077e:	2300      	movs	r3, #0
 8000780:	eb07 0c02 	add.w	ip, r7, r2
 8000784:	461c      	mov	r4, r3
 8000786:	2101      	movs	r1, #1
 8000788:	f81c 5d01 	ldrb.w	r5, [ip, #-1]!
 800078c:	fa05 f203 	lsl.w	r2, r5, r3
 8000790:	f103 0e08 	add.w	lr, r3, #8
 8000794:	4314      	orrs	r4, r2
 8000796:	3b17      	subs	r3, #23
 8000798:	f1be 0f1e 	cmp.w	lr, #30
 800079c:	f024 4000 	bic.w	r0, r4, #2147483648	@ 0x80000000
 80007a0:	f1c3 0208 	rsb	r2, r3, #8
 80007a4:	bfc3      	ittte	gt
 80007a6:	f846 0021 	strgt.w	r0, [r6, r1, lsl #2]
 80007aa:	fa25 f402 	lsrgt.w	r4, r5, r2
 80007ae:	3101      	addgt	r1, #1
 80007b0:	4673      	movle	r3, lr
 80007b2:	4567      	cmp	r7, ip
 80007b4:	d1e8      	bne.n	8000788 <br_i31_decode+0x14>
 80007b6:	b133      	cbz	r3, 80007c6 <br_i31_decode+0x52>
 80007b8:	f846 4021 	str.w	r4, [r6, r1, lsl #2]
 80007bc:	1d30      	adds	r0, r6, #4
 80007be:	f7ff ff69 	bl	8000694 <br_i31_bit_length>
 80007c2:	6030      	str	r0, [r6, #0]
 80007c4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80007c6:	3901      	subs	r1, #1
 80007c8:	1d30      	adds	r0, r6, #4
 80007ca:	f7ff ff63 	bl	8000694 <br_i31_bit_length>
 80007ce:	6030      	str	r0, [r6, #0]
 80007d0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80007d2:	bf00      	nop

080007d4 <br_i31_decode_reduce>:
 80007d4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80007d8:	681c      	ldr	r4, [r3, #0]
 80007da:	b083      	sub	sp, #12
 80007dc:	4681      	mov	r9, r0
 80007de:	b924      	cbnz	r4, 80007ea <br_i31_decode_reduce+0x16>
 80007e0:	f8c9 4000 	str.w	r4, [r9]
 80007e4:	b003      	add	sp, #12
 80007e6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80007ea:	4690      	mov	r8, r2
 80007ec:	1de5      	adds	r5, r4, #7
 80007ee:	f104 021f 	add.w	r2, r4, #31
 80007f2:	0952      	lsrs	r2, r2, #5
 80007f4:	eba5 1554 	sub.w	r5, r5, r4, lsr #5
 80007f8:	0092      	lsls	r2, r2, #2
 80007fa:	f840 4b04 	str.w	r4, [r0], #4
 80007fe:	460f      	mov	r7, r1
 8000800:	08ed      	lsrs	r5, r5, #3
 8000802:	2100      	movs	r1, #0
 8000804:	469b      	mov	fp, r3
 8000806:	f002 ffc1 	bl	800378c <memset>
 800080a:	1e6a      	subs	r2, r5, #1
 800080c:	4542      	cmp	r2, r8
 800080e:	d245      	bcs.n	800089c <br_i31_decode_reduce+0xc8>
 8000810:	4639      	mov	r1, r7
 8000812:	4648      	mov	r0, r9
 8000814:	3d02      	subs	r5, #2
 8000816:	2600      	movs	r6, #0
 8000818:	f7ff ffac 	bl	8000774 <br_i31_decode>
 800081c:	443d      	add	r5, r7
 800081e:	f8c9 4000 	str.w	r4, [r9]
 8000822:	4632      	mov	r2, r6
 8000824:	f8cd 9004 	str.w	r9, [sp, #4]
 8000828:	e007      	b.n	800083a <br_i31_decode_reduce+0x66>
 800082a:	3402      	adds	r4, #2
 800082c:	1be4      	subs	r4, r4, r7
 800082e:	45a0      	cmp	r8, r4
 8000830:	ea4a 2202 	orr.w	r2, sl, r2, lsl #8
 8000834:	f106 0608 	add.w	r6, r6, #8
 8000838:	d919      	bls.n	800086e <br_i31_decode_reduce+0x9a>
 800083a:	2e16      	cmp	r6, #22
 800083c:	462c      	mov	r4, r5
 800083e:	f815 af01 	ldrb.w	sl, [r5, #1]!
 8000842:	ddf2      	ble.n	800082a <br_i31_decode_reduce+0x56>
 8000844:	3e17      	subs	r6, #23
 8000846:	f1c6 0908 	rsb	r9, r6, #8
 800084a:	fa02 f209 	lsl.w	r2, r2, r9
 800084e:	fa2a f106 	lsr.w	r1, sl, r6
 8000852:	4311      	orrs	r1, r2
 8000854:	9801      	ldr	r0, [sp, #4]
 8000856:	465a      	mov	r2, fp
 8000858:	3402      	adds	r4, #2
 800085a:	f000 fe67 	bl	800152c <br_i31_muladd_small>
 800085e:	1be4      	subs	r4, r4, r7
 8000860:	23ff      	movs	r3, #255	@ 0xff
 8000862:	fa43 f309 	asr.w	r3, r3, r9
 8000866:	45a0      	cmp	r8, r4
 8000868:	ea03 020a 	and.w	r2, r3, sl
 800086c:	d8e5      	bhi.n	800083a <br_i31_decode_reduce+0x66>
 800086e:	f8dd 9004 	ldr.w	r9, [sp, #4]
 8000872:	2e00      	cmp	r6, #0
 8000874:	d0b6      	beq.n	80007e4 <br_i31_decode_reduce+0x10>
 8000876:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800087a:	f1c6 011f 	rsb	r1, r6, #31
 800087e:	40b3      	lsls	r3, r6
 8000880:	4648      	mov	r0, r9
 8000882:	ea43 0402 	orr.w	r4, r3, r2
 8000886:	f000 ff89 	bl	800179c <br_i31_rshift>
 800088a:	465a      	mov	r2, fp
 800088c:	f024 4100 	bic.w	r1, r4, #2147483648	@ 0x80000000
 8000890:	4648      	mov	r0, r9
 8000892:	b003      	add	sp, #12
 8000894:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000898:	f000 be48 	b.w	800152c <br_i31_muladd_small>
 800089c:	4642      	mov	r2, r8
 800089e:	4639      	mov	r1, r7
 80008a0:	4648      	mov	r0, r9
 80008a2:	f7ff ff67 	bl	8000774 <br_i31_decode>
 80008a6:	e79b      	b.n	80007e0 <br_i31_decode_reduce+0xc>

080008a8 <br_i31_encode>:
 80008a8:	6813      	ldr	r3, [r2, #0]
 80008aa:	331f      	adds	r3, #31
 80008ac:	b5f0      	push	{r4, r5, r6, r7, lr}
 80008ae:	4616      	mov	r6, r2
 80008b0:	460a      	mov	r2, r1
 80008b2:	0959      	lsrs	r1, r3, #5
 80008b4:	d03a      	beq.n	800092c <br_i31_encode+0x84>
 80008b6:	4684      	mov	ip, r0
 80008b8:	4494      	add	ip, r2
 80008ba:	b3b2      	cbz	r2, 800092a <br_i31_encode+0x82>
 80008bc:	2000      	movs	r0, #0
 80008be:	4604      	mov	r4, r0
 80008c0:	f04f 0e01 	mov.w	lr, #1
 80008c4:	e016      	b.n	80008f4 <br_i31_encode+0x4c>
 80008c6:	f856 5023 	ldr.w	r5, [r6, r3, lsl #2]
 80008ca:	f10e 0e02 	add.w	lr, lr, #2
 80008ce:	201f      	movs	r0, #31
 80008d0:	fa05 f300 	lsl.w	r3, r5, r0
 80008d4:	3801      	subs	r0, #1
 80008d6:	433b      	orrs	r3, r7
 80008d8:	f1c0 041f 	rsb	r4, r0, #31
 80008dc:	2a03      	cmp	r2, #3
 80008de:	fa25 f404 	lsr.w	r4, r5, r4
 80008e2:	b2dd      	uxtb	r5, r3
 80008e4:	d915      	bls.n	8000912 <br_i31_encode+0x6a>
 80008e6:	ba1b      	rev	r3, r3
 80008e8:	3a04      	subs	r2, #4
 80008ea:	f84c 3c04 	str.w	r3, [ip, #-4]
 80008ee:	f1ac 0c04 	sub.w	ip, ip, #4
 80008f2:	d01a      	beq.n	800092a <br_i31_encode+0x82>
 80008f4:	4571      	cmp	r1, lr
 80008f6:	bf2c      	ite	cs
 80008f8:	f856 702e 	ldrcs.w	r7, [r6, lr, lsl #2]
 80008fc:	2700      	movcc	r7, #0
 80008fe:	f10e 0301 	add.w	r3, lr, #1
 8000902:	b9b8      	cbnz	r0, 8000934 <br_i31_encode+0x8c>
 8000904:	4299      	cmp	r1, r3
 8000906:	d2de      	bcs.n	80008c6 <br_i31_encode+0x1e>
 8000908:	f10e 0e02 	add.w	lr, lr, #2
 800090c:	201f      	movs	r0, #31
 800090e:	2500      	movs	r5, #0
 8000910:	e7de      	b.n	80008d0 <br_i31_encode+0x28>
 8000912:	2a02      	cmp	r2, #2
 8000914:	d004      	beq.n	8000920 <br_i31_encode+0x78>
 8000916:	2a03      	cmp	r2, #3
 8000918:	d105      	bne.n	8000926 <br_i31_encode+0x7e>
 800091a:	0c1a      	lsrs	r2, r3, #16
 800091c:	f80c 2c03 	strb.w	r2, [ip, #-3]
 8000920:	0a1b      	lsrs	r3, r3, #8
 8000922:	f80c 3c02 	strb.w	r3, [ip, #-2]
 8000926:	f80c 5c01 	strb.w	r5, [ip, #-1]
 800092a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800092c:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
 8000930:	f002 bf2c 	b.w	800378c <memset>
 8000934:	463d      	mov	r5, r7
 8000936:	469e      	mov	lr, r3
 8000938:	4627      	mov	r7, r4
 800093a:	e7c9      	b.n	80008d0 <br_i31_encode+0x28>

0800093c <br_i31_from_monty>:
 800093c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000940:	680f      	ldr	r7, [r1, #0]
 8000942:	b083      	sub	sp, #12
 8000944:	371f      	adds	r7, #31
 8000946:	097b      	lsrs	r3, r7, #5
 8000948:	460e      	mov	r6, r1
 800094a:	4605      	mov	r5, r0
 800094c:	9301      	str	r3, [sp, #4]
 800094e:	d037      	beq.n	80009c0 <br_i31_from_monty+0x84>
 8000950:	9b01      	ldr	r3, [sp, #4]
 8000952:	4691      	mov	r9, r2
 8000954:	eb00 0b83 	add.w	fp, r0, r3, lsl #2
 8000958:	f04f 0800 	mov.w	r8, #0
 800095c:	686c      	ldr	r4, [r5, #4]
 800095e:	2200      	movs	r2, #0
 8000960:	fb04 f409 	mul.w	r4, r4, r9
 8000964:	f024 4400 	bic.w	r4, r4, #2147483648	@ 0x80000000
 8000968:	4611      	mov	r1, r2
 800096a:	4610      	mov	r0, r2
 800096c:	e005      	b.n	800097a <br_i31_from_monty+0x3e>
 800096e:	f84e 3c04 	str.w	r3, [lr, #-4]
 8000972:	9b01      	ldr	r3, [sp, #4]
 8000974:	4660      	mov	r0, ip
 8000976:	4283      	cmp	r3, r0
 8000978:	d91c      	bls.n	80009b4 <br_i31_from_monty+0x78>
 800097a:	f100 0c01 	add.w	ip, r0, #1
 800097e:	f04f 0a00 	mov.w	sl, #0
 8000982:	f855 302c 	ldr.w	r3, [r5, ip, lsl #2]
 8000986:	f856 702c 	ldr.w	r7, [r6, ip, lsl #2]
 800098a:	fbe7 3a04 	umlal	r3, sl, r7, r4
 800098e:	189b      	adds	r3, r3, r2
 8000990:	eb41 0a0a 	adc.w	sl, r1, sl
 8000994:	0fda      	lsrs	r2, r3, #31
 8000996:	ea4f 0e8c 	mov.w	lr, ip, lsl #2
 800099a:	44ae      	add	lr, r5
 800099c:	f023 4300 	bic.w	r3, r3, #2147483648	@ 0x80000000
 80009a0:	ea42 024a 	orr.w	r2, r2, sl, lsl #1
 80009a4:	ea4f 71da 	mov.w	r1, sl, lsr #31
 80009a8:	2800      	cmp	r0, #0
 80009aa:	d1e0      	bne.n	800096e <br_i31_from_monty+0x32>
 80009ac:	9b01      	ldr	r3, [sp, #4]
 80009ae:	2001      	movs	r0, #1
 80009b0:	4283      	cmp	r3, r0
 80009b2:	d8e2      	bhi.n	800097a <br_i31_from_monty+0x3e>
 80009b4:	f108 0801 	add.w	r8, r8, #1
 80009b8:	4543      	cmp	r3, r8
 80009ba:	f8cb 2000 	str.w	r2, [fp]
 80009be:	d1cd      	bne.n	800095c <br_i31_from_monty+0x20>
 80009c0:	4631      	mov	r1, r6
 80009c2:	2200      	movs	r2, #0
 80009c4:	4628      	mov	r0, r5
 80009c6:	f000 ff0b 	bl	80017e0 <br_i31_sub>
 80009ca:	4631      	mov	r1, r6
 80009cc:	f080 0201 	eor.w	r2, r0, #1
 80009d0:	4628      	mov	r0, r5
 80009d2:	b003      	add	sp, #12
 80009d4:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80009d8:	f000 bf02 	b.w	80017e0 <br_i31_sub>

080009dc <finish_mod>:
 80009dc:	b341      	cbz	r1, 8000a30 <finish_mod+0x54>
 80009de:	b570      	push	{r4, r5, r6, lr}
 80009e0:	3804      	subs	r0, #4
 80009e2:	f1a2 0e04 	sub.w	lr, r2, #4
 80009e6:	461c      	mov	r4, r3
 80009e8:	eb00 0c81 	add.w	ip, r0, r1, lsl #2
 80009ec:	4675      	mov	r5, lr
 80009ee:	4603      	mov	r3, r0
 80009f0:	2200      	movs	r2, #0
 80009f2:	f853 1f04 	ldr.w	r1, [r3, #4]!
 80009f6:	f855 6f04 	ldr.w	r6, [r5, #4]!
 80009fa:	1b89      	subs	r1, r1, r6
 80009fc:	1a8a      	subs	r2, r1, r2
 80009fe:	459c      	cmp	ip, r3
 8000a00:	ea4f 72d2 	mov.w	r2, r2, lsr #31
 8000a04:	d1f5      	bne.n	80009f2 <finish_mod+0x16>
 8000a06:	f082 0201 	eor.w	r2, r2, #1
 8000a0a:	4265      	negs	r5, r4
 8000a0c:	4322      	orrs	r2, r4
 8000a0e:	086d      	lsrs	r5, r5, #1
 8000a10:	f85e 1f04 	ldr.w	r1, [lr, #4]!
 8000a14:	f850 3f04 	ldr.w	r3, [r0, #4]!
 8000a18:	4069      	eors	r1, r5
 8000a1a:	fb02 3311 	mls	r3, r2, r1, r3
 8000a1e:	1b1b      	subs	r3, r3, r4
 8000a20:	f023 4100 	bic.w	r1, r3, #2147483648	@ 0x80000000
 8000a24:	4584      	cmp	ip, r0
 8000a26:	6001      	str	r1, [r0, #0]
 8000a28:	ea4f 74d3 	mov.w	r4, r3, lsr #31
 8000a2c:	d1f0      	bne.n	8000a10 <finish_mod+0x34>
 8000a2e:	bd70      	pop	{r4, r5, r6, pc}
 8000a30:	4770      	bx	lr
 8000a32:	bf00      	nop

08000a34 <br_i31_moddiv>:
 8000a34:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000a38:	4616      	mov	r6, r2
 8000a3a:	b09f      	sub	sp, #124	@ 0x7c
 8000a3c:	4684      	mov	ip, r0
 8000a3e:	931a      	str	r3, [sp, #104]	@ 0x68
 8000a40:	f856 3b04 	ldr.w	r3, [r6], #4
 8000a44:	9828      	ldr	r0, [sp, #160]	@ 0xa0
 8000a46:	9216      	str	r2, [sp, #88]	@ 0x58
 8000a48:	331f      	adds	r3, #31
 8000a4a:	095b      	lsrs	r3, r3, #5
 8000a4c:	009c      	lsls	r4, r3, #2
 8000a4e:	4665      	mov	r5, ip
 8000a50:	eb00 0783 	add.w	r7, r0, r3, lsl #2
 8000a54:	3104      	adds	r1, #4
 8000a56:	930a      	str	r3, [sp, #40]	@ 0x28
 8000a58:	4622      	mov	r2, r4
 8000a5a:	eb00 03c3 	add.w	r3, r0, r3, lsl #3
 8000a5e:	3504      	adds	r5, #4
 8000a60:	930f      	str	r3, [sp, #60]	@ 0x3c
 8000a62:	f8cd c044 	str.w	ip, [sp, #68]	@ 0x44
 8000a66:	9617      	str	r6, [sp, #92]	@ 0x5c
 8000a68:	9515      	str	r5, [sp, #84]	@ 0x54
 8000a6a:	9713      	str	r7, [sp, #76]	@ 0x4c
 8000a6c:	461d      	mov	r5, r3
 8000a6e:	f002 fedb 	bl	8003828 <memcpy>
 8000a72:	4631      	mov	r1, r6
 8000a74:	4622      	mov	r2, r4
 8000a76:	4638      	mov	r0, r7
 8000a78:	f002 fed6 	bl	8003828 <memcpy>
 8000a7c:	4628      	mov	r0, r5
 8000a7e:	4622      	mov	r2, r4
 8000a80:	2100      	movs	r1, #0
 8000a82:	f002 fe83 	bl	800378c <memset>
 8000a86:	462e      	mov	r6, r5
 8000a88:	9d16      	ldr	r5, [sp, #88]	@ 0x58
 8000a8a:	682b      	ldr	r3, [r5, #0]
 8000a8c:	eba3 1353 	sub.w	r3, r3, r3, lsr #5
 8000a90:	005b      	lsls	r3, r3, #1
 8000a92:	331e      	adds	r3, #30
 8000a94:	2b1d      	cmp	r3, #29
 8000a96:	9312      	str	r3, [sp, #72]	@ 0x48
 8000a98:	f240 8283 	bls.w	8000fa2 <br_i31_moddiv+0x56e>
 8000a9c:	9928      	ldr	r1, [sp, #160]	@ 0xa0
 8000a9e:	9a28      	ldr	r2, [sp, #160]	@ 0xa0
 8000aa0:	9d11      	ldr	r5, [sp, #68]	@ 0x44
 8000aa2:	941d      	str	r4, [sp, #116]	@ 0x74
 8000aa4:	1f23      	subs	r3, r4, #4
 8000aa6:	4419      	add	r1, r3
 8000aa8:	9114      	str	r1, [sp, #80]	@ 0x50
 8000aaa:	18f9      	adds	r1, r7, r3
 8000aac:	18f3      	adds	r3, r6, r3
 8000aae:	3a04      	subs	r2, #4
 8000ab0:	9319      	str	r3, [sp, #100]	@ 0x64
 8000ab2:	192b      	adds	r3, r5, r4
 8000ab4:	9318      	str	r3, [sp, #96]	@ 0x60
 8000ab6:	1913      	adds	r3, r2, r4
 8000ab8:	921c      	str	r2, [sp, #112]	@ 0x70
 8000aba:	9110      	str	r1, [sp, #64]	@ 0x40
 8000abc:	931b      	str	r3, [sp, #108]	@ 0x6c
 8000abe:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
 8000ac0:	2b00      	cmp	r3, #0
 8000ac2:	f000 829e 	beq.w	8001002 <br_i31_moddiv+0x5ce>
 8000ac6:	f04f 0c00 	mov.w	ip, #0
 8000aca:	f04f 38ff 	mov.w	r8, #4294967295	@ 0xffffffff
 8000ace:	f8dd a03c 	ldr.w	sl, [sp, #60]	@ 0x3c
 8000ad2:	f8dd 904c 	ldr.w	r9, [sp, #76]	@ 0x4c
 8000ad6:	f8dd b0a0 	ldr.w	fp, [sp, #160]	@ 0xa0
 8000ada:	4666      	mov	r6, ip
 8000adc:	46e6      	mov	lr, ip
 8000ade:	4667      	mov	r7, ip
 8000ae0:	4640      	mov	r0, r8
 8000ae2:	e000      	b.n	8000ae6 <br_i31_moddiv+0xb2>
 8000ae4:	4618      	mov	r0, r3
 8000ae6:	f859 1d04 	ldr.w	r1, [r9, #-4]!
 8000aea:	f85a 2d04 	ldr.w	r2, [sl, #-4]!
 8000aee:	ea41 0302 	orr.w	r3, r1, r2
 8000af2:	f103 4300 	add.w	r3, r3, #2147483648	@ 0x80000000
 8000af6:	3b01      	subs	r3, #1
 8000af8:	ea81 0407 	eor.w	r4, r1, r7
 8000afc:	ea82 0506 	eor.w	r5, r2, r6
 8000b00:	ea81 010e 	eor.w	r1, r1, lr
 8000b04:	ea82 020c 	eor.w	r2, r2, ip
 8000b08:	0fdb      	lsrs	r3, r3, #31
 8000b0a:	ea01 0108 	and.w	r1, r1, r8
 8000b0e:	ea02 0208 	and.w	r2, r2, r8
 8000b12:	4004      	ands	r4, r0
 8000b14:	4005      	ands	r5, r0
 8000b16:	3b01      	subs	r3, #1
 8000b18:	45d9      	cmp	r9, fp
 8000b1a:	ea86 0605 	eor.w	r6, r6, r5
 8000b1e:	ea03 0300 	and.w	r3, r3, r0
 8000b22:	4680      	mov	r8, r0
 8000b24:	ea87 0704 	eor.w	r7, r7, r4
 8000b28:	ea8e 0e01 	eor.w	lr, lr, r1
 8000b2c:	ea8c 0c02 	eor.w	ip, ip, r2
 8000b30:	d1d8      	bne.n	8000ae4 <br_i31_moddiv+0xb0>
 8000b32:	ea27 0500 	bic.w	r5, r7, r0
 8000b36:	4007      	ands	r7, r0
 8000b38:	ea26 0300 	bic.w	r3, r6, r0
 8000b3c:	07ea      	lsls	r2, r5, #31
 8000b3e:	ea47 070e 	orr.w	r7, r7, lr
 8000b42:	4006      	ands	r6, r0
 8000b44:	eb17 0802 	adds.w	r8, r7, r2
 8000b48:	ea46 060c 	orr.w	r6, r6, ip
 8000b4c:	ea4f 72c3 	mov.w	r2, r3, lsl #31
 8000b50:	ea4f 0555 	mov.w	r5, r5, lsr #1
 8000b54:	f145 0500 	adc.w	r5, r5, #0
 8000b58:	085b      	lsrs	r3, r3, #1
 8000b5a:	18b2      	adds	r2, r6, r2
 8000b5c:	4616      	mov	r6, r2
 8000b5e:	f143 0a00 	adc.w	sl, r3, #0
 8000b62:	9928      	ldr	r1, [sp, #160]	@ 0xa0
 8000b64:	9813      	ldr	r0, [sp, #76]	@ 0x4c
 8000b66:	6809      	ldr	r1, [r1, #0]
 8000b68:	f8d0 c000 	ldr.w	ip, [r0]
 8000b6c:	2300      	movs	r3, #0
 8000b6e:	2201      	movs	r2, #1
 8000b70:	4647      	mov	r7, r8
 8000b72:	9202      	str	r2, [sp, #8]
 8000b74:	469b      	mov	fp, r3
 8000b76:	9301      	str	r3, [sp, #4]
 8000b78:	4699      	mov	r9, r3
 8000b7a:	9305      	str	r3, [sp, #20]
 8000b7c:	9307      	str	r3, [sp, #28]
 8000b7e:	9200      	str	r2, [sp, #0]
 8000b80:	9306      	str	r3, [sp, #24]
 8000b82:	460c      	mov	r4, r1
 8000b84:	4698      	mov	r8, r3
 8000b86:	4630      	mov	r0, r6
 8000b88:	1bc3      	subs	r3, r0, r7
 8000b8a:	eb6a 0205 	sbc.w	r2, sl, r5
 8000b8e:	ea82 0105 	eor.w	r1, r2, r5
 8000b92:	ea85 060a 	eor.w	r6, r5, sl
 8000b96:	fa24 f308 	lsr.w	r3, r4, r8
 8000b9a:	f003 0301 	and.w	r3, r3, #1
 8000b9e:	400e      	ands	r6, r1
 8000ba0:	fa2c f108 	lsr.w	r1, ip, r8
 8000ba4:	4056      	eors	r6, r2
 8000ba6:	4019      	ands	r1, r3
 8000ba8:	ea01 72d6 	and.w	r2, r1, r6, lsr #31
 8000bac:	fb0c 4412 	mls	r4, ip, r2, r4
 8000bb0:	2e00      	cmp	r6, #0
 8000bb2:	bfb4      	ite	lt
 8000bb4:	2100      	movlt	r1, #0
 8000bb6:	f001 0101 	andge.w	r1, r1, #1
 8000bba:	fb04 c611 	mls	r6, r4, r1, ip
 8000bbe:	9404      	str	r4, [sp, #16]
 8000bc0:	4254      	negs	r4, r2
 8000bc2:	9608      	str	r6, [sp, #32]
 8000bc4:	ea04 0600 	and.w	r6, r4, r0
 8000bc8:	1bbe      	subs	r6, r7, r6
 8000bca:	ea04 0c0a 	and.w	ip, r4, sl
 8000bce:	eb65 0c0c 	sbc.w	ip, r5, ip
 8000bd2:	9d01      	ldr	r5, [sp, #4]
 8000bd4:	9f00      	ldr	r7, [sp, #0]
 8000bd6:	9603      	str	r6, [sp, #12]
 8000bd8:	4025      	ands	r5, r4
 8000bda:	1b7d      	subs	r5, r7, r5
 8000bdc:	9f02      	ldr	r7, [sp, #8]
 8000bde:	f083 0301 	eor.w	r3, r3, #1
 8000be2:	ea43 0302 	orr.w	r3, r3, r2
 8000be6:	4622      	mov	r2, r4
 8000be8:	ea04 0407 	and.w	r4, r4, r7
 8000bec:	f1c1 0700 	rsb	r7, r1, #0
 8000bf0:	9906      	ldr	r1, [sp, #24]
 8000bf2:	9700      	str	r7, [sp, #0]
 8000bf4:	ea02 0e09 	and.w	lr, r2, r9
 8000bf8:	eb61 0e0e 	sbc.w	lr, r1, lr
 8000bfc:	9905      	ldr	r1, [sp, #20]
 8000bfe:	1b0c      	subs	r4, r1, r4
 8000c00:	9907      	ldr	r1, [sp, #28]
 8000c02:	ea07 0606 	and.w	r6, r7, r6
 8000c06:	ea02 020b 	and.w	r2, r2, fp
 8000c0a:	eb61 0202 	sbc.w	r2, r1, r2
 8000c0e:	1b80      	subs	r0, r0, r6
 8000c10:	9901      	ldr	r1, [sp, #4]
 8000c12:	ea07 060c 	and.w	r6, r7, ip
 8000c16:	eb6a 0606 	sbc.w	r6, sl, r6
 8000c1a:	ea07 0a05 	and.w	sl, r7, r5
 8000c1e:	ebb1 010a 	subs.w	r1, r1, sl
 8000c22:	9101      	str	r1, [sp, #4]
 8000c24:	9900      	ldr	r1, [sp, #0]
 8000c26:	ea01 0a0e 	and.w	sl, r1, lr
 8000c2a:	9902      	ldr	r1, [sp, #8]
 8000c2c:	ea07 0704 	and.w	r7, r7, r4
 8000c30:	eb69 0a0a 	sbc.w	sl, r9, sl
 8000c34:	1bc9      	subs	r1, r1, r7
 8000c36:	9102      	str	r1, [sp, #8]
 8000c38:	9900      	ldr	r1, [sp, #0]
 8000c3a:	ea01 0102 	and.w	r1, r1, r2
 8000c3e:	eb6b 0101 	sbc.w	r1, fp, r1
 8000c42:	9109      	str	r1, [sp, #36]	@ 0x24
 8000c44:	1e59      	subs	r1, r3, #1
 8000c46:	ea01 0905 	and.w	r9, r1, r5
 8000c4a:	eb67 0707 	sbc.w	r7, r7, r7
 8000c4e:	eb19 0505 	adds.w	r5, r9, r5
 8000c52:	9500      	str	r5, [sp, #0]
 8000c54:	ea07 050e 	and.w	r5, r7, lr
 8000c58:	eb45 050e 	adc.w	r5, r5, lr
 8000c5c:	9506      	str	r5, [sp, #24]
 8000c5e:	ea01 0504 	and.w	r5, r1, r4
 8000c62:	192d      	adds	r5, r5, r4
 8000c64:	ea07 0702 	and.w	r7, r7, r2
 8000c68:	9505      	str	r5, [sp, #20]
 8000c6a:	eb47 0502 	adc.w	r5, r7, r2
 8000c6e:	9a04      	ldr	r2, [sp, #16]
 8000c70:	9507      	str	r5, [sp, #28]
 8000c72:	4011      	ands	r1, r2
 8000c74:	188c      	adds	r4, r1, r2
 8000c76:	9a03      	ldr	r2, [sp, #12]
 8000c78:	07d9      	lsls	r1, r3, #31
 8000c7a:	ea4f 0752 	mov.w	r7, r2, lsr #1
 8000c7e:	ea47 77cc 	orr.w	r7, r7, ip, lsl #31
 8000c82:	ea4f 055c 	mov.w	r5, ip, lsr #1
 8000c86:	bf5c      	itt	pl
 8000c88:	4617      	movpl	r7, r2
 8000c8a:	4665      	movpl	r5, ip
 8000c8c:	1c5a      	adds	r2, r3, #1
 8000c8e:	9a08      	ldr	r2, [sp, #32]
 8000c90:	9909      	ldr	r1, [sp, #36]	@ 0x24
 8000c92:	fb03 2c02 	mla	ip, r3, r2, r2
 8000c96:	ea4f 0250 	mov.w	r2, r0, lsr #1
 8000c9a:	f103 0b01 	add.w	fp, r3, #1
 8000c9e:	f04f 0900 	mov.w	r9, #0
 8000ca2:	ea42 72c6 	orr.w	r2, r2, r6, lsl #31
 8000ca6:	fb03 aa0a 	mla	sl, r3, sl, sl
 8000caa:	fb0b fe01 	mul.w	lr, fp, r1
 8000cae:	ea82 0200 	eor.w	r2, r2, r0
 8000cb2:	f149 0100 	adc.w	r1, r9, #0
 8000cb6:	3b01      	subs	r3, #1
 8000cb8:	ea02 0203 	and.w	r2, r2, r3
 8000cbc:	9b01      	ldr	r3, [sp, #4]
 8000cbe:	ea80 0002 	eor.w	r0, r0, r2
 8000cc2:	fb03 a201 	mla	r2, r3, r1, sl
 8000cc6:	9b02      	ldr	r3, [sp, #8]
 8000cc8:	ea86 0a56 	eor.w	sl, r6, r6, lsr #1
 8000ccc:	fb03 e301 	mla	r3, r3, r1, lr
 8000cd0:	f149 31ff 	adc.w	r1, r9, #4294967295	@ 0xffffffff
 8000cd4:	ea0a 0a01 	and.w	sl, sl, r1
 8000cd8:	9901      	ldr	r1, [sp, #4]
 8000cda:	fbab 1901 	umull	r1, r9, fp, r1
 8000cde:	4491      	add	r9, r2
 8000ce0:	9a02      	ldr	r2, [sp, #8]
 8000ce2:	9101      	str	r1, [sp, #4]
 8000ce4:	f108 0801 	add.w	r8, r8, #1
 8000ce8:	fbab 2b02 	umull	r2, fp, fp, r2
 8000cec:	f1b8 0f1f 	cmp.w	r8, #31
 8000cf0:	ea8a 0a06 	eor.w	sl, sl, r6
 8000cf4:	9202      	str	r2, [sp, #8]
 8000cf6:	449b      	add	fp, r3
 8000cf8:	f47f af46 	bne.w	8000b88 <br_i31_moddiv+0x154>
 8000cfc:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
 8000cfe:	2b00      	cmp	r3, #0
 8000d00:	f000 8188 	beq.w	8001014 <br_i31_moddiv+0x5e0>
 8000d04:	9d1c      	ldr	r5, [sp, #112]	@ 0x70
 8000d06:	f8dd 8050 	ldr.w	r8, [sp, #80]	@ 0x50
 8000d0a:	950b      	str	r5, [sp, #44]	@ 0x2c
 8000d0c:	2000      	movs	r0, #0
 8000d0e:	e9cd 9b08 	strd	r9, fp, [sp, #32]
 8000d12:	46ae      	mov	lr, r5
 8000d14:	9003      	str	r0, [sp, #12]
 8000d16:	4607      	mov	r7, r0
 8000d18:	f8cd 8030 	str.w	r8, [sp, #48]	@ 0x30
 8000d1c:	4683      	mov	fp, r0
 8000d1e:	9004      	str	r0, [sp, #16]
 8000d20:	f85e 4f04 	ldr.w	r4, [lr, #4]!
 8000d24:	9a00      	ldr	r2, [sp, #0]
 8000d26:	f858 5f04 	ldr.w	r5, [r8, #4]!
 8000d2a:	9b07      	ldr	r3, [sp, #28]
 8000d2c:	fba4 c602 	umull	ip, r6, r4, r2
 8000d30:	9a06      	ldr	r2, [sp, #24]
 8000d32:	fb04 6602 	mla	r6, r4, r2, r6
 8000d36:	9a05      	ldr	r2, [sp, #20]
 8000d38:	fba5 1202 	umull	r1, r2, r5, r2
 8000d3c:	fb05 2203 	mla	r2, r5, r3, r2
 8000d40:	9b03      	ldr	r3, [sp, #12]
 8000d42:	eb1c 0101 	adds.w	r1, ip, r1
 8000d46:	eb46 0202 	adc.w	r2, r6, r2
 8000d4a:	18c9      	adds	r1, r1, r3
 8000d4c:	9b01      	ldr	r3, [sp, #4]
 8000d4e:	eb4b 0202 	adc.w	r2, fp, r2
 8000d52:	0fce      	lsrs	r6, r1, #31
 8000d54:	ea46 0642 	orr.w	r6, r6, r2, lsl #1
 8000d58:	ea4f 7ae2 	mov.w	sl, r2, asr #31
 8000d5c:	fba4 2c03 	umull	r2, ip, r4, r3
 8000d60:	9b08      	ldr	r3, [sp, #32]
 8000d62:	9603      	str	r6, [sp, #12]
 8000d64:	fb04 c403 	mla	r4, r4, r3, ip
 8000d68:	9b02      	ldr	r3, [sp, #8]
 8000d6a:	fba5 9c03 	umull	r9, ip, r5, r3
 8000d6e:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 8000d70:	eb12 0209 	adds.w	r2, r2, r9
 8000d74:	fb05 cc03 	mla	ip, r5, r3, ip
 8000d78:	9b04      	ldr	r3, [sp, #16]
 8000d7a:	eb44 040c 	adc.w	r4, r4, ip
 8000d7e:	1812      	adds	r2, r2, r0
 8000d80:	f021 4100 	bic.w	r1, r1, #2147483648	@ 0x80000000
 8000d84:	46d3      	mov	fp, sl
 8000d86:	eb43 0404 	adc.w	r4, r3, r4
 8000d8a:	b12f      	cbz	r7, 8000d98 <br_i31_moddiv+0x364>
 8000d8c:	f022 4300 	bic.w	r3, r2, #2147483648	@ 0x80000000
 8000d90:	f84e 1c04 	str.w	r1, [lr, #-4]
 8000d94:	f848 3c04 	str.w	r3, [r8, #-4]
 8000d98:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
 8000d9a:	0fd2      	lsrs	r2, r2, #31
 8000d9c:	3701      	adds	r7, #1
 8000d9e:	ea42 0244 	orr.w	r2, r2, r4, lsl #1
 8000da2:	42bb      	cmp	r3, r7
 8000da4:	ea4f 74e4 	mov.w	r4, r4, asr #31
 8000da8:	4610      	mov	r0, r2
 8000daa:	9404      	str	r4, [sp, #16]
 8000dac:	d1b8      	bne.n	8000d20 <br_i31_moddiv+0x2ec>
 8000dae:	9b14      	ldr	r3, [sp, #80]	@ 0x50
 8000db0:	9d06      	ldr	r5, [sp, #24]
 8000db2:	601e      	str	r6, [r3, #0]
 8000db4:	4622      	mov	r2, r4
 8000db6:	9b10      	ldr	r3, [sp, #64]	@ 0x40
 8000db8:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
 8000dba:	6018      	str	r0, [r3, #0]
 8000dbc:	0fd2      	lsrs	r2, r2, #31
 8000dbe:	0053      	lsls	r3, r2, #1
 8000dc0:	f1d3 0701 	rsbs	r7, r3, #1
 8000dc4:	ea4f 739a 	mov.w	r3, sl, lsr #30
 8000dc8:	f003 0302 	and.w	r3, r3, #2
 8000dcc:	eb66 0606 	sbc.w	r6, r6, r6
 8000dd0:	9800      	ldr	r0, [sp, #0]
 8000dd2:	f1d3 0301 	rsbs	r3, r3, #1
 8000dd6:	eb61 0101 	sbc.w	r1, r1, r1
 8000dda:	fb00 f001 	mul.w	r0, r0, r1
 8000dde:	fb03 0e05 	mla	lr, r3, r5, r0
 8000de2:	9805      	ldr	r0, [sp, #20]
 8000de4:	9d07      	ldr	r5, [sp, #28]
 8000de6:	fb00 f101 	mul.w	r1, r0, r1
 8000dea:	fb03 1c05 	mla	ip, r3, r5, r1
 8000dee:	9802      	ldr	r0, [sp, #8]
 8000df0:	9901      	ldr	r1, [sp, #4]
 8000df2:	fb01 f106 	mul.w	r1, r1, r6
 8000df6:	fb00 f606 	mul.w	r6, r0, r6
 8000dfa:	9800      	ldr	r0, [sp, #0]
 8000dfc:	fba0 5003 	umull	r5, r0, r0, r3
 8000e00:	9500      	str	r5, [sp, #0]
 8000e02:	4605      	mov	r5, r0
 8000e04:	9805      	ldr	r0, [sp, #20]
 8000e06:	4475      	add	r5, lr
 8000e08:	e9dd 9b08 	ldrd	r9, fp, [sp, #32]
 8000e0c:	9506      	str	r5, [sp, #24]
 8000e0e:	fba0 5303 	umull	r5, r3, r0, r3
 8000e12:	9505      	str	r5, [sp, #20]
 8000e14:	eb0c 0503 	add.w	r5, ip, r3
 8000e18:	9b01      	ldr	r3, [sp, #4]
 8000e1a:	9802      	ldr	r0, [sp, #8]
 8000e1c:	9507      	str	r5, [sp, #28]
 8000e1e:	fb07 1109 	mla	r1, r7, r9, r1
 8000e22:	fba3 3907 	umull	r3, r9, r3, r7
 8000e26:	fb07 660b 	mla	r6, r7, fp, r6
 8000e2a:	9301      	str	r3, [sp, #4]
 8000e2c:	fba0 3b07 	umull	r3, fp, r0, r7
 8000e30:	44b3      	add	fp, r6
 8000e32:	9d0b      	ldr	r5, [sp, #44]	@ 0x2c
 8000e34:	9e1b      	ldr	r6, [sp, #108]	@ 0x6c
 8000e36:	9302      	str	r3, [sp, #8]
 8000e38:	4489      	add	r9, r1
 8000e3a:	ea4f 73da 	mov.w	r3, sl, lsr #31
 8000e3e:	ea4f 015a 	mov.w	r1, sl, lsr #1
 8000e42:	f855 0f04 	ldr.w	r0, [r5, #4]!
 8000e46:	4048      	eors	r0, r1
 8000e48:	4403      	add	r3, r0
 8000e4a:	f023 4000 	bic.w	r0, r3, #2147483648	@ 0x80000000
 8000e4e:	42ae      	cmp	r6, r5
 8000e50:	6028      	str	r0, [r5, #0]
 8000e52:	ea4f 73d3 	mov.w	r3, r3, lsr #31
 8000e56:	d1f4      	bne.n	8000e42 <br_i31_moddiv+0x40e>
 8000e58:	4253      	negs	r3, r2
 8000e5a:	9810      	ldr	r0, [sp, #64]	@ 0x40
 8000e5c:	085b      	lsrs	r3, r3, #1
 8000e5e:	f854 1f04 	ldr.w	r1, [r4, #4]!
 8000e62:	4059      	eors	r1, r3
 8000e64:	440a      	add	r2, r1
 8000e66:	f022 4100 	bic.w	r1, r2, #2147483648	@ 0x80000000
 8000e6a:	42a0      	cmp	r0, r4
 8000e6c:	6021      	str	r1, [r4, #0]
 8000e6e:	ea4f 72d2 	mov.w	r2, r2, lsr #31
 8000e72:	d1f4      	bne.n	8000e5e <br_i31_moddiv+0x42a>
 8000e74:	9a11      	ldr	r2, [sp, #68]	@ 0x44
 8000e76:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
 8000e78:	6851      	ldr	r1, [r2, #4]
 8000e7a:	681b      	ldr	r3, [r3, #0]
 8000e7c:	9802      	ldr	r0, [sp, #8]
 8000e7e:	9a05      	ldr	r2, [sp, #20]
 8000e80:	fb02 f203 	mul.w	r2, r2, r3
 8000e84:	fb00 f303 	mul.w	r3, r0, r3
 8000e88:	9800      	ldr	r0, [sp, #0]
 8000e8a:	fb00 2201 	mla	r2, r0, r1, r2
 8000e8e:	9801      	ldr	r0, [sp, #4]
 8000e90:	fb00 3301 	mla	r3, r0, r1, r3
 8000e94:	991a      	ldr	r1, [sp, #104]	@ 0x68
 8000e96:	fb01 f303 	mul.w	r3, r1, r3
 8000e9a:	f023 4300 	bic.w	r3, r3, #2147483648	@ 0x80000000
 8000e9e:	fb01 f202 	mul.w	r2, r1, r2
 8000ea2:	930c      	str	r3, [sp, #48]	@ 0x30
 8000ea4:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
 8000ea6:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
 8000eaa:	920b      	str	r2, [sp, #44]	@ 0x2c
 8000eac:	2b00      	cmp	r3, #0
 8000eae:	f000 80ad 	beq.w	800100c <br_i31_moddiv+0x5d8>
 8000eb2:	9b10      	ldr	r3, [sp, #64]	@ 0x40
 8000eb4:	9a16      	ldr	r2, [sp, #88]	@ 0x58
 8000eb6:	f8dd 8044 	ldr.w	r8, [sp, #68]	@ 0x44
 8000eba:	9203      	str	r2, [sp, #12]
 8000ebc:	e9cd 9b0d 	strd	r9, fp, [sp, #52]	@ 0x34
 8000ec0:	2100      	movs	r1, #0
 8000ec2:	9108      	str	r1, [sp, #32]
 8000ec4:	9104      	str	r1, [sp, #16]
 8000ec6:	468a      	mov	sl, r1
 8000ec8:	460e      	mov	r6, r1
 8000eca:	469e      	mov	lr, r3
 8000ecc:	9b03      	ldr	r3, [sp, #12]
 8000ece:	f858 4f04 	ldr.w	r4, [r8, #4]!
 8000ed2:	f853 bf04 	ldr.w	fp, [r3, #4]!
 8000ed6:	9303      	str	r3, [sp, #12]
 8000ed8:	9b00      	ldr	r3, [sp, #0]
 8000eda:	f85e 5f04 	ldr.w	r5, [lr, #4]!
 8000ede:	fba4 0203 	umull	r0, r2, r4, r3
 8000ee2:	9b06      	ldr	r3, [sp, #24]
 8000ee4:	fb04 2203 	mla	r2, r4, r3, r2
 8000ee8:	9b05      	ldr	r3, [sp, #20]
 8000eea:	fba5 3703 	umull	r3, r7, r5, r3
 8000eee:	18c3      	adds	r3, r0, r3
 8000ef0:	9807      	ldr	r0, [sp, #28]
 8000ef2:	fb05 7700 	mla	r7, r5, r0, r7
 8000ef6:	980b      	ldr	r0, [sp, #44]	@ 0x2c
 8000ef8:	eb42 0207 	adc.w	r2, r2, r7
 8000efc:	fbeb 3200 	umlal	r3, r2, fp, r0
 8000f00:	9804      	ldr	r0, [sp, #16]
 8000f02:	1818      	adds	r0, r3, r0
 8000f04:	eb4a 0202 	adc.w	r2, sl, r2
 8000f08:	0fc7      	lsrs	r7, r0, #31
 8000f0a:	ea47 0742 	orr.w	r7, r7, r2, lsl #1
 8000f0e:	17d3      	asrs	r3, r2, #31
 8000f10:	f020 4200 	bic.w	r2, r0, #2147483648	@ 0x80000000
 8000f14:	9209      	str	r2, [sp, #36]	@ 0x24
 8000f16:	9a01      	ldr	r2, [sp, #4]
 8000f18:	980d      	ldr	r0, [sp, #52]	@ 0x34
 8000f1a:	9704      	str	r7, [sp, #16]
 8000f1c:	fba4 2c02 	umull	r2, ip, r4, r2
 8000f20:	fb04 c400 	mla	r4, r4, r0, ip
 8000f24:	9802      	ldr	r0, [sp, #8]
 8000f26:	fba5 9c00 	umull	r9, ip, r5, r0
 8000f2a:	980e      	ldr	r0, [sp, #56]	@ 0x38
 8000f2c:	eb12 0209 	adds.w	r2, r2, r9
 8000f30:	fb05 cc00 	mla	ip, r5, r0, ip
 8000f34:	980c      	ldr	r0, [sp, #48]	@ 0x30
 8000f36:	eb44 040c 	adc.w	r4, r4, ip
 8000f3a:	fbeb 2400 	umlal	r2, r4, fp, r0
 8000f3e:	1852      	adds	r2, r2, r1
 8000f40:	9908      	ldr	r1, [sp, #32]
 8000f42:	469a      	mov	sl, r3
 8000f44:	eb41 0404 	adc.w	r4, r1, r4
 8000f48:	b136      	cbz	r6, 8000f58 <br_i31_moddiv+0x524>
 8000f4a:	9909      	ldr	r1, [sp, #36]	@ 0x24
 8000f4c:	f848 1c04 	str.w	r1, [r8, #-4]
 8000f50:	f022 4100 	bic.w	r1, r2, #2147483648	@ 0x80000000
 8000f54:	f84e 1c04 	str.w	r1, [lr, #-4]
 8000f58:	980a      	ldr	r0, [sp, #40]	@ 0x28
 8000f5a:	0fd2      	lsrs	r2, r2, #31
 8000f5c:	3601      	adds	r6, #1
 8000f5e:	ea42 0244 	orr.w	r2, r2, r4, lsl #1
 8000f62:	42b0      	cmp	r0, r6
 8000f64:	ea4f 74e4 	mov.w	r4, r4, asr #31
 8000f68:	4611      	mov	r1, r2
 8000f6a:	9408      	str	r4, [sp, #32]
 8000f6c:	d1ae      	bne.n	8000ecc <br_i31_moddiv+0x498>
 8000f6e:	0fdb      	lsrs	r3, r3, #31
 8000f70:	0fe4      	lsrs	r4, r4, #31
 8000f72:	9918      	ldr	r1, [sp, #96]	@ 0x60
 8000f74:	9e17      	ldr	r6, [sp, #92]	@ 0x5c
 8000f76:	9d0a      	ldr	r5, [sp, #40]	@ 0x28
 8000f78:	600f      	str	r7, [r1, #0]
 8000f7a:	9919      	ldr	r1, [sp, #100]	@ 0x64
 8000f7c:	9815      	ldr	r0, [sp, #84]	@ 0x54
 8000f7e:	600a      	str	r2, [r1, #0]
 8000f80:	4632      	mov	r2, r6
 8000f82:	4629      	mov	r1, r5
 8000f84:	f7ff fd2a 	bl	80009dc <finish_mod>
 8000f88:	4623      	mov	r3, r4
 8000f8a:	980f      	ldr	r0, [sp, #60]	@ 0x3c
 8000f8c:	4632      	mov	r2, r6
 8000f8e:	4629      	mov	r1, r5
 8000f90:	f7ff fd24 	bl	80009dc <finish_mod>
 8000f94:	9b12      	ldr	r3, [sp, #72]	@ 0x48
 8000f96:	3b1e      	subs	r3, #30
 8000f98:	2b1d      	cmp	r3, #29
 8000f9a:	9312      	str	r3, [sp, #72]	@ 0x48
 8000f9c:	f63f ad8f 	bhi.w	8000abe <br_i31_moddiv+0x8a>
 8000fa0:	9c1d      	ldr	r4, [sp, #116]	@ 0x74
 8000fa2:	990a      	ldr	r1, [sp, #40]	@ 0x28
 8000fa4:	9b28      	ldr	r3, [sp, #160]	@ 0xa0
 8000fa6:	9a28      	ldr	r2, [sp, #160]	@ 0xa0
 8000fa8:	681b      	ldr	r3, [r3, #0]
 8000faa:	f852 2021 	ldr.w	r2, [r2, r1, lsl #2]
 8000fae:	9811      	ldr	r0, [sp, #68]	@ 0x44
 8000fb0:	9f13      	ldr	r7, [sp, #76]	@ 0x4c
 8000fb2:	4313      	orrs	r3, r2
 8000fb4:	f083 0501 	eor.w	r5, r3, #1
 8000fb8:	f857 2021 	ldr.w	r2, [r7, r1, lsl #2]
 8000fbc:	6843      	ldr	r3, [r0, #4]
 8000fbe:	2901      	cmp	r1, #1
 8000fc0:	ea43 0302 	orr.w	r3, r3, r2
 8000fc4:	6043      	str	r3, [r0, #4]
 8000fc6:	d915      	bls.n	8000ff4 <br_i31_moddiv+0x5c0>
 8000fc8:	9828      	ldr	r0, [sp, #160]	@ 0xa0
 8000fca:	9e15      	ldr	r6, [sp, #84]	@ 0x54
 8000fcc:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
 8000fce:	f1a0 0e04 	sub.w	lr, r0, #4
 8000fd2:	44a6      	add	lr, r4
 8000fd4:	f850 2f04 	ldr.w	r2, [r0, #4]!
 8000fd8:	f857 cf04 	ldr.w	ip, [r7, #4]!
 8000fdc:	f856 1f04 	ldr.w	r1, [r6, #4]!
 8000fe0:	f853 4f04 	ldr.w	r4, [r3, #4]!
 8000fe4:	ea42 020c 	orr.w	r2, r2, ip
 8000fe8:	4321      	orrs	r1, r4
 8000fea:	4586      	cmp	lr, r0
 8000fec:	6031      	str	r1, [r6, #0]
 8000fee:	ea45 0502 	orr.w	r5, r5, r2
 8000ff2:	d1ef      	bne.n	8000fd4 <br_i31_moddiv+0x5a0>
 8000ff4:	1e68      	subs	r0, r5, #1
 8000ff6:	ea20 0005 	bic.w	r0, r0, r5
 8000ffa:	0fc0      	lsrs	r0, r0, #31
 8000ffc:	b01f      	add	sp, #124	@ 0x7c
 8000ffe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001002:	461d      	mov	r5, r3
 8001004:	461e      	mov	r6, r3
 8001006:	469a      	mov	sl, r3
 8001008:	4698      	mov	r8, r3
 800100a:	e5aa      	b.n	8000b62 <br_i31_moddiv+0x12e>
 800100c:	461f      	mov	r7, r3
 800100e:	461c      	mov	r4, r3
 8001010:	461a      	mov	r2, r3
 8001012:	e7ae      	b.n	8000f72 <br_i31_moddiv+0x53e>
 8001014:	9a14      	ldr	r2, [sp, #80]	@ 0x50
 8001016:	6013      	str	r3, [r2, #0]
 8001018:	9a10      	ldr	r2, [sp, #64]	@ 0x40
 800101a:	6013      	str	r3, [r2, #0]
 800101c:	e72a      	b.n	8000e74 <br_i31_moddiv+0x440>
 800101e:	bf00      	nop

08001020 <br_i31_modpow_opt>:
 8001020:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8001024:	461f      	mov	r7, r3
 8001026:	681b      	ldr	r3, [r3, #0]
 8001028:	b08f      	sub	sp, #60	@ 0x3c
 800102a:	333f      	adds	r3, #63	@ 0x3f
 800102c:	9208      	str	r2, [sp, #32]
 800102e:	095a      	lsrs	r2, r3, #5
 8001030:	910a      	str	r1, [sp, #40]	@ 0x28
 8001032:	1c53      	adds	r3, r2, #1
 8001034:	991a      	ldr	r1, [sp, #104]	@ 0x68
 8001036:	f023 0301 	bic.w	r3, r3, #1
 800103a:	ebb1 0f43 	cmp.w	r1, r3, lsl #1
 800103e:	e9dd 9618 	ldrd	r9, r6, [sp, #96]	@ 0x60
 8001042:	f0c0 80ed 	bcc.w	8001220 <br_i31_modpow_opt+0x200>
 8001046:	0092      	lsls	r2, r2, #2
 8001048:	009d      	lsls	r5, r3, #2
 800104a:	9203      	str	r2, [sp, #12]
 800104c:	eb03 1243 	add.w	r2, r3, r3, lsl #5
 8001050:	9506      	str	r5, [sp, #24]
 8001052:	4291      	cmp	r1, r2
 8001054:	eb06 0583 	add.w	r5, r6, r3, lsl #2
 8001058:	4604      	mov	r4, r0
 800105a:	9504      	str	r5, [sp, #16]
 800105c:	f080 8121 	bcs.w	80012a2 <br_i31_modpow_opt+0x282>
 8001060:	eb03 1203 	add.w	r2, r3, r3, lsl #4
 8001064:	4291      	cmp	r1, r2
 8001066:	f080 8112 	bcs.w	800128e <br_i31_modpow_opt+0x26e>
 800106a:	eb03 02c3 	add.w	r2, r3, r3, lsl #3
 800106e:	4291      	cmp	r1, r2
 8001070:	f080 8103 	bcs.w	800127a <br_i31_modpow_opt+0x25a>
 8001074:	009a      	lsls	r2, r3, #2
 8001076:	441a      	add	r2, r3
 8001078:	4291      	cmp	r1, r2
 800107a:	9305      	str	r3, [sp, #20]
 800107c:	4639      	mov	r1, r7
 800107e:	f080 80d3 	bcs.w	8001228 <br_i31_modpow_opt+0x208>
 8001082:	f000 fbcf 	bl	8001824 <br_i31_to_monty>
 8001086:	9a03      	ldr	r2, [sp, #12]
 8001088:	9804      	ldr	r0, [sp, #16]
 800108a:	4621      	mov	r1, r4
 800108c:	f002 fbcc 	bl	8003828 <memcpy>
 8001090:	2301      	movs	r3, #1
 8001092:	9307      	str	r3, [sp, #28]
 8001094:	9b05      	ldr	r3, [sp, #20]
 8001096:	683a      	ldr	r2, [r7, #0]
 8001098:	930b      	str	r3, [sp, #44]	@ 0x2c
 800109a:	4620      	mov	r0, r4
 800109c:	2100      	movs	r1, #0
 800109e:	f840 2b04 	str.w	r2, [r0], #4
 80010a2:	321f      	adds	r2, #31
 80010a4:	0952      	lsrs	r2, r2, #5
 80010a6:	0092      	lsls	r2, r2, #2
 80010a8:	f002 fb70 	bl	800378c <memset>
 80010ac:	683a      	ldr	r2, [r7, #0]
 80010ae:	321f      	adds	r2, #31
 80010b0:	0952      	lsrs	r2, r2, #5
 80010b2:	2001      	movs	r0, #1
 80010b4:	f844 0022 	str.w	r0, [r4, r2, lsl #2]
 80010b8:	2100      	movs	r1, #0
 80010ba:	463a      	mov	r2, r7
 80010bc:	4620      	mov	r0, r4
 80010be:	f000 fa35 	bl	800152c <br_i31_muladd_small>
 80010c2:	2300      	movs	r3, #0
 80010c4:	9305      	str	r3, [sp, #20]
 80010c6:	9309      	str	r3, [sp, #36]	@ 0x24
 80010c8:	9b06      	ldr	r3, [sp, #24]
 80010ca:	1f1d      	subs	r5, r3, #4
 80010cc:	9b04      	ldr	r3, [sp, #16]
 80010ce:	441d      	add	r5, r3
 80010d0:	3304      	adds	r3, #4
 80010d2:	930c      	str	r3, [sp, #48]	@ 0x30
 80010d4:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
 80010d6:	930d      	str	r3, [sp, #52]	@ 0x34
 80010d8:	9b05      	ldr	r3, [sp, #20]
 80010da:	2b00      	cmp	r3, #0
 80010dc:	dd41      	ble.n	8001162 <br_i31_modpow_opt+0x142>
 80010de:	9a05      	ldr	r2, [sp, #20]
 80010e0:	9b07      	ldr	r3, [sp, #28]
 80010e2:	429a      	cmp	r2, r3
 80010e4:	db55      	blt.n	8001192 <br_i31_modpow_opt+0x172>
 80010e6:	9909      	ldr	r1, [sp, #36]	@ 0x24
 80010e8:	1ad2      	subs	r2, r2, r3
 80010ea:	9205      	str	r2, [sp, #20]
 80010ec:	fa21 f802 	lsr.w	r8, r1, r2
 80010f0:	469b      	mov	fp, r3
 80010f2:	f8cd 9060 	str.w	r9, [sp, #96]	@ 0x60
 80010f6:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 80010fa:	fa03 f30b 	lsl.w	r3, r3, fp
 80010fe:	46a9      	mov	r9, r5
 8001100:	9d18      	ldr	r5, [sp, #96]	@ 0x60
 8001102:	ea28 0803 	bic.w	r8, r8, r3
 8001106:	f04f 0a00 	mov.w	sl, #0
 800110a:	463b      	mov	r3, r7
 800110c:	4622      	mov	r2, r4
 800110e:	4621      	mov	r1, r4
 8001110:	4630      	mov	r0, r6
 8001112:	9500      	str	r5, [sp, #0]
 8001114:	f000 f8d0 	bl	80012b8 <br_i31_montymul>
 8001118:	f10a 0a01 	add.w	sl, sl, #1
 800111c:	9a03      	ldr	r2, [sp, #12]
 800111e:	4631      	mov	r1, r6
 8001120:	4620      	mov	r0, r4
 8001122:	f002 fb81 	bl	8003828 <memcpy>
 8001126:	45d3      	cmp	fp, sl
 8001128:	d1ef      	bne.n	800110a <br_i31_modpow_opt+0xea>
 800112a:	9b07      	ldr	r3, [sp, #28]
 800112c:	9518      	str	r5, [sp, #96]	@ 0x60
 800112e:	2b01      	cmp	r3, #1
 8001130:	464d      	mov	r5, r9
 8001132:	f8dd 9060 	ldr.w	r9, [sp, #96]	@ 0x60
 8001136:	d135      	bne.n	80011a4 <br_i31_modpow_opt+0x184>
 8001138:	9a04      	ldr	r2, [sp, #16]
 800113a:	f8cd 9000 	str.w	r9, [sp]
 800113e:	463b      	mov	r3, r7
 8001140:	4621      	mov	r1, r4
 8001142:	4630      	mov	r0, r6
 8001144:	f000 f8b8 	bl	80012b8 <br_i31_montymul>
 8001148:	f1c8 0000 	rsb	r0, r8, #0
 800114c:	ea40 0008 	orr.w	r0, r0, r8
 8001150:	9b03      	ldr	r3, [sp, #12]
 8001152:	0fc0      	lsrs	r0, r0, #31
 8001154:	4632      	mov	r2, r6
 8001156:	4621      	mov	r1, r4
 8001158:	f7ff fa48 	bl	80005ec <br_ccopy>
 800115c:	9b05      	ldr	r3, [sp, #20]
 800115e:	2b00      	cmp	r3, #0
 8001160:	dcbd      	bgt.n	80010de <br_i31_modpow_opt+0xbe>
 8001162:	9b08      	ldr	r3, [sp, #32]
 8001164:	2b00      	cmp	r3, #0
 8001166:	d052      	beq.n	800120e <br_i31_modpow_opt+0x1ee>
 8001168:	9a05      	ldr	r2, [sp, #20]
 800116a:	9807      	ldr	r0, [sp, #28]
 800116c:	f8dd c028 	ldr.w	ip, [sp, #40]	@ 0x28
 8001170:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 8001172:	3208      	adds	r2, #8
 8001174:	1a11      	subs	r1, r2, r0
 8001176:	9a08      	ldr	r2, [sp, #32]
 8001178:	9105      	str	r1, [sp, #20]
 800117a:	3a01      	subs	r2, #1
 800117c:	9208      	str	r2, [sp, #32]
 800117e:	f81c 2b01 	ldrb.w	r2, [ip], #1
 8001182:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
 8001186:	e9cd 2c09 	strd	r2, ip, [sp, #36]	@ 0x24
 800118a:	fa22 f801 	lsr.w	r8, r2, r1
 800118e:	4683      	mov	fp, r0
 8001190:	e7af      	b.n	80010f2 <br_i31_modpow_opt+0xd2>
 8001192:	9b08      	ldr	r3, [sp, #32]
 8001194:	2b00      	cmp	r3, #0
 8001196:	d1e7      	bne.n	8001168 <br_i31_modpow_opt+0x148>
 8001198:	e9dd 3808 	ldrd	r3, r8, [sp, #32]
 800119c:	f8dd b014 	ldr.w	fp, [sp, #20]
 80011a0:	9305      	str	r3, [sp, #20]
 80011a2:	e7a6      	b.n	80010f2 <br_i31_modpow_opt+0xd2>
 80011a4:	683b      	ldr	r3, [r7, #0]
 80011a6:	9a04      	ldr	r2, [sp, #16]
 80011a8:	980c      	ldr	r0, [sp, #48]	@ 0x30
 80011aa:	6013      	str	r3, [r2, #0]
 80011ac:	331f      	adds	r3, #31
 80011ae:	095a      	lsrs	r2, r3, #5
 80011b0:	0092      	lsls	r2, r2, #2
 80011b2:	2100      	movs	r1, #0
 80011b4:	f002 faea 	bl	800378c <memset>
 80011b8:	9a04      	ldr	r2, [sp, #16]
 80011ba:	9b06      	ldr	r3, [sp, #24]
 80011bc:	f8dd c034 	ldr.w	ip, [sp, #52]	@ 0x34
 80011c0:	940b      	str	r4, [sp, #44]	@ 0x2c
 80011c2:	f04f 0e01 	mov.w	lr, #1
 80011c6:	eb02 0a03 	add.w	sl, r2, r3
 80011ca:	fa0e fb0b 	lsl.w	fp, lr, fp
 80011ce:	463a      	mov	r2, r7
 80011d0:	ea88 030e 	eor.w	r3, r8, lr
 80011d4:	425c      	negs	r4, r3
 80011d6:	431c      	orrs	r4, r3
 80011d8:	43e4      	mvns	r4, r4
 80011da:	f1bc 0f01 	cmp.w	ip, #1
 80011de:	ea4f 74d4 	mov.w	r4, r4, lsr #31
 80011e2:	d90b      	bls.n	80011fc <br_i31_modpow_opt+0x1dc>
 80011e4:	9b04      	ldr	r3, [sp, #16]
 80011e6:	4650      	mov	r0, sl
 80011e8:	f850 7f04 	ldr.w	r7, [r0, #4]!
 80011ec:	f853 1f04 	ldr.w	r1, [r3, #4]!
 80011f0:	fb04 f707 	mul.w	r7, r4, r7
 80011f4:	4339      	orrs	r1, r7
 80011f6:	42ab      	cmp	r3, r5
 80011f8:	6019      	str	r1, [r3, #0]
 80011fa:	d1f5      	bne.n	80011e8 <br_i31_modpow_opt+0x1c8>
 80011fc:	9b06      	ldr	r3, [sp, #24]
 80011fe:	f10e 0e01 	add.w	lr, lr, #1
 8001202:	45de      	cmp	lr, fp
 8001204:	449a      	add	sl, r3
 8001206:	d1e3      	bne.n	80011d0 <br_i31_modpow_opt+0x1b0>
 8001208:	9c0b      	ldr	r4, [sp, #44]	@ 0x2c
 800120a:	4617      	mov	r7, r2
 800120c:	e794      	b.n	8001138 <br_i31_modpow_opt+0x118>
 800120e:	4620      	mov	r0, r4
 8001210:	464a      	mov	r2, r9
 8001212:	4639      	mov	r1, r7
 8001214:	f7ff fb92 	bl	800093c <br_i31_from_monty>
 8001218:	2001      	movs	r0, #1
 800121a:	b00f      	add	sp, #60	@ 0x3c
 800121c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001220:	2000      	movs	r0, #0
 8001222:	b00f      	add	sp, #60	@ 0x3c
 8001224:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001228:	f000 fafc 	bl	8001824 <br_i31_to_monty>
 800122c:	2302      	movs	r3, #2
 800122e:	9307      	str	r3, [sp, #28]
 8001230:	9b05      	ldr	r3, [sp, #20]
 8001232:	f04f 0a04 	mov.w	sl, #4
 8001236:	9a04      	ldr	r2, [sp, #16]
 8001238:	9305      	str	r3, [sp, #20]
 800123a:	9b06      	ldr	r3, [sp, #24]
 800123c:	18d5      	adds	r5, r2, r3
 800123e:	4628      	mov	r0, r5
 8001240:	9a03      	ldr	r2, [sp, #12]
 8001242:	4621      	mov	r1, r4
 8001244:	f002 faf0 	bl	8003828 <memcpy>
 8001248:	9b05      	ldr	r3, [sp, #20]
 800124a:	f8dd b018 	ldr.w	fp, [sp, #24]
 800124e:	9619      	str	r6, [sp, #100]	@ 0x64
 8001250:	f04f 0802 	mov.w	r8, #2
 8001254:	462e      	mov	r6, r5
 8001256:	464d      	mov	r5, r9
 8001258:	4699      	mov	r9, r3
 800125a:	4631      	mov	r1, r6
 800125c:	445e      	add	r6, fp
 800125e:	9500      	str	r5, [sp, #0]
 8001260:	463b      	mov	r3, r7
 8001262:	4622      	mov	r2, r4
 8001264:	4630      	mov	r0, r6
 8001266:	f108 0801 	add.w	r8, r8, #1
 800126a:	f000 f825 	bl	80012b8 <br_i31_montymul>
 800126e:	45d0      	cmp	r8, sl
 8001270:	d1f3      	bne.n	800125a <br_i31_modpow_opt+0x23a>
 8001272:	464b      	mov	r3, r9
 8001274:	9e19      	ldr	r6, [sp, #100]	@ 0x64
 8001276:	46a9      	mov	r9, r5
 8001278:	e70d      	b.n	8001096 <br_i31_modpow_opt+0x76>
 800127a:	4639      	mov	r1, r7
 800127c:	9305      	str	r3, [sp, #20]
 800127e:	f000 fad1 	bl	8001824 <br_i31_to_monty>
 8001282:	2303      	movs	r3, #3
 8001284:	9307      	str	r3, [sp, #28]
 8001286:	f04f 0a08 	mov.w	sl, #8
 800128a:	9b05      	ldr	r3, [sp, #20]
 800128c:	e7d3      	b.n	8001236 <br_i31_modpow_opt+0x216>
 800128e:	4639      	mov	r1, r7
 8001290:	9305      	str	r3, [sp, #20]
 8001292:	f000 fac7 	bl	8001824 <br_i31_to_monty>
 8001296:	2304      	movs	r3, #4
 8001298:	9307      	str	r3, [sp, #28]
 800129a:	f04f 0a10 	mov.w	sl, #16
 800129e:	9b05      	ldr	r3, [sp, #20]
 80012a0:	e7c9      	b.n	8001236 <br_i31_modpow_opt+0x216>
 80012a2:	4639      	mov	r1, r7
 80012a4:	9305      	str	r3, [sp, #20]
 80012a6:	f000 fabd 	bl	8001824 <br_i31_to_monty>
 80012aa:	2305      	movs	r3, #5
 80012ac:	9307      	str	r3, [sp, #28]
 80012ae:	f04f 0a20 	mov.w	sl, #32
 80012b2:	9b05      	ldr	r3, [sp, #20]
 80012b4:	e7bf      	b.n	8001236 <br_i31_modpow_opt+0x216>
 80012b6:	bf00      	nop

080012b8 <br_i31_montymul>:
 80012b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80012bc:	b089      	sub	sp, #36	@ 0x24
 80012be:	469b      	mov	fp, r3
 80012c0:	9b12      	ldr	r3, [sp, #72]	@ 0x48
 80012c2:	9304      	str	r3, [sp, #16]
 80012c4:	f8db 3000 	ldr.w	r3, [fp]
 80012c8:	4606      	mov	r6, r0
 80012ca:	f840 3b04 	str.w	r3, [r0], #4
 80012ce:	331f      	adds	r3, #31
 80012d0:	095c      	lsrs	r4, r3, #5
 80012d2:	00a7      	lsls	r7, r4, #2
 80012d4:	460d      	mov	r5, r1
 80012d6:	4690      	mov	r8, r2
 80012d8:	f024 0303 	bic.w	r3, r4, #3
 80012dc:	463a      	mov	r2, r7
 80012de:	2100      	movs	r1, #0
 80012e0:	9303      	str	r3, [sp, #12]
 80012e2:	f002 fa53 	bl	800378c <memset>
 80012e6:	2c00      	cmp	r4, #0
 80012e8:	f000 80c1 	beq.w	800146e <br_i31_montymul+0x1b6>
 80012ec:	19f1      	adds	r1, r6, r7
 80012ee:	f024 0203 	bic.w	r2, r4, #3
 80012f2:	9106      	str	r1, [sp, #24]
 80012f4:	19e9      	adds	r1, r5, r7
 80012f6:	462b      	mov	r3, r5
 80012f8:	9105      	str	r1, [sp, #20]
 80012fa:	eb06 0582 	add.w	r5, r6, r2, lsl #2
 80012fe:	2100      	movs	r1, #0
 8001300:	3a04      	subs	r2, #4
 8001302:	9101      	str	r1, [sp, #4]
 8001304:	9207      	str	r2, [sp, #28]
 8001306:	9300      	str	r3, [sp, #0]
 8001308:	46b6      	mov	lr, r6
 800130a:	4647      	mov	r7, r8
 800130c:	9b00      	ldr	r3, [sp, #0]
 800130e:	687a      	ldr	r2, [r7, #4]
 8001310:	f853 1f04 	ldr.w	r1, [r3, #4]!
 8001314:	f8de 0004 	ldr.w	r0, [lr, #4]
 8001318:	9300      	str	r3, [sp, #0]
 800131a:	fb01 f202 	mul.w	r2, r1, r2
 800131e:	9b04      	ldr	r3, [sp, #16]
 8001320:	f022 4200 	bic.w	r2, r2, #2147483648	@ 0x80000000
 8001324:	4402      	add	r2, r0
 8001326:	fb03 f202 	mul.w	r2, r3, r2
 800132a:	9b03      	ldr	r3, [sp, #12]
 800132c:	f022 4c00 	bic.w	ip, r2, #2147483648	@ 0x80000000
 8001330:	2b00      	cmp	r3, #0
 8001332:	f000 80ae 	beq.w	8001492 <br_i31_montymul+0x1da>
 8001336:	4672      	mov	r2, lr
 8001338:	46f1      	mov	r9, lr
 800133a:	465e      	mov	r6, fp
 800133c:	4638      	mov	r0, r7
 800133e:	f04f 0800 	mov.w	r8, #0
 8001342:	9402      	str	r4, [sp, #8]
 8001344:	46be      	mov	lr, r7
 8001346:	6843      	ldr	r3, [r0, #4]
 8001348:	6877      	ldr	r7, [r6, #4]
 800134a:	6854      	ldr	r4, [r2, #4]
 800134c:	fba3 3a01 	umull	r3, sl, r3, r1
 8001350:	fbe7 3a0c 	umlal	r3, sl, r7, ip
 8001354:	191b      	adds	r3, r3, r4
 8001356:	f14a 0400 	adc.w	r4, sl, #0
 800135a:	eb13 0308 	adds.w	r3, r3, r8
 800135e:	f023 4700 	bic.w	r7, r3, #2147483648	@ 0x80000000
 8001362:	6017      	str	r7, [r2, #0]
 8001364:	ea4f 7ad3 	mov.w	sl, r3, lsr #31
 8001368:	6883      	ldr	r3, [r0, #8]
 800136a:	68b7      	ldr	r7, [r6, #8]
 800136c:	f144 0400 	adc.w	r4, r4, #0
 8001370:	ea4a 0a44 	orr.w	sl, sl, r4, lsl #1
 8001374:	fba3 3801 	umull	r3, r8, r3, r1
 8001378:	6894      	ldr	r4, [r2, #8]
 800137a:	fbe7 380c 	umlal	r3, r8, r7, ip
 800137e:	191b      	adds	r3, r3, r4
 8001380:	f148 0400 	adc.w	r4, r8, #0
 8001384:	eb13 030a 	adds.w	r3, r3, sl
 8001388:	f023 4700 	bic.w	r7, r3, #2147483648	@ 0x80000000
 800138c:	6057      	str	r7, [r2, #4]
 800138e:	ea4f 78d3 	mov.w	r8, r3, lsr #31
 8001392:	68c3      	ldr	r3, [r0, #12]
 8001394:	68f7      	ldr	r7, [r6, #12]
 8001396:	f144 0400 	adc.w	r4, r4, #0
 800139a:	ea48 0844 	orr.w	r8, r8, r4, lsl #1
 800139e:	fba3 3a01 	umull	r3, sl, r3, r1
 80013a2:	68d4      	ldr	r4, [r2, #12]
 80013a4:	fbe7 3a0c 	umlal	r3, sl, r7, ip
 80013a8:	191b      	adds	r3, r3, r4
 80013aa:	f14a 0a00 	adc.w	sl, sl, #0
 80013ae:	eb13 0308 	adds.w	r3, r3, r8
 80013b2:	f023 4400 	bic.w	r4, r3, #2147483648	@ 0x80000000
 80013b6:	6094      	str	r4, [r2, #8]
 80013b8:	f850 7f10 	ldr.w	r7, [r0, #16]!
 80013bc:	f14a 0a00 	adc.w	sl, sl, #0
 80013c0:	0fdc      	lsrs	r4, r3, #31
 80013c2:	f856 3f10 	ldr.w	r3, [r6, #16]!
 80013c6:	ea44 044a 	orr.w	r4, r4, sl, lsl #1
 80013ca:	fba7 7a01 	umull	r7, sl, r7, r1
 80013ce:	fbe3 7a0c 	umlal	r7, sl, r3, ip
 80013d2:	6913      	ldr	r3, [r2, #16]
 80013d4:	18ff      	adds	r7, r7, r3
 80013d6:	f14a 0a00 	adc.w	sl, sl, #0
 80013da:	193f      	adds	r7, r7, r4
 80013dc:	f027 4300 	bic.w	r3, r7, #2147483648	@ 0x80000000
 80013e0:	60d3      	str	r3, [r2, #12]
 80013e2:	f102 0210 	add.w	r2, r2, #16
 80013e6:	f14a 0a00 	adc.w	sl, sl, #0
 80013ea:	0fff      	lsrs	r7, r7, #31
 80013ec:	4295      	cmp	r5, r2
 80013ee:	ea47 084a 	orr.w	r8, r7, sl, lsl #1
 80013f2:	d1a8      	bne.n	8001346 <br_i31_montymul+0x8e>
 80013f4:	9b07      	ldr	r3, [sp, #28]
 80013f6:	9c02      	ldr	r4, [sp, #8]
 80013f8:	1d18      	adds	r0, r3, #4
 80013fa:	4284      	cmp	r4, r0
 80013fc:	4677      	mov	r7, lr
 80013fe:	46ce      	mov	lr, r9
 8001400:	d923      	bls.n	800144a <br_i31_montymul+0x192>
 8001402:	eb0e 0680 	add.w	r6, lr, r0, lsl #2
 8001406:	eb0b 0a80 	add.w	sl, fp, r0, lsl #2
 800140a:	eb07 0980 	add.w	r9, r7, r0, lsl #2
 800140e:	9502      	str	r5, [sp, #8]
 8001410:	4662      	mov	r2, ip
 8001412:	f859 3f04 	ldr.w	r3, [r9, #4]!
 8001416:	f85a 5f04 	ldr.w	r5, [sl, #4]!
 800141a:	fba3 3c01 	umull	r3, ip, r3, r1
 800141e:	fbe5 3c02 	umlal	r3, ip, r5, r2
 8001422:	6875      	ldr	r5, [r6, #4]
 8001424:	195b      	adds	r3, r3, r5
 8001426:	f14c 0c00 	adc.w	ip, ip, #0
 800142a:	3001      	adds	r0, #1
 800142c:	eb13 0308 	adds.w	r3, r3, r8
 8001430:	f14c 0c00 	adc.w	ip, ip, #0
 8001434:	ea4f 78d3 	mov.w	r8, r3, lsr #31
 8001438:	42a0      	cmp	r0, r4
 800143a:	f023 4300 	bic.w	r3, r3, #2147483648	@ 0x80000000
 800143e:	f846 3b04 	str.w	r3, [r6], #4
 8001442:	ea48 084c 	orr.w	r8, r8, ip, lsl #1
 8001446:	d3e4      	bcc.n	8001412 <br_i31_montymul+0x15a>
 8001448:	9d02      	ldr	r5, [sp, #8]
 800144a:	9b01      	ldr	r3, [sp, #4]
 800144c:	4443      	add	r3, r8
 800144e:	f023 4200 	bic.w	r2, r3, #2147483648	@ 0x80000000
 8001452:	4698      	mov	r8, r3
 8001454:	9b06      	ldr	r3, [sp, #24]
 8001456:	601a      	str	r2, [r3, #0]
 8001458:	ea4f 73d8 	mov.w	r3, r8, lsr #31
 800145c:	9a00      	ldr	r2, [sp, #0]
 800145e:	9301      	str	r3, [sp, #4]
 8001460:	9b05      	ldr	r3, [sp, #20]
 8001462:	4293      	cmp	r3, r2
 8001464:	f47f af52 	bne.w	800130c <br_i31_montymul+0x54>
 8001468:	4647      	mov	r7, r8
 800146a:	4676      	mov	r6, lr
 800146c:	0ffc      	lsrs	r4, r7, #31
 800146e:	f8db 3000 	ldr.w	r3, [fp]
 8001472:	6033      	str	r3, [r6, #0]
 8001474:	4659      	mov	r1, fp
 8001476:	2200      	movs	r2, #0
 8001478:	4630      	mov	r0, r6
 800147a:	f000 f9b1 	bl	80017e0 <br_i31_sub>
 800147e:	f080 0201 	eor.w	r2, r0, #1
 8001482:	4322      	orrs	r2, r4
 8001484:	4659      	mov	r1, fp
 8001486:	4630      	mov	r0, r6
 8001488:	b009      	add	sp, #36	@ 0x24
 800148a:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800148e:	f000 b9a7 	b.w	80017e0 <br_i31_sub>
 8001492:	9803      	ldr	r0, [sp, #12]
 8001494:	4680      	mov	r8, r0
 8001496:	e7b4      	b.n	8001402 <br_i31_montymul+0x14a>

08001498 <br_i31_mulacc>:
 8001498:	f8d1 c000 	ldr.w	ip, [r1]
 800149c:	6813      	ldr	r3, [r2, #0]
 800149e:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80014a2:	095c      	lsrs	r4, r3, #5
 80014a4:	460f      	mov	r7, r1
 80014a6:	f00c 061f 	and.w	r6, ip, #31
 80014aa:	f003 011f 	and.w	r1, r3, #31
 80014ae:	440e      	add	r6, r1
 80014b0:	eb04 145c 	add.w	r4, r4, ip, lsr #5
 80014b4:	eb06 1444 	add.w	r4, r6, r4, lsl #5
 80014b8:	331f      	adds	r3, #31
 80014ba:	f1c6 061e 	rsb	r6, r6, #30
 80014be:	eb04 74d6 	add.w	r4, r4, r6, lsr #31
 80014c2:	095b      	lsrs	r3, r3, #5
 80014c4:	4615      	mov	r5, r2
 80014c6:	6004      	str	r4, [r0, #0]
 80014c8:	d00e      	beq.n	80014e8 <br_i31_mulacc+0x50>
 80014ca:	f10c 021f 	add.w	r2, ip, #31
 80014ce:	0952      	lsrs	r2, r2, #5
 80014d0:	eb00 0182 	add.w	r1, r0, r2, lsl #2
 80014d4:	eb05 0a83 	add.w	sl, r5, r3, lsl #2
 80014d8:	ea4f 0882 	mov.w	r8, r2, lsl #2
 80014dc:	3504      	adds	r5, #4
 80014de:	b92a      	cbnz	r2, 80014ec <br_i31_mulacc+0x54>
 80014e0:	45aa      	cmp	sl, r5
 80014e2:	f841 2f04 	str.w	r2, [r1, #4]!
 80014e6:	d1f9      	bne.n	80014dc <br_i31_mulacc+0x44>
 80014e8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80014ec:	6828      	ldr	r0, [r5, #0]
 80014ee:	2400      	movs	r4, #0
 80014f0:	eba1 0c08 	sub.w	ip, r1, r8
 80014f4:	46be      	mov	lr, r7
 80014f6:	2200      	movs	r2, #0
 80014f8:	f85c 3f04 	ldr.w	r3, [ip, #4]!
 80014fc:	f85e 6f04 	ldr.w	r6, [lr, #4]!
 8001500:	46a1      	mov	r9, r4
 8001502:	fbe6 3900 	umlal	r3, r9, r6, r0
 8001506:	189b      	adds	r3, r3, r2
 8001508:	f149 0900 	adc.w	r9, r9, #0
 800150c:	0fda      	lsrs	r2, r3, #31
 800150e:	4561      	cmp	r1, ip
 8001510:	f023 4300 	bic.w	r3, r3, #2147483648	@ 0x80000000
 8001514:	f8cc 3000 	str.w	r3, [ip]
 8001518:	ea42 0249 	orr.w	r2, r2, r9, lsl #1
 800151c:	d1ec      	bne.n	80014f8 <br_i31_mulacc+0x60>
 800151e:	4555      	cmp	r5, sl
 8001520:	f841 2f04 	str.w	r2, [r1, #4]!
 8001524:	d0e0      	beq.n	80014e8 <br_i31_mulacc+0x50>
 8001526:	f855 0f04 	ldr.w	r0, [r5, #4]!
 800152a:	e7e1      	b.n	80014f0 <br_i31_mulacc+0x58>

0800152c <br_i31_muladd_small>:
 800152c:	6813      	ldr	r3, [r2, #0]
 800152e:	2b00      	cmp	r3, #0
 8001530:	f000 80c0 	beq.w	80016b4 <br_i31_muladd_small+0x188>
 8001534:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8001538:	2b1f      	cmp	r3, #31
 800153a:	b085      	sub	sp, #20
 800153c:	4616      	mov	r6, r2
 800153e:	4605      	mov	r5, r0
 8001540:	468a      	mov	sl, r1
 8001542:	f240 80b8 	bls.w	80016b6 <br_i31_muladd_small+0x18a>
 8001546:	f103 041f 	add.w	r4, r3, #31
 800154a:	0964      	lsrs	r4, r4, #5
 800154c:	00a1      	lsls	r1, r4, #2
 800154e:	1e62      	subs	r2, r4, #1
 8001550:	f013 081f 	ands.w	r8, r3, #31
 8001554:	f850 7024 	ldr.w	r7, [r0, r4, lsl #2]
 8001558:	9101      	str	r1, [sp, #4]
 800155a:	ea4f 0282 	mov.w	r2, r2, lsl #2
 800155e:	f100 0008 	add.w	r0, r0, #8
 8001562:	f105 0104 	add.w	r1, r5, #4
 8001566:	f000 809b 	beq.w	80016a0 <br_i31_muladd_small+0x174>
 800156a:	f104 4b80 	add.w	fp, r4, #1073741824	@ 0x40000000
 800156e:	f10b 3bff 	add.w	fp, fp, #4294967295	@ 0xffffffff
 8001572:	f855 302b 	ldr.w	r3, [r5, fp, lsl #2]
 8001576:	fa23 f908 	lsr.w	r9, r3, r8
 800157a:	f1c8 031f 	rsb	r3, r8, #31
 800157e:	fa07 f303 	lsl.w	r3, r7, r3
 8001582:	ea49 0903 	orr.w	r9, r9, r3
 8001586:	f002 f885 	bl	8003694 <memmove>
 800158a:	f8c5 a004 	str.w	sl, [r5, #4]
 800158e:	f855 3024 	ldr.w	r3, [r5, r4, lsl #2]
 8001592:	f855 202b 	ldr.w	r2, [r5, fp, lsl #2]
 8001596:	f1c8 001f 	rsb	r0, r8, #31
 800159a:	fa03 f100 	lsl.w	r1, r3, r0
 800159e:	f856 302b 	ldr.w	r3, [r6, fp, lsl #2]
 80015a2:	fa22 f208 	lsr.w	r2, r2, r8
 80015a6:	fa23 f808 	lsr.w	r8, r3, r8
 80015aa:	f856 3024 	ldr.w	r3, [r6, r4, lsl #2]
 80015ae:	4083      	lsls	r3, r0
 80015b0:	4311      	orrs	r1, r2
 80015b2:	ea48 0803 	orr.w	r8, r8, r3
 80015b6:	f029 4900 	bic.w	r9, r9, #2147483648	@ 0x80000000
 80015ba:	f021 4100 	bic.w	r1, r1, #2147483648	@ 0x80000000
 80015be:	f028 4800 	bic.w	r8, r8, #2147483648	@ 0x80000000
 80015c2:	4642      	mov	r2, r8
 80015c4:	ab03      	add	r3, sp, #12
 80015c6:	ea41 71c9 	orr.w	r1, r1, r9, lsl #31
 80015ca:	ea4f 0059 	mov.w	r0, r9, lsr #1
 80015ce:	f000 f939 	bl	8001844 <br_divrem>
 80015d2:	4242      	negs	r2, r0
 80015d4:	4302      	orrs	r2, r0
 80015d6:	ea89 0808 	eor.w	r8, r9, r8
 80015da:	43d2      	mvns	r2, r2
 80015dc:	3801      	subs	r0, #1
 80015de:	0fd2      	lsrs	r2, r2, #31
 80015e0:	f1c8 0300 	rsb	r3, r8, #0
 80015e4:	fb00 f202 	mul.w	r2, r0, r2
 80015e8:	ea53 0308 	orrs.w	r3, r3, r8
 80015ec:	ea82 0200 	eor.w	r2, r2, r0
 80015f0:	bf58      	it	pl
 80015f2:	f06f 4200 	mvnpl.w	r2, #2147483648	@ 0x80000000
 80015f6:	2c00      	cmp	r4, #0
 80015f8:	d06a      	beq.n	80016d0 <br_i31_muladd_small+0x1a4>
 80015fa:	9b01      	ldr	r3, [sp, #4]
 80015fc:	2400      	movs	r4, #0
 80015fe:	4433      	add	r3, r6
 8001600:	4698      	mov	r8, r3
 8001602:	46b4      	mov	ip, r6
 8001604:	4628      	mov	r0, r5
 8001606:	2101      	movs	r1, #1
 8001608:	46a6      	mov	lr, r4
 800160a:	f85c 9f04 	ldr.w	r9, [ip, #4]!
 800160e:	f850 3f04 	ldr.w	r3, [r0, #4]!
 8001612:	46f2      	mov	sl, lr
 8001614:	fbe9 4a02 	umlal	r4, sl, r9, r2
 8001618:	f024 4b00 	bic.w	fp, r4, #2147483648	@ 0x80000000
 800161c:	0fe4      	lsrs	r4, r4, #31
 800161e:	eba3 030b 	sub.w	r3, r3, fp
 8001622:	ea44 044a 	orr.w	r4, r4, sl, lsl #1
 8001626:	eb04 74d3 	add.w	r4, r4, r3, lsr #31
 800162a:	f023 4300 	bic.w	r3, r3, #2147483648	@ 0x80000000
 800162e:	eba9 0a03 	sub.w	sl, r9, r3
 8001632:	6003      	str	r3, [r0, #0]
 8001634:	ea89 0903 	eor.w	r9, r9, r3
 8001638:	ea83 030a 	eor.w	r3, r3, sl
 800163c:	ea03 0309 	and.w	r3, r3, r9
 8001640:	ea83 030a 	eor.w	r3, r3, sl
 8001644:	f1c9 0a00 	rsb	sl, r9, #0
 8001648:	ea81 71d3 	eor.w	r1, r1, r3, lsr #31
 800164c:	ea4a 0909 	orr.w	r9, sl, r9
 8001650:	f1b9 0f00 	cmp.w	r9, #0
 8001654:	bfb4      	ite	lt
 8001656:	2100      	movlt	r1, #0
 8001658:	f001 0101 	andge.w	r1, r1, #1
 800165c:	45e0      	cmp	r8, ip
 800165e:	ea81 71d3 	eor.w	r1, r1, r3, lsr #31
 8001662:	d1d2      	bne.n	800160a <br_i31_muladd_small+0xde>
 8001664:	1b3a      	subs	r2, r7, r4
 8001666:	ea84 0302 	eor.w	r3, r4, r2
 800166a:	ea87 0004 	eor.w	r0, r7, r4
 800166e:	4003      	ands	r3, r0
 8001670:	4053      	eors	r3, r2
 8001672:	0fda      	lsrs	r2, r3, #31
 8001674:	ea6f 73d3 	mvn.w	r3, r3, lsr #31
 8001678:	1be4      	subs	r4, r4, r7
 800167a:	4067      	eors	r7, r4
 800167c:	4007      	ands	r7, r0
 800167e:	4067      	eors	r7, r4
 8001680:	ea41 71d7 	orr.w	r1, r1, r7, lsr #31
 8001684:	ea01 0403 	and.w	r4, r1, r3
 8001688:	4628      	mov	r0, r5
 800168a:	4631      	mov	r1, r6
 800168c:	f7fe ffe0 	bl	8000650 <br_i31_add>
 8001690:	4622      	mov	r2, r4
 8001692:	4631      	mov	r1, r6
 8001694:	4628      	mov	r0, r5
 8001696:	b005      	add	sp, #20
 8001698:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800169c:	f000 b8a0 	b.w	80017e0 <br_i31_sub>
 80016a0:	f001 fff8 	bl	8003694 <memmove>
 80016a4:	f8c5 a004 	str.w	sl, [r5, #4]
 80016a8:	f855 1024 	ldr.w	r1, [r5, r4, lsl #2]
 80016ac:	f856 8024 	ldr.w	r8, [r6, r4, lsl #2]
 80016b0:	46b9      	mov	r9, r7
 80016b2:	e786      	b.n	80015c2 <br_i31_muladd_small+0x96>
 80016b4:	4770      	bx	lr
 80016b6:	6840      	ldr	r0, [r0, #4]
 80016b8:	6852      	ldr	r2, [r2, #4]
 80016ba:	ab03      	add	r3, sp, #12
 80016bc:	ea41 71c0 	orr.w	r1, r1, r0, lsl #31
 80016c0:	0840      	lsrs	r0, r0, #1
 80016c2:	f000 f8bf 	bl	8001844 <br_divrem>
 80016c6:	9b03      	ldr	r3, [sp, #12]
 80016c8:	606b      	str	r3, [r5, #4]
 80016ca:	b005      	add	sp, #20
 80016cc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80016d0:	4622      	mov	r2, r4
 80016d2:	4638      	mov	r0, r7
 80016d4:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 80016d8:	2101      	movs	r1, #1
 80016da:	e7cd      	b.n	8001678 <br_i31_muladd_small+0x14c>

080016dc <br_i31_ninv31>:
 80016dc:	f1c0 0202 	rsb	r2, r0, #2
 80016e0:	fb02 f300 	mul.w	r3, r2, r0
 80016e4:	f1c3 0302 	rsb	r3, r3, #2
 80016e8:	fb02 f303 	mul.w	r3, r2, r3
 80016ec:	fb03 f200 	mul.w	r2, r3, r0
 80016f0:	f1c2 0202 	rsb	r2, r2, #2
 80016f4:	fb03 f202 	mul.w	r2, r3, r2
 80016f8:	fb02 f300 	mul.w	r3, r2, r0
 80016fc:	f1c3 0302 	rsb	r3, r3, #2
 8001700:	fb02 f303 	mul.w	r3, r2, r3
 8001704:	fb03 f200 	mul.w	r2, r3, r0
 8001708:	f000 0001 	and.w	r0, r0, #1
 800170c:	fb03 f000 	mul.w	r0, r3, r0
 8001710:	1e93      	subs	r3, r2, #2
 8001712:	fb03 f000 	mul.w	r0, r3, r0
 8001716:	f020 4000 	bic.w	r0, r0, #2147483648	@ 0x80000000
 800171a:	4770      	bx	lr

0800171c <br_i31_reduce>:
 800171c:	6813      	ldr	r3, [r2, #0]
 800171e:	6003      	str	r3, [r0, #0]
 8001720:	b3db      	cbz	r3, 800179a <br_i31_reduce+0x7e>
 8001722:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001726:	4617      	mov	r7, r2
 8001728:	680a      	ldr	r2, [r1, #0]
 800172a:	f103 081f 	add.w	r8, r3, #31
 800172e:	f102 051f 	add.w	r5, r2, #31
 8001732:	4293      	cmp	r3, r2
 8001734:	4606      	mov	r6, r0
 8001736:	ea4f 1858 	mov.w	r8, r8, lsr #5
 800173a:	f100 0004 	add.w	r0, r0, #4
 800173e:	ea4f 1555 	mov.w	r5, r5, lsr #5
 8001742:	d819      	bhi.n	8001778 <br_i31_reduce+0x5c>
 8001744:	eba5 0508 	sub.w	r5, r5, r8
 8001748:	1cab      	adds	r3, r5, #2
 800174a:	eb01 0483 	add.w	r4, r1, r3, lsl #2
 800174e:	f108 32ff 	add.w	r2, r8, #4294967295	@ 0xffffffff
 8001752:	0092      	lsls	r2, r2, #2
 8001754:	4621      	mov	r1, r4
 8001756:	f002 f867 	bl	8003828 <memcpy>
 800175a:	2300      	movs	r3, #0
 800175c:	3501      	adds	r5, #1
 800175e:	f846 3028 	str.w	r3, [r6, r8, lsl #2]
 8001762:	d007      	beq.n	8001774 <br_i31_reduce+0x58>
 8001764:	f854 1d04 	ldr.w	r1, [r4, #-4]!
 8001768:	463a      	mov	r2, r7
 800176a:	4630      	mov	r0, r6
 800176c:	f7ff fede 	bl	800152c <br_i31_muladd_small>
 8001770:	3d01      	subs	r5, #1
 8001772:	d1f7      	bne.n	8001764 <br_i31_reduce+0x48>
 8001774:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001778:	00ac      	lsls	r4, r5, #2
 800177a:	3104      	adds	r1, #4
 800177c:	4622      	mov	r2, r4
 800177e:	f002 f853 	bl	8003828 <memcpy>
 8001782:	45a8      	cmp	r8, r5
 8001784:	d9f6      	bls.n	8001774 <br_i31_reduce+0x58>
 8001786:	eba8 0505 	sub.w	r5, r8, r5
 800178a:	1d20      	adds	r0, r4, #4
 800178c:	00aa      	lsls	r2, r5, #2
 800178e:	4430      	add	r0, r6
 8001790:	2100      	movs	r1, #0
 8001792:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8001796:	f001 bff9 	b.w	800378c <memset>
 800179a:	4770      	bx	lr

0800179c <br_i31_rshift>:
 800179c:	6803      	ldr	r3, [r0, #0]
 800179e:	331f      	adds	r3, #31
 80017a0:	ea5f 1c53 	movs.w	ip, r3, lsr #5
 80017a4:	d01a      	beq.n	80017dc <br_i31_rshift+0x40>
 80017a6:	b570      	push	{r4, r5, r6, lr}
 80017a8:	6845      	ldr	r5, [r0, #4]
 80017aa:	f1bc 0f01 	cmp.w	ip, #1
 80017ae:	fa25 f501 	lsr.w	r5, r5, r1
 80017b2:	d010      	beq.n	80017d6 <br_i31_rshift+0x3a>
 80017b4:	f1c1 061f 	rsb	r6, r1, #31
 80017b8:	1d02      	adds	r2, r0, #4
 80017ba:	eb00 0e8c 	add.w	lr, r0, ip, lsl #2
 80017be:	6854      	ldr	r4, [r2, #4]
 80017c0:	fa04 f306 	lsl.w	r3, r4, r6
 80017c4:	432b      	orrs	r3, r5
 80017c6:	f023 4300 	bic.w	r3, r3, #2147483648	@ 0x80000000
 80017ca:	f842 3b04 	str.w	r3, [r2], #4
 80017ce:	4596      	cmp	lr, r2
 80017d0:	fa24 f501 	lsr.w	r5, r4, r1
 80017d4:	d1f3      	bne.n	80017be <br_i31_rshift+0x22>
 80017d6:	f840 502c 	str.w	r5, [r0, ip, lsl #2]
 80017da:	bd70      	pop	{r4, r5, r6, pc}
 80017dc:	4770      	bx	lr
 80017de:	bf00      	nop

080017e0 <br_i31_sub>:
 80017e0:	6803      	ldr	r3, [r0, #0]
 80017e2:	333f      	adds	r3, #63	@ 0x3f
 80017e4:	2b3f      	cmp	r3, #63	@ 0x3f
 80017e6:	d91a      	bls.n	800181e <br_i31_sub+0x3e>
 80017e8:	4684      	mov	ip, r0
 80017ea:	b510      	push	{r4, lr}
 80017ec:	0958      	lsrs	r0, r3, #5
 80017ee:	f1ac 0e04 	sub.w	lr, ip, #4
 80017f2:	eb0e 0e80 	add.w	lr, lr, r0, lsl #2
 80017f6:	4254      	negs	r4, r2
 80017f8:	2000      	movs	r0, #0
 80017fa:	f85c 2f04 	ldr.w	r2, [ip, #4]!
 80017fe:	f851 3f04 	ldr.w	r3, [r1, #4]!
 8001802:	1ad3      	subs	r3, r2, r3
 8001804:	1a18      	subs	r0, r3, r0
 8001806:	f020 4300 	bic.w	r3, r0, #2147483648	@ 0x80000000
 800180a:	4053      	eors	r3, r2
 800180c:	4023      	ands	r3, r4
 800180e:	4053      	eors	r3, r2
 8001810:	45e6      	cmp	lr, ip
 8001812:	f8cc 3000 	str.w	r3, [ip]
 8001816:	ea4f 70d0 	mov.w	r0, r0, lsr #31
 800181a:	d1ee      	bne.n	80017fa <br_i31_sub+0x1a>
 800181c:	bd10      	pop	{r4, pc}
 800181e:	2000      	movs	r0, #0
 8001820:	4770      	bx	lr
 8001822:	bf00      	nop

08001824 <br_i31_to_monty>:
 8001824:	b570      	push	{r4, r5, r6, lr}
 8001826:	680c      	ldr	r4, [r1, #0]
 8001828:	341f      	adds	r4, #31
 800182a:	0964      	lsrs	r4, r4, #5
 800182c:	d008      	beq.n	8001840 <br_i31_to_monty+0x1c>
 800182e:	460d      	mov	r5, r1
 8001830:	4606      	mov	r6, r0
 8001832:	462a      	mov	r2, r5
 8001834:	2100      	movs	r1, #0
 8001836:	4630      	mov	r0, r6
 8001838:	f7ff fe78 	bl	800152c <br_i31_muladd_small>
 800183c:	3c01      	subs	r4, #1
 800183e:	d1f8      	bne.n	8001832 <br_i31_to_monty+0xe>
 8001840:	bd70      	pop	{r4, r5, r6, pc}
 8001842:	bf00      	nop

08001844 <br_divrem>:
 8001844:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001848:	ea80 0502 	eor.w	r5, r0, r2
 800184c:	461c      	mov	r4, r3
 800184e:	426b      	negs	r3, r5
 8001850:	432b      	orrs	r3, r5
 8001852:	43db      	mvns	r3, r3
 8001854:	0fdb      	lsrs	r3, r3, #31
 8001856:	fb00 f303 	mul.w	r3, r0, r3
 800185a:	4043      	eors	r3, r0
 800185c:	2500      	movs	r5, #0
 800185e:	201f      	movs	r0, #31
 8001860:	f1c0 0720 	rsb	r7, r0, #32
 8001864:	fa21 f600 	lsr.w	r6, r1, r0
 8001868:	fa03 fc07 	lsl.w	ip, r3, r7
 800186c:	ea4c 0c06 	orr.w	ip, ip, r6
 8001870:	ebac 0e02 	sub.w	lr, ip, r2
 8001874:	ea82 060e 	eor.w	r6, r2, lr
 8001878:	ea82 0c0c 	eor.w	ip, r2, ip
 800187c:	ea0c 0c06 	and.w	ip, ip, r6
 8001880:	ea8c 0c0e 	eor.w	ip, ip, lr
 8001884:	fa23 f600 	lsr.w	r6, r3, r0
 8001888:	fa02 f800 	lsl.w	r8, r2, r0
 800188c:	f1bc 0f00 	cmp.w	ip, #0
 8001890:	bfa8      	it	ge
 8001892:	f046 0601 	orrge.w	r6, r6, #1
 8001896:	fa2e fe07 	lsr.w	lr, lr, r7
 800189a:	eba1 0c08 	sub.w	ip, r1, r8
 800189e:	4277      	negs	r7, r6
 80018a0:	ea8e 0e03 	eor.w	lr, lr, r3
 80018a4:	ea8c 0c01 	eor.w	ip, ip, r1
 80018a8:	4086      	lsls	r6, r0
 80018aa:	ea0e 0e07 	and.w	lr, lr, r7
 80018ae:	ea0c 0c07 	and.w	ip, ip, r7
 80018b2:	3801      	subs	r0, #1
 80018b4:	ea83 030e 	eor.w	r3, r3, lr
 80018b8:	ea81 010c 	eor.w	r1, r1, ip
 80018bc:	ea45 0506 	orr.w	r5, r5, r6
 80018c0:	d1ce      	bne.n	8001860 <br_divrem+0x1c>
 80018c2:	1a88      	subs	r0, r1, r2
 80018c4:	ea82 0601 	eor.w	r6, r2, r1
 80018c8:	4042      	eors	r2, r0
 80018ca:	4032      	ands	r2, r6
 80018cc:	4042      	eors	r2, r0
 80018ce:	2a00      	cmp	r2, #0
 80018d0:	bfa8      	it	ge
 80018d2:	f043 0301 	orrge.w	r3, r3, #1
 80018d6:	ea81 0200 	eor.w	r2, r1, r0
 80018da:	ea43 0005 	orr.w	r0, r3, r5
 80018de:	425b      	negs	r3, r3
 80018e0:	4013      	ands	r3, r2
 80018e2:	404b      	eors	r3, r1
 80018e4:	6023      	str	r3, [r4, #0]
 80018e6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80018ea:	bf00      	nop

080018ec <cummult>:
 80018ec:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80018f0:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
 80018f2:	4689      	mov	r9, r1
 80018f4:	4615      	mov	r5, r2
 80018f6:	4621      	mov	r1, r4
 80018f8:	2214      	movs	r2, #20
 80018fa:	461e      	mov	r6, r3
 80018fc:	4682      	mov	sl, r0
 80018fe:	f001 f9f9 	bl	8002cf4 <make_rand>
 8001902:	6863      	ldr	r3, [r4, #4]
 8001904:	2101      	movs	r1, #1
 8001906:	46a0      	mov	r8, r4
 8001908:	430b      	orrs	r3, r1
 800190a:	f848 3f04 	str.w	r3, [r8, #4]!
 800190e:	4640      	mov	r0, r8
 8001910:	f7fe fec0 	bl	8000694 <br_i31_bit_length>
 8001914:	462f      	mov	r7, r5
 8001916:	6020      	str	r0, [r4, #0]
 8001918:	f857 2b04 	ldr.w	r2, [r7], #4
 800191c:	321f      	adds	r2, #31
 800191e:	0952      	lsrs	r2, r2, #5
 8001920:	2100      	movs	r1, #0
 8001922:	0092      	lsls	r2, r2, #2
 8001924:	4638      	mov	r0, r7
 8001926:	f001 ff31 	bl	800378c <memset>
 800192a:	4649      	mov	r1, r9
 800192c:	4622      	mov	r2, r4
 800192e:	4628      	mov	r0, r5
 8001930:	f7ff fdb2 	bl	8001498 <br_i31_mulacc>
 8001934:	f04f 0b02 	mov.w	fp, #2
 8001938:	f106 0904 	add.w	r9, r6, #4
 800193c:	2214      	movs	r2, #20
 800193e:	4621      	mov	r1, r4
 8001940:	4650      	mov	r0, sl
 8001942:	f001 f9d7 	bl	8002cf4 <make_rand>
 8001946:	6863      	ldr	r3, [r4, #4]
 8001948:	2101      	movs	r1, #1
 800194a:	430b      	orrs	r3, r1
 800194c:	6063      	str	r3, [r4, #4]
 800194e:	4640      	mov	r0, r8
 8001950:	f7fe fea0 	bl	8000694 <br_i31_bit_length>
 8001954:	6020      	str	r0, [r4, #0]
 8001956:	682a      	ldr	r2, [r5, #0]
 8001958:	6032      	str	r2, [r6, #0]
 800195a:	321f      	adds	r2, #31
 800195c:	0952      	lsrs	r2, r2, #5
 800195e:	2100      	movs	r1, #0
 8001960:	0092      	lsls	r2, r2, #2
 8001962:	4648      	mov	r0, r9
 8001964:	f001 ff12 	bl	800378c <memset>
 8001968:	4622      	mov	r2, r4
 800196a:	4629      	mov	r1, r5
 800196c:	4630      	mov	r0, r6
 800196e:	f7ff fd93 	bl	8001498 <br_i31_mulacc>
 8001972:	6832      	ldr	r2, [r6, #0]
 8001974:	602a      	str	r2, [r5, #0]
 8001976:	321f      	adds	r2, #31
 8001978:	0952      	lsrs	r2, r2, #5
 800197a:	2100      	movs	r1, #0
 800197c:	0092      	lsls	r2, r2, #2
 800197e:	4638      	mov	r0, r7
 8001980:	f001 ff04 	bl	800378c <memset>
 8001984:	6832      	ldr	r2, [r6, #0]
 8001986:	3207      	adds	r2, #7
 8001988:	4649      	mov	r1, r9
 800198a:	08d2      	lsrs	r2, r2, #3
 800198c:	4638      	mov	r0, r7
 800198e:	f001 ff4b 	bl	8003828 <memcpy>
 8001992:	6831      	ldr	r1, [r6, #0]
 8001994:	6029      	str	r1, [r5, #0]
 8001996:	311f      	adds	r1, #31
 8001998:	0949      	lsrs	r1, r1, #5
 800199a:	4638      	mov	r0, r7
 800199c:	f7fe fe7a 	bl	8000694 <br_i31_bit_length>
 80019a0:	f1bb 0f01 	cmp.w	fp, #1
 80019a4:	6028      	str	r0, [r5, #0]
 80019a6:	d101      	bne.n	80019ac <cummult+0xc0>
 80019a8:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80019ac:	f04f 0b01 	mov.w	fp, #1
 80019b0:	e7c4      	b.n	800193c <cummult+0x50>
 80019b2:	bf00      	nop

080019b4 <br_i31_modpow_opt_rand>:
 80019b4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80019b8:	f2ad 4dec 	subw	sp, sp, #1260	@ 0x4ec
 80019bc:	460d      	mov	r5, r1
 80019be:	920c      	str	r2, [sp, #48]	@ 0x30
 80019c0:	a915      	add	r1, sp, #84	@ 0x54
 80019c2:	225e      	movs	r2, #94	@ 0x5e
 80019c4:	9008      	str	r0, [sp, #32]
 80019c6:	9309      	str	r3, [sp, #36]	@ 0x24
 80019c8:	f8dd b518 	ldr.w	fp, [sp, #1304]	@ 0x518
 80019cc:	f8dd 751c 	ldr.w	r7, [sp, #1308]	@ 0x51c
 80019d0:	f001 f990 	bl	8002cf4 <make_rand>
 80019d4:	9b16      	ldr	r3, [sp, #88]	@ 0x58
 80019d6:	2103      	movs	r1, #3
 80019d8:	f043 0301 	orr.w	r3, r3, #1
 80019dc:	a816      	add	r0, sp, #88	@ 0x58
 80019de:	9316      	str	r3, [sp, #88]	@ 0x58
 80019e0:	f7fe fe58 	bl	8000694 <br_i31_bit_length>
 80019e4:	f8dd 3510 	ldr.w	r3, [sp, #1296]	@ 0x510
 80019e8:	9015      	str	r0, [sp, #84]	@ 0x54
 80019ea:	ae1a      	add	r6, sp, #104	@ 0x68
 80019ec:	681b      	ldr	r3, [r3, #0]
 80019ee:	6033      	str	r3, [r6, #0]
 80019f0:	331f      	adds	r3, #31
 80019f2:	095a      	lsrs	r2, r3, #5
 80019f4:	0092      	lsls	r2, r2, #2
 80019f6:	2100      	movs	r1, #0
 80019f8:	a81b      	add	r0, sp, #108	@ 0x6c
 80019fa:	f001 fec7 	bl	800378c <memset>
 80019fe:	aa15      	add	r2, sp, #84	@ 0x54
 8001a00:	f8dd 1510 	ldr.w	r1, [sp, #1296]	@ 0x510
 8001a04:	4630      	mov	r0, r6
 8001a06:	f7ff fd47 	bl	8001498 <br_i31_mulacc>
 8001a0a:	6833      	ldr	r3, [r6, #0]
 8001a0c:	331f      	adds	r3, #31
 8001a0e:	0959      	lsrs	r1, r3, #5
 8001a10:	a81b      	add	r0, sp, #108	@ 0x6c
 8001a12:	f7fe fe3f 	bl	8000694 <br_i31_bit_length>
 8001a16:	682a      	ldr	r2, [r5, #0]
 8001a18:	6030      	str	r0, [r6, #0]
 8001a1a:	f100 047d 	add.w	r4, r0, #125	@ 0x7d
 8001a1e:	0964      	lsrs	r4, r4, #5
 8001a20:	f100 033f 	add.w	r3, r0, #63	@ 0x3f
 8001a24:	323f      	adds	r2, #63	@ 0x3f
 8001a26:	095b      	lsrs	r3, r3, #5
 8001a28:	1c61      	adds	r1, r4, #1
 8001a2a:	f021 0101 	bic.w	r1, r1, #1
 8001a2e:	ebb3 1f52 	cmp.w	r3, r2, lsr #5
 8001a32:	4680      	mov	r8, r0
 8001a34:	910e      	str	r1, [sp, #56]	@ 0x38
 8001a36:	d907      	bls.n	8001a48 <br_i31_modpow_opt_rand+0x94>
 8001a38:	0950      	lsrs	r0, r2, #5
 8001a3a:	1a1b      	subs	r3, r3, r0
 8001a3c:	009a      	lsls	r2, r3, #2
 8001a3e:	eb05 0080 	add.w	r0, r5, r0, lsl #2
 8001a42:	2100      	movs	r1, #0
 8001a44:	f001 fea2 	bl	800378c <memset>
 8001a48:	9b0e      	ldr	r3, [sp, #56]	@ 0x38
 8001a4a:	f8c5 8000 	str.w	r8, [r5]
 8001a4e:	ebb7 0f43 	cmp.w	r7, r3, lsl #1
 8001a52:	f0c0 8197 	bcc.w	8001d84 <br_i31_modpow_opt_rand+0x3d0>
 8001a56:	990e      	ldr	r1, [sp, #56]	@ 0x38
 8001a58:	eb01 03c1 	add.w	r3, r1, r1, lsl #3
 8001a5c:	429f      	cmp	r7, r3
 8001a5e:	ea4f 02c1 	mov.w	r2, r1, lsl #3
 8001a62:	f080 8194 	bcs.w	8001d8e <br_i31_modpow_opt_rand+0x3da>
 8001a66:	eb01 0381 	add.w	r3, r1, r1, lsl #2
 8001a6a:	429f      	cmp	r7, r3
 8001a6c:	bf34      	ite	cc
 8001a6e:	2301      	movcc	r3, #1
 8001a70:	2302      	movcs	r3, #2
 8001a72:	9307      	str	r3, [sp, #28]
 8001a74:	008b      	lsls	r3, r1, #2
 8001a76:	930f      	str	r3, [sp, #60]	@ 0x3c
 8001a78:	eb0b 0702 	add.w	r7, fp, r2
 8001a7c:	00a3      	lsls	r3, r4, #2
 8001a7e:	6870      	ldr	r0, [r6, #4]
 8001a80:	9304      	str	r3, [sp, #16]
 8001a82:	9703      	str	r7, [sp, #12]
 8001a84:	f7ff fe2a 	bl	80016dc <br_i31_ninv31>
 8001a88:	4631      	mov	r1, r6
 8001a8a:	4628      	mov	r0, r5
 8001a8c:	f8d6 a000 	ldr.w	sl, [r6]
 8001a90:	f7ff fec8 	bl	8001824 <br_i31_to_monty>
 8001a94:	9c0e      	ldr	r4, [sp, #56]	@ 0x38
 8001a96:	6833      	ldr	r3, [r6, #0]
 8001a98:	f84b 3034 	str.w	r3, [fp, r4, lsl #3]
 8001a9c:	331f      	adds	r3, #31
 8001a9e:	095a      	lsrs	r2, r3, #5
 8001aa0:	1d3b      	adds	r3, r7, #4
 8001aa2:	4618      	mov	r0, r3
 8001aa4:	2100      	movs	r1, #0
 8001aa6:	0092      	lsls	r2, r2, #2
 8001aa8:	4698      	mov	r8, r3
 8001aaa:	9310      	str	r3, [sp, #64]	@ 0x40
 8001aac:	f001 fe6e 	bl	800378c <memset>
 8001ab0:	4638      	mov	r0, r7
 8001ab2:	4632      	mov	r2, r6
 8001ab4:	4629      	mov	r1, r5
 8001ab6:	f7ff fe31 	bl	800171c <br_i31_reduce>
 8001aba:	462f      	mov	r7, r5
 8001abc:	f85b 3034 	ldr.w	r3, [fp, r4, lsl #3]
 8001ac0:	f847 3b04 	str.w	r3, [r7], #4
 8001ac4:	331f      	adds	r3, #31
 8001ac6:	095a      	lsrs	r2, r3, #5
 8001ac8:	2100      	movs	r1, #0
 8001aca:	0092      	lsls	r2, r2, #2
 8001acc:	4638      	mov	r0, r7
 8001ace:	9705      	str	r7, [sp, #20]
 8001ad0:	f001 fe5c 	bl	800378c <memset>
 8001ad4:	f85b 3034 	ldr.w	r3, [fp, r4, lsl #3]
 8001ad8:	3307      	adds	r3, #7
 8001ada:	08da      	lsrs	r2, r3, #3
 8001adc:	4641      	mov	r1, r8
 8001ade:	4638      	mov	r0, r7
 8001ae0:	f001 fea2 	bl	8003828 <memcpy>
 8001ae4:	f85b 3034 	ldr.w	r3, [fp, r4, lsl #3]
 8001ae8:	602b      	str	r3, [r5, #0]
 8001aea:	9b07      	ldr	r3, [sp, #28]
 8001aec:	2b01      	cmp	r3, #1
 8001aee:	f000 80d9 	beq.w	8001ca4 <br_i31_modpow_opt_rand+0x2f0>
 8001af2:	9a03      	ldr	r2, [sp, #12]
 8001af4:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
 8001af6:	18d4      	adds	r4, r2, r3
 8001af8:	4629      	mov	r1, r5
 8001afa:	9a04      	ldr	r2, [sp, #16]
 8001afc:	4620      	mov	r0, r4
 8001afe:	f001 fe93 	bl	8003828 <memcpy>
 8001b02:	9a07      	ldr	r2, [sp, #28]
 8001b04:	f8cd b518 	str.w	fp, [sp, #1304]	@ 0x518
 8001b08:	2a02      	cmp	r2, #2
 8001b0a:	f8dd b03c 	ldr.w	fp, [sp, #60]	@ 0x3c
 8001b0e:	462a      	mov	r2, r5
 8001b10:	bf08      	it	eq
 8001b12:	f04f 0904 	moveq.w	r9, #4
 8001b16:	4655      	mov	r5, sl
 8001b18:	bf18      	it	ne
 8001b1a:	f04f 0908 	movne.w	r9, #8
 8001b1e:	2702      	movs	r7, #2
 8001b20:	f10d 0848 	add.w	r8, sp, #72	@ 0x48
 8001b24:	4692      	mov	sl, r2
 8001b26:	9b03      	ldr	r3, [sp, #12]
 8001b28:	f8dd 1510 	ldr.w	r1, [sp, #1296]	@ 0x510
 8001b2c:	9808      	ldr	r0, [sp, #32]
 8001b2e:	f8cd 8000 	str.w	r8, [sp]
 8001b32:	4632      	mov	r2, r6
 8001b34:	f7ff feda 	bl	80018ec <cummult>
 8001b38:	6870      	ldr	r0, [r6, #4]
 8001b3a:	f7ff fdcf 	bl	80016dc <br_i31_ninv31>
 8001b3e:	4621      	mov	r1, r4
 8001b40:	445c      	add	r4, fp
 8001b42:	9000      	str	r0, [sp, #0]
 8001b44:	4633      	mov	r3, r6
 8001b46:	6035      	str	r5, [r6, #0]
 8001b48:	4652      	mov	r2, sl
 8001b4a:	4620      	mov	r0, r4
 8001b4c:	3701      	adds	r7, #1
 8001b4e:	f7ff fbb3 	bl	80012b8 <br_i31_montymul>
 8001b52:	454f      	cmp	r7, r9
 8001b54:	d1e7      	bne.n	8001b26 <br_i31_modpow_opt_rand+0x172>
 8001b56:	4653      	mov	r3, sl
 8001b58:	f8dd b518 	ldr.w	fp, [sp, #1304]	@ 0x518
 8001b5c:	46aa      	mov	sl, r5
 8001b5e:	461d      	mov	r5, r3
 8001b60:	f10a 021f 	add.w	r2, sl, #31
 8001b64:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
 8001b66:	f8c6 a000 	str.w	sl, [r6]
 8001b6a:	0952      	lsrs	r2, r2, #5
 8001b6c:	0092      	lsls	r2, r2, #2
 8001b6e:	2100      	movs	r1, #0
 8001b70:	a81b      	add	r0, sp, #108	@ 0x6c
 8001b72:	eb0b 0703 	add.w	r7, fp, r3
 8001b76:	f001 fe09 	bl	800378c <memset>
 8001b7a:	aa15      	add	r2, sp, #84	@ 0x54
 8001b7c:	f8dd 1510 	ldr.w	r1, [sp, #1296]	@ 0x510
 8001b80:	4630      	mov	r0, r6
 8001b82:	f7ff fc89 	bl	8001498 <br_i31_mulacc>
 8001b86:	6833      	ldr	r3, [r6, #0]
 8001b88:	331f      	adds	r3, #31
 8001b8a:	0959      	lsrs	r1, r3, #5
 8001b8c:	a81b      	add	r0, sp, #108	@ 0x6c
 8001b8e:	f7fe fd81 	bl	8000694 <br_i31_bit_length>
 8001b92:	6030      	str	r0, [r6, #0]
 8001b94:	6870      	ldr	r0, [r6, #4]
 8001b96:	f7ff fda1 	bl	80016dc <br_i31_ninv31>
 8001b9a:	6833      	ldr	r3, [r6, #0]
 8001b9c:	602b      	str	r3, [r5, #0]
 8001b9e:	f103 041f 	add.w	r4, r3, #31
 8001ba2:	0964      	lsrs	r4, r4, #5
 8001ba4:	ea4f 0b84 	mov.w	fp, r4, lsl #2
 8001ba8:	465a      	mov	r2, fp
 8001baa:	2100      	movs	r1, #0
 8001bac:	9805      	ldr	r0, [sp, #20]
 8001bae:	930b      	str	r3, [sp, #44]	@ 0x2c
 8001bb0:	f001 fdec 	bl	800378c <memset>
 8001bb4:	2301      	movs	r3, #1
 8001bb6:	f845 3024 	str.w	r3, [r5, r4, lsl #2]
 8001bba:	2100      	movs	r1, #0
 8001bbc:	4632      	mov	r2, r6
 8001bbe:	4628      	mov	r0, r5
 8001bc0:	f7ff fcb4 	bl	800152c <br_i31_muladd_small>
 8001bc4:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
 8001bc6:	f8cd b044 	str.w	fp, [sp, #68]	@ 0x44
 8001bca:	2100      	movs	r1, #0
 8001bcc:	1f1c      	subs	r4, r3, #4
 8001bce:	9b03      	ldr	r3, [sp, #12]
 8001bd0:	9106      	str	r1, [sp, #24]
 8001bd2:	441c      	add	r4, r3
 8001bd4:	9b06      	ldr	r3, [sp, #24]
 8001bd6:	910a      	str	r1, [sp, #40]	@ 0x28
 8001bd8:	2b00      	cmp	r3, #0
 8001bda:	dd4a      	ble.n	8001c72 <br_i31_modpow_opt_rand+0x2be>
 8001bdc:	e9dd 2306 	ldrd	r2, r3, [sp, #24]
 8001be0:	4293      	cmp	r3, r2
 8001be2:	f300 809d 	bgt.w	8001d20 <br_i31_modpow_opt_rand+0x36c>
 8001be6:	990a      	ldr	r1, [sp, #40]	@ 0x28
 8001be8:	1ad2      	subs	r2, r2, r3
 8001bea:	9206      	str	r2, [sp, #24]
 8001bec:	fa21 f902 	lsr.w	r9, r1, r2
 8001bf0:	469b      	mov	fp, r3
 8001bf2:	ab12      	add	r3, sp, #72	@ 0x48
 8001bf4:	9300      	str	r3, [sp, #0]
 8001bf6:	f04f 33ff 	mov.w	r3, #4294967295	@ 0xffffffff
 8001bfa:	fa03 f30b 	lsl.w	r3, r3, fp
 8001bfe:	f8dd 1510 	ldr.w	r1, [sp, #1296]	@ 0x510
 8001c02:	9808      	ldr	r0, [sp, #32]
 8001c04:	4632      	mov	r2, r6
 8001c06:	ea29 0903 	bic.w	r9, r9, r3
 8001c0a:	9b03      	ldr	r3, [sp, #12]
 8001c0c:	f7ff fe6e 	bl	80018ec <cummult>
 8001c10:	6870      	ldr	r0, [r6, #4]
 8001c12:	f7ff fd63 	bl	80016dc <br_i31_ninv31>
 8001c16:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
 8001c18:	6033      	str	r3, [r6, #0]
 8001c1a:	4680      	mov	r8, r0
 8001c1c:	f04f 0a00 	mov.w	sl, #0
 8001c20:	4633      	mov	r3, r6
 8001c22:	462a      	mov	r2, r5
 8001c24:	4629      	mov	r1, r5
 8001c26:	4638      	mov	r0, r7
 8001c28:	f8cd 8000 	str.w	r8, [sp]
 8001c2c:	f7ff fb44 	bl	80012b8 <br_i31_montymul>
 8001c30:	f10a 0a01 	add.w	sl, sl, #1
 8001c34:	9a04      	ldr	r2, [sp, #16]
 8001c36:	4639      	mov	r1, r7
 8001c38:	4628      	mov	r0, r5
 8001c3a:	f001 fdf5 	bl	8003828 <memcpy>
 8001c3e:	45d3      	cmp	fp, sl
 8001c40:	d1ee      	bne.n	8001c20 <br_i31_modpow_opt_rand+0x26c>
 8001c42:	9b07      	ldr	r3, [sp, #28]
 8001c44:	2b01      	cmp	r3, #1
 8001c46:	d133      	bne.n	8001cb0 <br_i31_modpow_opt_rand+0x2fc>
 8001c48:	9a03      	ldr	r2, [sp, #12]
 8001c4a:	f8cd 8000 	str.w	r8, [sp]
 8001c4e:	4633      	mov	r3, r6
 8001c50:	4629      	mov	r1, r5
 8001c52:	4638      	mov	r0, r7
 8001c54:	f7ff fb30 	bl	80012b8 <br_i31_montymul>
 8001c58:	f1c9 0000 	rsb	r0, r9, #0
 8001c5c:	ea40 0009 	orr.w	r0, r0, r9
 8001c60:	9b04      	ldr	r3, [sp, #16]
 8001c62:	0fc0      	lsrs	r0, r0, #31
 8001c64:	463a      	mov	r2, r7
 8001c66:	4629      	mov	r1, r5
 8001c68:	f7fe fcc0 	bl	80005ec <br_ccopy>
 8001c6c:	9b06      	ldr	r3, [sp, #24]
 8001c6e:	2b00      	cmp	r3, #0
 8001c70:	dcb4      	bgt.n	8001bdc <br_i31_modpow_opt_rand+0x228>
 8001c72:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 8001c74:	2b00      	cmp	r3, #0
 8001c76:	d05c      	beq.n	8001d32 <br_i31_modpow_opt_rand+0x37e>
 8001c78:	9a06      	ldr	r2, [sp, #24]
 8001c7a:	9807      	ldr	r0, [sp, #28]
 8001c7c:	f8dd c030 	ldr.w	ip, [sp, #48]	@ 0x30
 8001c80:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
 8001c82:	3208      	adds	r2, #8
 8001c84:	1a11      	subs	r1, r2, r0
 8001c86:	9a09      	ldr	r2, [sp, #36]	@ 0x24
 8001c88:	9106      	str	r1, [sp, #24]
 8001c8a:	3a01      	subs	r2, #1
 8001c8c:	9209      	str	r2, [sp, #36]	@ 0x24
 8001c8e:	f81c 2b01 	ldrb.w	r2, [ip], #1
 8001c92:	f8cd c030 	str.w	ip, [sp, #48]	@ 0x30
 8001c96:	ea42 2203 	orr.w	r2, r2, r3, lsl #8
 8001c9a:	920a      	str	r2, [sp, #40]	@ 0x28
 8001c9c:	fa22 f901 	lsr.w	r9, r2, r1
 8001ca0:	4683      	mov	fp, r0
 8001ca2:	e7a6      	b.n	8001bf2 <br_i31_modpow_opt_rand+0x23e>
 8001ca4:	9a04      	ldr	r2, [sp, #16]
 8001ca6:	9803      	ldr	r0, [sp, #12]
 8001ca8:	4629      	mov	r1, r5
 8001caa:	f001 fdbd 	bl	8003828 <memcpy>
 8001cae:	e757      	b.n	8001b60 <br_i31_modpow_opt_rand+0x1ac>
 8001cb0:	6833      	ldr	r3, [r6, #0]
 8001cb2:	9a03      	ldr	r2, [sp, #12]
 8001cb4:	9810      	ldr	r0, [sp, #64]	@ 0x40
 8001cb6:	6013      	str	r3, [r2, #0]
 8001cb8:	331f      	adds	r3, #31
 8001cba:	095a      	lsrs	r2, r3, #5
 8001cbc:	0092      	lsls	r2, r2, #2
 8001cbe:	2100      	movs	r1, #0
 8001cc0:	f001 fd64 	bl	800378c <memset>
 8001cc4:	9a03      	ldr	r2, [sp, #12]
 8001cc6:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
 8001cc8:	970d      	str	r7, [sp, #52]	@ 0x34
 8001cca:	f04f 0e01 	mov.w	lr, #1
 8001cce:	9f0e      	ldr	r7, [sp, #56]	@ 0x38
 8001cd0:	eb02 0a03 	add.w	sl, r2, r3
 8001cd4:	fa0e fb0b 	lsl.w	fp, lr, fp
 8001cd8:	462a      	mov	r2, r5
 8001cda:	469c      	mov	ip, r3
 8001cdc:	ea8e 0309 	eor.w	r3, lr, r9
 8001ce0:	425d      	negs	r5, r3
 8001ce2:	431d      	orrs	r5, r3
 8001ce4:	43ed      	mvns	r5, r5
 8001ce6:	2f01      	cmp	r7, #1
 8001ce8:	ea4f 75d5 	mov.w	r5, r5, lsr #31
 8001cec:	d910      	bls.n	8001d10 <br_i31_modpow_opt_rand+0x35c>
 8001cee:	9b03      	ldr	r3, [sp, #12]
 8001cf0:	f8cd e014 	str.w	lr, [sp, #20]
 8001cf4:	4650      	mov	r0, sl
 8001cf6:	f850 1f04 	ldr.w	r1, [r0, #4]!
 8001cfa:	fb01 fe05 	mul.w	lr, r1, r5
 8001cfe:	f853 1f04 	ldr.w	r1, [r3, #4]!
 8001d02:	ea41 010e 	orr.w	r1, r1, lr
 8001d06:	42a3      	cmp	r3, r4
 8001d08:	6019      	str	r1, [r3, #0]
 8001d0a:	d1f4      	bne.n	8001cf6 <br_i31_modpow_opt_rand+0x342>
 8001d0c:	f8dd e014 	ldr.w	lr, [sp, #20]
 8001d10:	f10e 0e01 	add.w	lr, lr, #1
 8001d14:	45f3      	cmp	fp, lr
 8001d16:	44e2      	add	sl, ip
 8001d18:	d1e0      	bne.n	8001cdc <br_i31_modpow_opt_rand+0x328>
 8001d1a:	9f0d      	ldr	r7, [sp, #52]	@ 0x34
 8001d1c:	4615      	mov	r5, r2
 8001d1e:	e793      	b.n	8001c48 <br_i31_modpow_opt_rand+0x294>
 8001d20:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 8001d22:	2b00      	cmp	r3, #0
 8001d24:	d1a8      	bne.n	8001c78 <br_i31_modpow_opt_rand+0x2c4>
 8001d26:	e9dd 3909 	ldrd	r3, r9, [sp, #36]	@ 0x24
 8001d2a:	f8dd b018 	ldr.w	fp, [sp, #24]
 8001d2e:	9306      	str	r3, [sp, #24]
 8001d30:	e75f      	b.n	8001bf2 <br_i31_modpow_opt_rand+0x23e>
 8001d32:	f8dd b044 	ldr.w	fp, [sp, #68]	@ 0x44
 8001d36:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
 8001d38:	9909      	ldr	r1, [sp, #36]	@ 0x24
 8001d3a:	6033      	str	r3, [r6, #0]
 8001d3c:	465a      	mov	r2, fp
 8001d3e:	a81b      	add	r0, sp, #108	@ 0x6c
 8001d40:	f001 fd24 	bl	800378c <memset>
 8001d44:	aa15      	add	r2, sp, #84	@ 0x54
 8001d46:	f8dd 1510 	ldr.w	r1, [sp, #1296]	@ 0x510
 8001d4a:	4630      	mov	r0, r6
 8001d4c:	f7ff fba4 	bl	8001498 <br_i31_mulacc>
 8001d50:	6833      	ldr	r3, [r6, #0]
 8001d52:	331f      	adds	r3, #31
 8001d54:	0959      	lsrs	r1, r3, #5
 8001d56:	a81b      	add	r0, sp, #108	@ 0x6c
 8001d58:	f7fe fc9c 	bl	8000694 <br_i31_bit_length>
 8001d5c:	6030      	str	r0, [r6, #0]
 8001d5e:	6870      	ldr	r0, [r6, #4]
 8001d60:	f7ff fcbc 	bl	80016dc <br_i31_ninv31>
 8001d64:	4631      	mov	r1, r6
 8001d66:	4602      	mov	r2, r0
 8001d68:	4638      	mov	r0, r7
 8001d6a:	f7fe fde7 	bl	800093c <br_i31_from_monty>
 8001d6e:	4628      	mov	r0, r5
 8001d70:	f8dd 2510 	ldr.w	r2, [sp, #1296]	@ 0x510
 8001d74:	4639      	mov	r1, r7
 8001d76:	f7ff fcd1 	bl	800171c <br_i31_reduce>
 8001d7a:	2001      	movs	r0, #1
 8001d7c:	f20d 4dec 	addw	sp, sp, #1260	@ 0x4ec
 8001d80:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001d84:	2000      	movs	r0, #0
 8001d86:	f20d 4dec 	addw	sp, sp, #1260	@ 0x4ec
 8001d8a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001d8e:	2303      	movs	r3, #3
 8001d90:	9307      	str	r3, [sp, #28]
 8001d92:	9b0e      	ldr	r3, [sp, #56]	@ 0x38
 8001d94:	009b      	lsls	r3, r3, #2
 8001d96:	930f      	str	r3, [sp, #60]	@ 0x3c
 8001d98:	e66e      	b.n	8001a78 <br_i31_modpow_opt_rand+0xc4>
 8001d9a:	bf00      	nop

08001d9c <br_sha224_set_state>:
 8001d9c:	b570      	push	{r4, r5, r6, lr}
 8001d9e:	4604      	mov	r4, r0
 8001da0:	4616      	mov	r6, r2
 8001da2:	461d      	mov	r5, r3
 8001da4:	460a      	mov	r2, r1
 8001da6:	3050      	adds	r0, #80	@ 0x50
 8001da8:	2108      	movs	r1, #8
 8001daa:	f7fe fc35 	bl	8000618 <br_range_dec32be>
 8001dae:	e9c4 6512 	strd	r6, r5, [r4, #72]	@ 0x48
 8001db2:	bd70      	pop	{r4, r5, r6, pc}

08001db4 <br_sha224_init>:
 8001db4:	4b0f      	ldr	r3, [pc, #60]	@ (8001df4 <br_sha224_init+0x40>)
 8001db6:	b510      	push	{r4, lr}
 8001db8:	4686      	mov	lr, r0
 8001dba:	f103 0c1c 	add.w	ip, r3, #28
 8001dbe:	f84e 3b50 	str.w	r3, [lr], #80
 8001dc2:	4604      	mov	r4, r0
 8001dc4:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
 8001dc8:	6520      	str	r0, [r4, #80]	@ 0x50
 8001dca:	f8ce 1004 	str.w	r1, [lr, #4]
 8001dce:	f8ce 2008 	str.w	r2, [lr, #8]
 8001dd2:	f8ce 300c 	str.w	r3, [lr, #12]
 8001dd6:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
 8001dda:	f8ce 0010 	str.w	r0, [lr, #16]
 8001dde:	f8ce 1014 	str.w	r1, [lr, #20]
 8001de2:	f8ce 2018 	str.w	r2, [lr, #24]
 8001de6:	2000      	movs	r0, #0
 8001de8:	2100      	movs	r1, #0
 8001dea:	f8ce 301c 	str.w	r3, [lr, #28]
 8001dee:	e9c4 0112 	strd	r0, r1, [r4, #72]	@ 0x48
 8001df2:	bd10      	pop	{r4, pc}
 8001df4:	08004468 	.word	0x08004468

08001df8 <br_sha256_init>:
 8001df8:	4b10      	ldr	r3, [pc, #64]	@ (8001e3c <br_sha256_init+0x44>)
 8001dfa:	b510      	push	{r4, lr}
 8001dfc:	4686      	mov	lr, r0
 8001dfe:	f103 0c58 	add.w	ip, r3, #88	@ 0x58
 8001e02:	333c      	adds	r3, #60	@ 0x3c
 8001e04:	f84e 3b50 	str.w	r3, [lr], #80
 8001e08:	4604      	mov	r4, r0
 8001e0a:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
 8001e0e:	6520      	str	r0, [r4, #80]	@ 0x50
 8001e10:	f8ce 1004 	str.w	r1, [lr, #4]
 8001e14:	f8ce 2008 	str.w	r2, [lr, #8]
 8001e18:	f8ce 300c 	str.w	r3, [lr, #12]
 8001e1c:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
 8001e20:	f8ce 0010 	str.w	r0, [lr, #16]
 8001e24:	f8ce 1014 	str.w	r1, [lr, #20]
 8001e28:	f8ce 2018 	str.w	r2, [lr, #24]
 8001e2c:	2000      	movs	r0, #0
 8001e2e:	2100      	movs	r1, #0
 8001e30:	f8ce 301c 	str.w	r3, [lr, #28]
 8001e34:	e9c4 0112 	strd	r0, r1, [r4, #72]	@ 0x48
 8001e38:	bd10      	pop	{r4, pc}
 8001e3a:	bf00      	nop
 8001e3c:	08004468 	.word	0x08004468

08001e40 <br_sha224_state>:
 8001e40:	b510      	push	{r4, lr}
 8001e42:	4604      	mov	r4, r0
 8001e44:	2208      	movs	r2, #8
 8001e46:	4608      	mov	r0, r1
 8001e48:	f104 0150 	add.w	r1, r4, #80	@ 0x50
 8001e4c:	f7fe fbf2 	bl	8000634 <br_range_enc32be>
 8001e50:	e9d4 0112 	ldrd	r0, r1, [r4, #72]	@ 0x48
 8001e54:	bd10      	pop	{r4, pc}
 8001e56:	bf00      	nop

08001e58 <br_sha2small_round>:
 8001e58:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8001e5c:	b0cb      	sub	sp, #300	@ 0x12c
 8001e5e:	f10d 0a28 	add.w	sl, sp, #40	@ 0x28
 8001e62:	460d      	mov	r5, r1
 8001e64:	4602      	mov	r2, r0
 8001e66:	2110      	movs	r1, #16
 8001e68:	4650      	mov	r0, sl
 8001e6a:	9501      	str	r5, [sp, #4]
 8001e6c:	f7fe fbd4 	bl	8000618 <br_range_dec32be>
 8001e70:	e9da 360e 	ldrd	r3, r6, [sl, #56]	@ 0x38
 8001e74:	f8da 4000 	ldr.w	r4, [sl]
 8001e78:	af3a      	add	r7, sp, #232	@ 0xe8
 8001e7a:	4651      	mov	r1, sl
 8001e7c:	461d      	mov	r5, r3
 8001e7e:	f8d1 c024 	ldr.w	ip, [r1, #36]	@ 0x24
 8001e82:	4620      	mov	r0, r4
 8001e84:	f851 4f04 	ldr.w	r4, [r1, #4]!
 8001e88:	ea4f 42f5 	mov.w	r2, r5, ror #19
 8001e8c:	ea82 4275 	eor.w	r2, r2, r5, ror #17
 8001e90:	ea4f 43b4 	mov.w	r3, r4, ror #18
 8001e94:	ea82 2295 	eor.w	r2, r2, r5, lsr #10
 8001e98:	ea83 13f4 	eor.w	r3, r3, r4, ror #7
 8001e9c:	4462      	add	r2, ip
 8001e9e:	ea83 03d4 	eor.w	r3, r3, r4, lsr #3
 8001ea2:	441a      	add	r2, r3
 8001ea4:	4635      	mov	r5, r6
 8001ea6:	42b9      	cmp	r1, r7
 8001ea8:	eb00 0602 	add.w	r6, r0, r2
 8001eac:	63ce      	str	r6, [r1, #60]	@ 0x3c
 8001eae:	d1e6      	bne.n	8001e7e <br_sha2small_round+0x26>
 8001eb0:	9b01      	ldr	r3, [sp, #4]
 8001eb2:	f8df b2b4 	ldr.w	fp, [pc, #692]	@ 8002168 <br_sha2small_round+0x310>
 8001eb6:	691a      	ldr	r2, [r3, #16]
 8001eb8:	6959      	ldr	r1, [r3, #20]
 8001eba:	9203      	str	r2, [sp, #12]
 8001ebc:	e9d3 6400 	ldrd	r6, r4, [r3]
 8001ec0:	e9d3 7002 	ldrd	r7, r0, [r3, #8]
 8001ec4:	e9d3 5306 	ldrd	r5, r3, [r3, #24]
 8001ec8:	e9cd 6406 	strd	r6, r4, [sp, #24]
 8001ecc:	e9cd 7508 	strd	r7, r5, [sp, #32]
 8001ed0:	9305      	str	r3, [sp, #20]
 8001ed2:	4699      	mov	r9, r3
 8001ed4:	9002      	str	r0, [sp, #8]
 8001ed6:	9104      	str	r1, [sp, #16]
 8001ed8:	46a8      	mov	r8, r5
 8001eda:	46bc      	mov	ip, r7
 8001edc:	4623      	mov	r3, r4
 8001ede:	46b6      	mov	lr, r6
 8001ee0:	f8db 6000 	ldr.w	r6, [fp]
 8001ee4:	f8da 5000 	ldr.w	r5, [sl]
 8001ee8:	ea4f 24f2 	mov.w	r4, r2, ror #11
 8001eec:	ea84 14b2 	eor.w	r4, r4, r2, ror #6
 8001ef0:	4435      	add	r5, r6
 8001ef2:	ea84 6472 	eor.w	r4, r4, r2, ror #25
 8001ef6:	442c      	add	r4, r5
 8001ef8:	ea81 0508 	eor.w	r5, r1, r8
 8001efc:	4015      	ands	r5, r2
 8001efe:	ea85 0508 	eor.w	r5, r5, r8
 8001f02:	442c      	add	r4, r5
 8001f04:	ea4f 377e 	mov.w	r7, lr, ror #13
 8001f08:	ea43 050c 	orr.w	r5, r3, ip
 8001f0c:	ea03 060c 	and.w	r6, r3, ip
 8001f10:	ea05 050e 	and.w	r5, r5, lr
 8001f14:	ea87 07be 	eor.w	r7, r7, lr, ror #2
 8001f18:	4335      	orrs	r5, r6
 8001f1a:	ea87 57be 	eor.w	r7, r7, lr, ror #22
 8001f1e:	444c      	add	r4, r9
 8001f20:	f8da 6004 	ldr.w	r6, [sl, #4]
 8001f24:	442f      	add	r7, r5
 8001f26:	f8db 5004 	ldr.w	r5, [fp, #4]
 8001f2a:	4427      	add	r7, r4
 8001f2c:	4420      	add	r0, r4
 8001f2e:	ea82 0401 	eor.w	r4, r2, r1
 8001f32:	4435      	add	r5, r6
 8001f34:	4004      	ands	r4, r0
 8001f36:	404c      	eors	r4, r1
 8001f38:	4445      	add	r5, r8
 8001f3a:	4425      	add	r5, r4
 8001f3c:	ea4f 24f0 	mov.w	r4, r0, ror #11
 8001f40:	ea84 14b0 	eor.w	r4, r4, r0, ror #6
 8001f44:	ea84 6470 	eor.w	r4, r4, r0, ror #25
 8001f48:	4425      	add	r5, r4
 8001f4a:	ea4e 0603 	orr.w	r6, lr, r3
 8001f4e:	ea4f 3477 	mov.w	r4, r7, ror #13
 8001f52:	ea0e 0803 	and.w	r8, lr, r3
 8001f56:	403e      	ands	r6, r7
 8001f58:	ea84 04b7 	eor.w	r4, r4, r7, ror #2
 8001f5c:	ea46 0608 	orr.w	r6, r6, r8
 8001f60:	ea84 54b7 	eor.w	r4, r4, r7, ror #22
 8001f64:	4434      	add	r4, r6
 8001f66:	442c      	add	r4, r5
 8001f68:	44ac      	add	ip, r5
 8001f6a:	f8da 6008 	ldr.w	r6, [sl, #8]
 8001f6e:	f8db 5008 	ldr.w	r5, [fp, #8]
 8001f72:	4435      	add	r5, r6
 8001f74:	ea80 0602 	eor.w	r6, r0, r2
 8001f78:	4429      	add	r1, r5
 8001f7a:	ea06 060c 	and.w	r6, r6, ip
 8001f7e:	ea4f 25fc 	mov.w	r5, ip, ror #11
 8001f82:	4056      	eors	r6, r2
 8001f84:	ea85 15bc 	eor.w	r5, r5, ip, ror #6
 8001f88:	ea85 657c 	eor.w	r5, r5, ip, ror #25
 8001f8c:	4431      	add	r1, r6
 8001f8e:	4429      	add	r1, r5
 8001f90:	18ce      	adds	r6, r1, r3
 8001f92:	ea47 080e 	orr.w	r8, r7, lr
 8001f96:	ea4f 3374 	mov.w	r3, r4, ror #13
 8001f9a:	ea07 050e 	and.w	r5, r7, lr
 8001f9e:	ea08 0804 	and.w	r8, r8, r4
 8001fa2:	ea83 03b4 	eor.w	r3, r3, r4, ror #2
 8001fa6:	ea48 0805 	orr.w	r8, r8, r5
 8001faa:	ea83 53b4 	eor.w	r3, r3, r4, ror #22
 8001fae:	4443      	add	r3, r8
 8001fb0:	440b      	add	r3, r1
 8001fb2:	f8da 500c 	ldr.w	r5, [sl, #12]
 8001fb6:	f8db 100c 	ldr.w	r1, [fp, #12]
 8001fba:	4429      	add	r1, r5
 8001fbc:	4411      	add	r1, r2
 8001fbe:	ea80 020c 	eor.w	r2, r0, ip
 8001fc2:	4032      	ands	r2, r6
 8001fc4:	4042      	eors	r2, r0
 8001fc6:	4411      	add	r1, r2
 8001fc8:	ea4f 22f6 	mov.w	r2, r6, ror #11
 8001fcc:	ea82 12b6 	eor.w	r2, r2, r6, ror #6
 8001fd0:	ea82 6276 	eor.w	r2, r2, r6, ror #25
 8001fd4:	4411      	add	r1, r2
 8001fd6:	ea47 0504 	orr.w	r5, r7, r4
 8001fda:	ea4f 3273 	mov.w	r2, r3, ror #13
 8001fde:	ea07 0804 	and.w	r8, r7, r4
 8001fe2:	ea82 02b3 	eor.w	r2, r2, r3, ror #2
 8001fe6:	401d      	ands	r5, r3
 8001fe8:	ea45 0508 	orr.w	r5, r5, r8
 8001fec:	ea82 52b3 	eor.w	r2, r2, r3, ror #22
 8001ff0:	442a      	add	r2, r5
 8001ff2:	448e      	add	lr, r1
 8001ff4:	440a      	add	r2, r1
 8001ff6:	f8da 5010 	ldr.w	r5, [sl, #16]
 8001ffa:	f8db 1010 	ldr.w	r1, [fp, #16]
 8001ffe:	4429      	add	r1, r5
 8002000:	4401      	add	r1, r0
 8002002:	ea8c 0006 	eor.w	r0, ip, r6
 8002006:	ea00 000e 	and.w	r0, r0, lr
 800200a:	ea80 000c 	eor.w	r0, r0, ip
 800200e:	4401      	add	r1, r0
 8002010:	ea4f 20fe 	mov.w	r0, lr, ror #11
 8002014:	ea80 10be 	eor.w	r0, r0, lr, ror #6
 8002018:	ea80 607e 	eor.w	r0, r0, lr, ror #25
 800201c:	4401      	add	r1, r0
 800201e:	ea44 0503 	orr.w	r5, r4, r3
 8002022:	ea4f 3072 	mov.w	r0, r2, ror #13
 8002026:	eb07 0901 	add.w	r9, r7, r1
 800202a:	ea80 00b2 	eor.w	r0, r0, r2, ror #2
 800202e:	ea04 0703 	and.w	r7, r4, r3
 8002032:	4015      	ands	r5, r2
 8002034:	ea80 50b2 	eor.w	r0, r0, r2, ror #22
 8002038:	433d      	orrs	r5, r7
 800203a:	4428      	add	r0, r5
 800203c:	4408      	add	r0, r1
 800203e:	f8da 5014 	ldr.w	r5, [sl, #20]
 8002042:	f8db 1014 	ldr.w	r1, [fp, #20]
 8002046:	4429      	add	r1, r5
 8002048:	ea86 050e 	eor.w	r5, r6, lr
 800204c:	ea05 0509 	and.w	r5, r5, r9
 8002050:	4075      	eors	r5, r6
 8002052:	4461      	add	r1, ip
 8002054:	4429      	add	r1, r5
 8002056:	ea4f 25f9 	mov.w	r5, r9, ror #11
 800205a:	ea85 15b9 	eor.w	r5, r5, r9, ror #6
 800205e:	ea85 6579 	eor.w	r5, r5, r9, ror #25
 8002062:	4429      	add	r1, r5
 8002064:	eb04 0801 	add.w	r8, r4, r1
 8002068:	ea4f 3c70 	mov.w	ip, r0, ror #13
 800206c:	ea43 0402 	orr.w	r4, r3, r2
 8002070:	ea03 0502 	and.w	r5, r3, r2
 8002074:	ea8c 0cb0 	eor.w	ip, ip, r0, ror #2
 8002078:	4004      	ands	r4, r0
 800207a:	432c      	orrs	r4, r5
 800207c:	ea8c 5cb0 	eor.w	ip, ip, r0, ror #22
 8002080:	44a4      	add	ip, r4
 8002082:	448c      	add	ip, r1
 8002084:	f8da 4018 	ldr.w	r4, [sl, #24]
 8002088:	f8db 1018 	ldr.w	r1, [fp, #24]
 800208c:	ea8e 0509 	eor.w	r5, lr, r9
 8002090:	440c      	add	r4, r1
 8002092:	ea05 0508 	and.w	r5, r5, r8
 8002096:	ea4f 21f8 	mov.w	r1, r8, ror #11
 800209a:	ea85 050e 	eor.w	r5, r5, lr
 800209e:	4434      	add	r4, r6
 80020a0:	ea81 11b8 	eor.w	r1, r1, r8, ror #6
 80020a4:	442c      	add	r4, r5
 80020a6:	ea81 6178 	eor.w	r1, r1, r8, ror #25
 80020aa:	440c      	add	r4, r1
 80020ac:	1919      	adds	r1, r3, r4
 80020ae:	ea42 0500 	orr.w	r5, r2, r0
 80020b2:	ea4f 337c 	mov.w	r3, ip, ror #13
 80020b6:	ea02 0600 	and.w	r6, r2, r0
 80020ba:	ea83 03bc 	eor.w	r3, r3, ip, ror #2
 80020be:	ea05 050c 	and.w	r5, r5, ip
 80020c2:	4335      	orrs	r5, r6
 80020c4:	ea83 53bc 	eor.w	r3, r3, ip, ror #22
 80020c8:	442b      	add	r3, r5
 80020ca:	4423      	add	r3, r4
 80020cc:	f8db 501c 	ldr.w	r5, [fp, #28]
 80020d0:	f8da 401c 	ldr.w	r4, [sl, #28]
 80020d4:	ea89 0608 	eor.w	r6, r9, r8
 80020d8:	442c      	add	r4, r5
 80020da:	400e      	ands	r6, r1
 80020dc:	ea4f 25f1 	mov.w	r5, r1, ror #11
 80020e0:	4474      	add	r4, lr
 80020e2:	ea86 0609 	eor.w	r6, r6, r9
 80020e6:	ea85 15b1 	eor.w	r5, r5, r1, ror #6
 80020ea:	4434      	add	r4, r6
 80020ec:	ea85 6571 	eor.w	r5, r5, r1, ror #25
 80020f0:	442c      	add	r4, r5
 80020f2:	ea4f 3e73 	mov.w	lr, r3, ror #13
 80020f6:	ea40 050c 	orr.w	r5, r0, ip
 80020fa:	ea8e 0eb3 	eor.w	lr, lr, r3, ror #2
 80020fe:	401d      	ands	r5, r3
 8002100:	ea00 060c 	and.w	r6, r0, ip
 8002104:	ea8e 5eb3 	eor.w	lr, lr, r3, ror #22
 8002108:	4335      	orrs	r5, r6
 800210a:	44ae      	add	lr, r5
 800210c:	4422      	add	r2, r4
 800210e:	44a6      	add	lr, r4
 8002110:	4c14      	ldr	r4, [pc, #80]	@ (8002164 <br_sha2small_round+0x30c>)
 8002112:	f10b 0b20 	add.w	fp, fp, #32
 8002116:	45a3      	cmp	fp, r4
 8002118:	f10a 0a20 	add.w	sl, sl, #32
 800211c:	f47f aee0 	bne.w	8001ee0 <br_sha2small_round+0x88>
 8002120:	e9dd 7508 	ldrd	r7, r5, [sp, #32]
 8002124:	e9dd 6406 	ldrd	r6, r4, [sp, #24]
 8002128:	441c      	add	r4, r3
 800212a:	eb07 030c 	add.w	r3, r7, ip
 800212e:	9f02      	ldr	r7, [sp, #8]
 8002130:	4407      	add	r7, r0
 8002132:	4638      	mov	r0, r7
 8002134:	9f03      	ldr	r7, [sp, #12]
 8002136:	4417      	add	r7, r2
 8002138:	463a      	mov	r2, r7
 800213a:	9f04      	ldr	r7, [sp, #16]
 800213c:	440f      	add	r7, r1
 800213e:	9905      	ldr	r1, [sp, #20]
 8002140:	46bc      	mov	ip, r7
 8002142:	eb05 0708 	add.w	r7, r5, r8
 8002146:	9d01      	ldr	r5, [sp, #4]
 8002148:	4476      	add	r6, lr
 800214a:	4449      	add	r1, r9
 800214c:	e9c5 6400 	strd	r6, r4, [r5]
 8002150:	e9c5 3002 	strd	r3, r0, [r5, #8]
 8002154:	e9c5 2c04 	strd	r2, ip, [r5, #16]
 8002158:	e9c5 7106 	strd	r7, r1, [r5, #24]
 800215c:	b04b      	add	sp, #300	@ 0x12c
 800215e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002162:	bf00      	nop
 8002164:	080045e0 	.word	0x080045e0
 8002168:	080044e0 	.word	0x080044e0

0800216c <br_sha224_update>:
 800216c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8002170:	e9d0 5312 	ldrd	r5, r3, [r0, #72]	@ 0x48
 8002174:	4616      	mov	r6, r2
 8002176:	1952      	adds	r2, r2, r5
 8002178:	f143 0300 	adc.w	r3, r3, #0
 800217c:	6482      	str	r2, [r0, #72]	@ 0x48
 800217e:	64c3      	str	r3, [r0, #76]	@ 0x4c
 8002180:	b1ce      	cbz	r6, 80021b6 <br_sha224_update+0x4a>
 8002182:	460f      	mov	r7, r1
 8002184:	f005 053f 	and.w	r5, r5, #63	@ 0x3f
 8002188:	f100 0904 	add.w	r9, r0, #4
 800218c:	f100 0850 	add.w	r8, r0, #80	@ 0x50
 8002190:	f1c5 0440 	rsb	r4, r5, #64	@ 0x40
 8002194:	42b4      	cmp	r4, r6
 8002196:	bf28      	it	cs
 8002198:	4634      	movcs	r4, r6
 800219a:	4639      	mov	r1, r7
 800219c:	eb09 0005 	add.w	r0, r9, r5
 80021a0:	4622      	mov	r2, r4
 80021a2:	4425      	add	r5, r4
 80021a4:	f001 fb40 	bl	8003828 <memcpy>
 80021a8:	2d40      	cmp	r5, #64	@ 0x40
 80021aa:	eba6 0604 	sub.w	r6, r6, r4
 80021ae:	4427      	add	r7, r4
 80021b0:	d003      	beq.n	80021ba <br_sha224_update+0x4e>
 80021b2:	2e00      	cmp	r6, #0
 80021b4:	d1ec      	bne.n	8002190 <br_sha224_update+0x24>
 80021b6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80021ba:	4641      	mov	r1, r8
 80021bc:	4648      	mov	r0, r9
 80021be:	f7ff fe4b 	bl	8001e58 <br_sha2small_round>
 80021c2:	2500      	movs	r5, #0
 80021c4:	2e00      	cmp	r6, #0
 80021c6:	d1e3      	bne.n	8002190 <br_sha224_update+0x24>
 80021c8:	e7f5      	b.n	80021b6 <br_sha224_update+0x4a>
 80021ca:	bf00      	nop

080021cc <sha2small_out>:
 80021cc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80021d0:	e9d0 6512 	ldrd	r6, r5, [r0, #72]	@ 0x48
 80021d4:	b098      	sub	sp, #96	@ 0x60
 80021d6:	4604      	mov	r4, r0
 80021d8:	f006 0a3f 	and.w	sl, r6, #63	@ 0x3f
 80021dc:	af08      	add	r7, sp, #32
 80021de:	4688      	mov	r8, r1
 80021e0:	4691      	mov	r9, r2
 80021e2:	1d01      	adds	r1, r0, #4
 80021e4:	4652      	mov	r2, sl
 80021e6:	4638      	mov	r0, r7
 80021e8:	f001 fb1e 	bl	8003828 <memcpy>
 80021ec:	6d20      	ldr	r0, [r4, #80]	@ 0x50
 80021ee:	6d61      	ldr	r1, [r4, #84]	@ 0x54
 80021f0:	6da2      	ldr	r2, [r4, #88]	@ 0x58
 80021f2:	6de3      	ldr	r3, [r4, #92]	@ 0x5c
 80021f4:	46ec      	mov	ip, sp
 80021f6:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
 80021fa:	eb0d 030a 	add.w	r3, sp, sl
 80021fe:	f04f 0e80 	mov.w	lr, #128	@ 0x80
 8002202:	6e20      	ldr	r0, [r4, #96]	@ 0x60
 8002204:	6e61      	ldr	r1, [r4, #100]	@ 0x64
 8002206:	6ea2      	ldr	r2, [r4, #104]	@ 0x68
 8002208:	f883 e020 	strb.w	lr, [r3, #32]
 800220c:	f10a 0a01 	add.w	sl, sl, #1
 8002210:	6ee3      	ldr	r3, [r4, #108]	@ 0x6c
 8002212:	f1ba 0f38 	cmp.w	sl, #56	@ 0x38
 8002216:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
 800221a:	eb07 000a 	add.w	r0, r7, sl
 800221e:	d92e      	bls.n	800227e <sha2small_out+0xb2>
 8002220:	f1ca 0240 	rsb	r2, sl, #64	@ 0x40
 8002224:	2100      	movs	r1, #0
 8002226:	f001 fab1 	bl	800378c <memset>
 800222a:	4669      	mov	r1, sp
 800222c:	4638      	mov	r0, r7
 800222e:	f7ff fe13 	bl	8001e58 <br_sha2small_round>
 8002232:	2238      	movs	r2, #56	@ 0x38
 8002234:	2100      	movs	r1, #0
 8002236:	4638      	mov	r0, r7
 8002238:	f001 faa8 	bl	800378c <memset>
 800223c:	e9d4 6512 	ldrd	r6, r5, [r4, #72]	@ 0x48
 8002240:	00eb      	lsls	r3, r5, #3
 8002242:	ea43 7356 	orr.w	r3, r3, r6, lsr #29
 8002246:	0e19      	lsrs	r1, r3, #24
 8002248:	2200      	movs	r2, #0
 800224a:	f361 0207 	bfi	r2, r1, #0, #8
 800224e:	0c19      	lsrs	r1, r3, #16
 8002250:	f361 220f 	bfi	r2, r1, #8, #8
 8002254:	0a19      	lsrs	r1, r3, #8
 8002256:	f361 4217 	bfi	r2, r1, #16, #8
 800225a:	00f6      	lsls	r6, r6, #3
 800225c:	f363 621f 	bfi	r2, r3, #24, #8
 8002260:	4638      	mov	r0, r7
 8002262:	4669      	mov	r1, sp
 8002264:	ba36      	rev	r6, r6
 8002266:	9216      	str	r2, [sp, #88]	@ 0x58
 8002268:	9617      	str	r6, [sp, #92]	@ 0x5c
 800226a:	f7ff fdf5 	bl	8001e58 <br_sha2small_round>
 800226e:	464a      	mov	r2, r9
 8002270:	4669      	mov	r1, sp
 8002272:	4640      	mov	r0, r8
 8002274:	f7fe f9de 	bl	8000634 <br_range_enc32be>
 8002278:	b018      	add	sp, #96	@ 0x60
 800227a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800227e:	f1ca 0238 	rsb	r2, sl, #56	@ 0x38
 8002282:	2100      	movs	r1, #0
 8002284:	f001 fa82 	bl	800378c <memset>
 8002288:	e7da      	b.n	8002240 <sha2small_out+0x74>
 800228a:	bf00      	nop

0800228c <br_sha224_out>:
 800228c:	2207      	movs	r2, #7
 800228e:	e79d      	b.n	80021cc <sha2small_out>

08002290 <br_sha256_out>:
 8002290:	2208      	movs	r2, #8
 8002292:	e79b      	b.n	80021cc <sha2small_out>

08002294 <br_hmac_drbg_update>:
 8002294:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8002298:	f8d0 8084 	ldr.w	r8, [r0, #132]	@ 0x84
 800229c:	f8d8 5004 	ldr.w	r5, [r8, #4]
 80022a0:	b0e8      	sub	sp, #416	@ 0x1a0
 80022a2:	f3c5 2506 	ubfx	r5, r5, #8, #7
 80022a6:	1d07      	adds	r7, r0, #4
 80022a8:	462b      	mov	r3, r5
 80022aa:	4616      	mov	r6, r2
 80022ac:	4604      	mov	r4, r0
 80022ae:	4689      	mov	r9, r1
 80022b0:	463a      	mov	r2, r7
 80022b2:	4641      	mov	r1, r8
 80022b4:	a801      	add	r0, sp, #4
 80022b6:	f000 f91f 	bl	80024f8 <br_hmac_key_init>
 80022ba:	3444      	adds	r4, #68	@ 0x44
 80022bc:	2200      	movs	r2, #0
 80022be:	a901      	add	r1, sp, #4
 80022c0:	a822      	add	r0, sp, #136	@ 0x88
 80022c2:	f000 f94f 	bl	8002564 <br_hmac_init>
 80022c6:	462a      	mov	r2, r5
 80022c8:	4621      	mov	r1, r4
 80022ca:	a822      	add	r0, sp, #136	@ 0x88
 80022cc:	f000 f984 	bl	80025d8 <br_hmac_update>
 80022d0:	f04f 0a00 	mov.w	sl, #0
 80022d4:	2201      	movs	r2, #1
 80022d6:	f10d 0103 	add.w	r1, sp, #3
 80022da:	a822      	add	r0, sp, #136	@ 0x88
 80022dc:	f88d a003 	strb.w	sl, [sp, #3]
 80022e0:	f000 f97a 	bl	80025d8 <br_hmac_update>
 80022e4:	4632      	mov	r2, r6
 80022e6:	4649      	mov	r1, r9
 80022e8:	a822      	add	r0, sp, #136	@ 0x88
 80022ea:	f000 f975 	bl	80025d8 <br_hmac_update>
 80022ee:	4639      	mov	r1, r7
 80022f0:	a822      	add	r0, sp, #136	@ 0x88
 80022f2:	f000 f975 	bl	80025e0 <br_hmac_out>
 80022f6:	462b      	mov	r3, r5
 80022f8:	463a      	mov	r2, r7
 80022fa:	4641      	mov	r1, r8
 80022fc:	a801      	add	r0, sp, #4
 80022fe:	f000 f8fb 	bl	80024f8 <br_hmac_key_init>
 8002302:	4652      	mov	r2, sl
 8002304:	a901      	add	r1, sp, #4
 8002306:	a822      	add	r0, sp, #136	@ 0x88
 8002308:	f000 f92c 	bl	8002564 <br_hmac_init>
 800230c:	4621      	mov	r1, r4
 800230e:	a822      	add	r0, sp, #136	@ 0x88
 8002310:	462a      	mov	r2, r5
 8002312:	f000 f961 	bl	80025d8 <br_hmac_update>
 8002316:	4621      	mov	r1, r4
 8002318:	a822      	add	r0, sp, #136	@ 0x88
 800231a:	f000 f961 	bl	80025e0 <br_hmac_out>
 800231e:	b376      	cbz	r6, 800237e <br_hmac_drbg_update+0xea>
 8002320:	4652      	mov	r2, sl
 8002322:	a901      	add	r1, sp, #4
 8002324:	a822      	add	r0, sp, #136	@ 0x88
 8002326:	f000 f91d 	bl	8002564 <br_hmac_init>
 800232a:	462a      	mov	r2, r5
 800232c:	4621      	mov	r1, r4
 800232e:	a822      	add	r0, sp, #136	@ 0x88
 8002330:	f000 f952 	bl	80025d8 <br_hmac_update>
 8002334:	2201      	movs	r2, #1
 8002336:	f10d 0103 	add.w	r1, sp, #3
 800233a:	a822      	add	r0, sp, #136	@ 0x88
 800233c:	f88d 2003 	strb.w	r2, [sp, #3]
 8002340:	f000 f94a 	bl	80025d8 <br_hmac_update>
 8002344:	4632      	mov	r2, r6
 8002346:	4649      	mov	r1, r9
 8002348:	a822      	add	r0, sp, #136	@ 0x88
 800234a:	f000 f945 	bl	80025d8 <br_hmac_update>
 800234e:	4639      	mov	r1, r7
 8002350:	a822      	add	r0, sp, #136	@ 0x88
 8002352:	f000 f945 	bl	80025e0 <br_hmac_out>
 8002356:	462b      	mov	r3, r5
 8002358:	463a      	mov	r2, r7
 800235a:	4641      	mov	r1, r8
 800235c:	a801      	add	r0, sp, #4
 800235e:	f000 f8cb 	bl	80024f8 <br_hmac_key_init>
 8002362:	4652      	mov	r2, sl
 8002364:	a901      	add	r1, sp, #4
 8002366:	a822      	add	r0, sp, #136	@ 0x88
 8002368:	f000 f8fc 	bl	8002564 <br_hmac_init>
 800236c:	4621      	mov	r1, r4
 800236e:	a822      	add	r0, sp, #136	@ 0x88
 8002370:	462a      	mov	r2, r5
 8002372:	f000 f931 	bl	80025d8 <br_hmac_update>
 8002376:	4621      	mov	r1, r4
 8002378:	a822      	add	r0, sp, #136	@ 0x88
 800237a:	f000 f931 	bl	80025e0 <br_hmac_out>
 800237e:	b068      	add	sp, #416	@ 0x1a0
 8002380:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

08002384 <br_hmac_drbg_init>:
 8002384:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002388:	460d      	mov	r5, r1
 800238a:	490e      	ldr	r1, [pc, #56]	@ (80023c4 <br_hmac_drbg_init+0x40>)
 800238c:	686e      	ldr	r6, [r5, #4]
 800238e:	f3c6 2606 	ubfx	r6, r6, #8, #7
 8002392:	4604      	mov	r4, r0
 8002394:	4617      	mov	r7, r2
 8002396:	f840 1b04 	str.w	r1, [r0], #4
 800239a:	4632      	mov	r2, r6
 800239c:	2100      	movs	r1, #0
 800239e:	4698      	mov	r8, r3
 80023a0:	f001 f9f4 	bl	800378c <memset>
 80023a4:	4632      	mov	r2, r6
 80023a6:	2101      	movs	r1, #1
 80023a8:	f104 0044 	add.w	r0, r4, #68	@ 0x44
 80023ac:	f001 f9ee 	bl	800378c <memset>
 80023b0:	f8c4 5084 	str.w	r5, [r4, #132]	@ 0x84
 80023b4:	4642      	mov	r2, r8
 80023b6:	4639      	mov	r1, r7
 80023b8:	4620      	mov	r0, r4
 80023ba:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80023be:	f7ff bf69 	b.w	8002294 <br_hmac_drbg_update>
 80023c2:	bf00      	nop
 80023c4:	080045e0 	.word	0x080045e0

080023c8 <br_hmac_drbg_generate>:
 80023c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80023cc:	f8d0 a084 	ldr.w	sl, [r0, #132]	@ 0x84
 80023d0:	f8da 3004 	ldr.w	r3, [sl, #4]
 80023d4:	b0e9      	sub	sp, #420	@ 0x1a4
 80023d6:	f100 0b04 	add.w	fp, r0, #4
 80023da:	f3c3 2906 	ubfx	r9, r3, #8, #7
 80023de:	4606      	mov	r6, r0
 80023e0:	4688      	mov	r8, r1
 80023e2:	4615      	mov	r5, r2
 80023e4:	464b      	mov	r3, r9
 80023e6:	465a      	mov	r2, fp
 80023e8:	4651      	mov	r1, sl
 80023ea:	a801      	add	r0, sp, #4
 80023ec:	f000 f884 	bl	80024f8 <br_hmac_key_init>
 80023f0:	3644      	adds	r6, #68	@ 0x44
 80023f2:	af22      	add	r7, sp, #136	@ 0x88
 80023f4:	b1cd      	cbz	r5, 800242a <br_hmac_drbg_generate+0x62>
 80023f6:	2200      	movs	r2, #0
 80023f8:	a901      	add	r1, sp, #4
 80023fa:	4638      	mov	r0, r7
 80023fc:	f000 f8b2 	bl	8002564 <br_hmac_init>
 8002400:	464a      	mov	r2, r9
 8002402:	4631      	mov	r1, r6
 8002404:	4638      	mov	r0, r7
 8002406:	f000 f8e7 	bl	80025d8 <br_hmac_update>
 800240a:	4631      	mov	r1, r6
 800240c:	4638      	mov	r0, r7
 800240e:	f000 f8e7 	bl	80025e0 <br_hmac_out>
 8002412:	45a9      	cmp	r9, r5
 8002414:	464c      	mov	r4, r9
 8002416:	bf28      	it	cs
 8002418:	462c      	movcs	r4, r5
 800241a:	4640      	mov	r0, r8
 800241c:	4622      	mov	r2, r4
 800241e:	4631      	mov	r1, r6
 8002420:	f001 fa02 	bl	8003828 <memcpy>
 8002424:	1b2d      	subs	r5, r5, r4
 8002426:	44a0      	add	r8, r4
 8002428:	d1e5      	bne.n	80023f6 <br_hmac_drbg_generate+0x2e>
 800242a:	a901      	add	r1, sp, #4
 800242c:	4638      	mov	r0, r7
 800242e:	2200      	movs	r2, #0
 8002430:	f000 f898 	bl	8002564 <br_hmac_init>
 8002434:	464a      	mov	r2, r9
 8002436:	4631      	mov	r1, r6
 8002438:	4638      	mov	r0, r7
 800243a:	f000 f8cd 	bl	80025d8 <br_hmac_update>
 800243e:	2400      	movs	r4, #0
 8002440:	2201      	movs	r2, #1
 8002442:	f10d 0103 	add.w	r1, sp, #3
 8002446:	4638      	mov	r0, r7
 8002448:	f88d 4003 	strb.w	r4, [sp, #3]
 800244c:	f000 f8c4 	bl	80025d8 <br_hmac_update>
 8002450:	4659      	mov	r1, fp
 8002452:	4638      	mov	r0, r7
 8002454:	f000 f8c4 	bl	80025e0 <br_hmac_out>
 8002458:	464b      	mov	r3, r9
 800245a:	465a      	mov	r2, fp
 800245c:	4651      	mov	r1, sl
 800245e:	a801      	add	r0, sp, #4
 8002460:	f000 f84a 	bl	80024f8 <br_hmac_key_init>
 8002464:	4622      	mov	r2, r4
 8002466:	a901      	add	r1, sp, #4
 8002468:	4638      	mov	r0, r7
 800246a:	f000 f87b 	bl	8002564 <br_hmac_init>
 800246e:	464a      	mov	r2, r9
 8002470:	4631      	mov	r1, r6
 8002472:	4638      	mov	r0, r7
 8002474:	f000 f8b0 	bl	80025d8 <br_hmac_update>
 8002478:	4631      	mov	r1, r6
 800247a:	4638      	mov	r0, r7
 800247c:	f000 f8b0 	bl	80025e0 <br_hmac_out>
 8002480:	b069      	add	sp, #420	@ 0x1a4
 8002482:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002486:	bf00      	nop

08002488 <process_key>:
 8002488:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 800248c:	f8d0 9000 	ldr.w	r9, [r0]
 8002490:	461d      	mov	r5, r3
 8002492:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8002496:	b0c1      	sub	sp, #260	@ 0x104
 8002498:	4604      	mov	r4, r0
 800249a:	4688      	mov	r8, r1
 800249c:	f3c3 53c3 	ubfx	r3, r3, #23, #4
 80024a0:	4611      	mov	r1, r2
 80024a2:	2701      	movs	r7, #1
 80024a4:	462a      	mov	r2, r5
 80024a6:	4668      	mov	r0, sp
 80024a8:	466e      	mov	r6, sp
 80024aa:	409f      	lsls	r7, r3
 80024ac:	f001 f9bc 	bl	8003828 <memcpy>
 80024b0:	b15d      	cbz	r5, 80024ca <process_key+0x42>
 80024b2:	9b48      	ldr	r3, [sp, #288]	@ 0x120
 80024b4:	46ec      	mov	ip, sp
 80024b6:	b2da      	uxtb	r2, r3
 80024b8:	1973      	adds	r3, r6, r5
 80024ba:	f89c e000 	ldrb.w	lr, [ip]
 80024be:	ea8e 0e02 	eor.w	lr, lr, r2
 80024c2:	f80c eb01 	strb.w	lr, [ip], #1
 80024c6:	459c      	cmp	ip, r3
 80024c8:	d1f7      	bne.n	80024ba <process_key+0x32>
 80024ca:	9948      	ldr	r1, [sp, #288]	@ 0x120
 80024cc:	1b7a      	subs	r2, r7, r5
 80024ce:	1970      	adds	r0, r6, r5
 80024d0:	f001 f95c 	bl	800378c <memset>
 80024d4:	f8d9 3008 	ldr.w	r3, [r9, #8]
 80024d8:	4620      	mov	r0, r4
 80024da:	4798      	blx	r3
 80024dc:	6823      	ldr	r3, [r4, #0]
 80024de:	463a      	mov	r2, r7
 80024e0:	4631      	mov	r1, r6
 80024e2:	4620      	mov	r0, r4
 80024e4:	68db      	ldr	r3, [r3, #12]
 80024e6:	4798      	blx	r3
 80024e8:	6823      	ldr	r3, [r4, #0]
 80024ea:	4641      	mov	r1, r8
 80024ec:	695b      	ldr	r3, [r3, #20]
 80024ee:	4620      	mov	r0, r4
 80024f0:	4798      	blx	r3
 80024f2:	b041      	add	sp, #260	@ 0x104
 80024f4:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}

080024f8 <br_hmac_key_init>:
 80024f8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80024fc:	460d      	mov	r5, r1
 80024fe:	6849      	ldr	r1, [r1, #4]
 8002500:	461c      	mov	r4, r3
 8002502:	f3c1 51c3 	ubfx	r1, r1, #23, #4
 8002506:	2301      	movs	r3, #1
 8002508:	b0c6      	sub	sp, #280	@ 0x118
 800250a:	408b      	lsls	r3, r1
 800250c:	429c      	cmp	r4, r3
 800250e:	4607      	mov	r7, r0
 8002510:	6005      	str	r5, [r0, #0]
 8002512:	9512      	str	r5, [sp, #72]	@ 0x48
 8002514:	4616      	mov	r6, r2
 8002516:	f10d 0848 	add.w	r8, sp, #72	@ 0x48
 800251a:	d90f      	bls.n	800253c <br_hmac_key_init+0x44>
 800251c:	68ab      	ldr	r3, [r5, #8]
 800251e:	4640      	mov	r0, r8
 8002520:	4798      	blx	r3
 8002522:	4622      	mov	r2, r4
 8002524:	4631      	mov	r1, r6
 8002526:	68eb      	ldr	r3, [r5, #12]
 8002528:	4640      	mov	r0, r8
 800252a:	4798      	blx	r3
 800252c:	692b      	ldr	r3, [r5, #16]
 800252e:	a902      	add	r1, sp, #8
 8002530:	4640      	mov	r0, r8
 8002532:	4798      	blx	r3
 8002534:	686c      	ldr	r4, [r5, #4]
 8002536:	ae02      	add	r6, sp, #8
 8002538:	f3c4 2406 	ubfx	r4, r4, #8, #7
 800253c:	2336      	movs	r3, #54	@ 0x36
 800253e:	9300      	str	r3, [sp, #0]
 8002540:	4632      	mov	r2, r6
 8002542:	4623      	mov	r3, r4
 8002544:	1d39      	adds	r1, r7, #4
 8002546:	4640      	mov	r0, r8
 8002548:	f7ff ff9e 	bl	8002488 <process_key>
 800254c:	235c      	movs	r3, #92	@ 0x5c
 800254e:	9300      	str	r3, [sp, #0]
 8002550:	4632      	mov	r2, r6
 8002552:	4623      	mov	r3, r4
 8002554:	f107 0144 	add.w	r1, r7, #68	@ 0x44
 8002558:	4640      	mov	r0, r8
 800255a:	f7ff ff95 	bl	8002488 <process_key>
 800255e:	b046      	add	sp, #280	@ 0x118
 8002560:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08002564 <br_hmac_init>:
 8002564:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8002568:	4688      	mov	r8, r1
 800256a:	f04f 0901 	mov.w	r9, #1
 800256e:	f858 6b04 	ldr.w	r6, [r8], #4
 8002572:	6873      	ldr	r3, [r6, #4]
 8002574:	f3c3 53c3 	ubfx	r3, r3, #23, #4
 8002578:	4605      	mov	r5, r0
 800257a:	fa09 f903 	lsl.w	r9, r9, r3
 800257e:	68b3      	ldr	r3, [r6, #8]
 8002580:	460c      	mov	r4, r1
 8002582:	4692      	mov	sl, r2
 8002584:	4798      	blx	r3
 8002586:	4641      	mov	r1, r8
 8002588:	2300      	movs	r3, #0
 800258a:	69b7      	ldr	r7, [r6, #24]
 800258c:	464a      	mov	r2, r9
 800258e:	4628      	mov	r0, r5
 8002590:	47b8      	blx	r7
 8002592:	f104 0344 	add.w	r3, r4, #68	@ 0x44
 8002596:	f105 01d0 	add.w	r1, r5, #208	@ 0xd0
 800259a:	3484      	adds	r4, #132	@ 0x84
 800259c:	f8d3 c000 	ldr.w	ip, [r3]
 80025a0:	6858      	ldr	r0, [r3, #4]
 80025a2:	689a      	ldr	r2, [r3, #8]
 80025a4:	f8d3 e00c 	ldr.w	lr, [r3, #12]
 80025a8:	f8c1 e00c 	str.w	lr, [r1, #12]
 80025ac:	3310      	adds	r3, #16
 80025ae:	42a3      	cmp	r3, r4
 80025b0:	f8c1 c000 	str.w	ip, [r1]
 80025b4:	6048      	str	r0, [r1, #4]
 80025b6:	608a      	str	r2, [r1, #8]
 80025b8:	f101 0110 	add.w	r1, r1, #16
 80025bc:	d1ee      	bne.n	800259c <br_hmac_init+0x38>
 80025be:	6873      	ldr	r3, [r6, #4]
 80025c0:	f3c3 2306 	ubfx	r3, r3, #8, #7
 80025c4:	f1ba 0f00 	cmp.w	sl, #0
 80025c8:	d002      	beq.n	80025d0 <br_hmac_init+0x6c>
 80025ca:	4553      	cmp	r3, sl
 80025cc:	bf28      	it	cs
 80025ce:	4653      	movcs	r3, sl
 80025d0:	f8c5 3110 	str.w	r3, [r5, #272]	@ 0x110
 80025d4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

080025d8 <br_hmac_update>:
 80025d8:	6803      	ldr	r3, [r0, #0]
 80025da:	68db      	ldr	r3, [r3, #12]
 80025dc:	4718      	bx	r3
 80025de:	bf00      	nop

080025e0 <br_hmac_out>:
 80025e0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80025e4:	4607      	mov	r7, r0
 80025e6:	b0c4      	sub	sp, #272	@ 0x110
 80025e8:	f857 4bd0 	ldr.w	r4, [r7], #208
 80025ec:	460e      	mov	r6, r1
 80025ee:	6923      	ldr	r3, [r4, #16]
 80025f0:	4669      	mov	r1, sp
 80025f2:	4605      	mov	r5, r0
 80025f4:	4798      	blx	r3
 80025f6:	6863      	ldr	r3, [r4, #4]
 80025f8:	f04f 0801 	mov.w	r8, #1
 80025fc:	f3c3 53c3 	ubfx	r3, r3, #23, #4
 8002600:	fa08 f803 	lsl.w	r8, r8, r3
 8002604:	a810      	add	r0, sp, #64	@ 0x40
 8002606:	68a3      	ldr	r3, [r4, #8]
 8002608:	4798      	blx	r3
 800260a:	4642      	mov	r2, r8
 800260c:	4639      	mov	r1, r7
 800260e:	a810      	add	r0, sp, #64	@ 0x40
 8002610:	69a7      	ldr	r7, [r4, #24]
 8002612:	2300      	movs	r3, #0
 8002614:	47b8      	blx	r7
 8002616:	6862      	ldr	r2, [r4, #4]
 8002618:	68e3      	ldr	r3, [r4, #12]
 800261a:	f3c2 2206 	ubfx	r2, r2, #8, #7
 800261e:	4669      	mov	r1, sp
 8002620:	a810      	add	r0, sp, #64	@ 0x40
 8002622:	4798      	blx	r3
 8002624:	6923      	ldr	r3, [r4, #16]
 8002626:	a810      	add	r0, sp, #64	@ 0x40
 8002628:	4669      	mov	r1, sp
 800262a:	4798      	blx	r3
 800262c:	f8d5 2110 	ldr.w	r2, [r5, #272]	@ 0x110
 8002630:	4669      	mov	r1, sp
 8002632:	4630      	mov	r0, r6
 8002634:	f001 f8f8 	bl	8003828 <memcpy>
 8002638:	f8d5 0110 	ldr.w	r0, [r5, #272]	@ 0x110
 800263c:	b044      	add	sp, #272	@ 0x110
 800263e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002642:	bf00      	nop

08002644 <br_rsa_i31_private_blind_mod_key_FI>:
 8002644:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002648:	e9d1 4302 	ldrd	r4, r3, [r1, #8]
 800264c:	f5ad 5d37 	sub.w	sp, sp, #11712	@ 0x2dc0
 8002650:	b087      	sub	sp, #28
 8002652:	694a      	ldr	r2, [r1, #20]
 8002654:	900a      	str	r0, [sp, #40]	@ 0x28
 8002656:	460f      	mov	r7, r1
 8002658:	6909      	ldr	r1, [r1, #16]
 800265a:	b363      	cbz	r3, 80026b6 <br_rsa_i31_private_blind_mod_key_FI+0x72>
 800265c:	1e60      	subs	r0, r4, #1
 800265e:	e001      	b.n	8002664 <br_rsa_i31_private_blind_mod_key_FI+0x20>
 8002660:	3b01      	subs	r3, #1
 8002662:	d028      	beq.n	80026b6 <br_rsa_i31_private_blind_mod_key_FI+0x72>
 8002664:	f810 4f01 	ldrb.w	r4, [r0, #1]!
 8002668:	2c00      	cmp	r4, #0
 800266a:	d0f9      	beq.n	8002660 <br_rsa_i31_private_blind_mod_key_FI+0x1c>
 800266c:	b152      	cbz	r2, 8002684 <br_rsa_i31_private_blind_mod_key_FI+0x40>
 800266e:	3901      	subs	r1, #1
 8002670:	e001      	b.n	8002676 <br_rsa_i31_private_blind_mod_key_FI+0x32>
 8002672:	3a01      	subs	r2, #1
 8002674:	d006      	beq.n	8002684 <br_rsa_i31_private_blind_mod_key_FI+0x40>
 8002676:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 800267a:	2800      	cmp	r0, #0
 800267c:	d0f9      	beq.n	8002672 <br_rsa_i31_private_blind_mod_key_FI+0x2e>
 800267e:	4293      	cmp	r3, r2
 8002680:	bf38      	it	cc
 8002682:	4613      	movcc	r3, r2
 8002684:	00db      	lsls	r3, r3, #3
 8002686:	2b00      	cmp	r3, #0
 8002688:	dd17      	ble.n	80026ba <br_rsa_i31_private_blind_mod_key_FI+0x76>
 800268a:	2213      	movs	r2, #19
 800268c:	3b1f      	subs	r3, #31
 800268e:	2b00      	cmp	r3, #0
 8002690:	4616      	mov	r6, r2
 8002692:	f102 0201 	add.w	r2, r2, #1
 8002696:	dcf9      	bgt.n	800268c <br_rsa_i31_private_blind_mod_key_FI+0x48>
 8002698:	3602      	adds	r6, #2
 800269a:	f026 0601 	bic.w	r6, r6, #1
 800269e:	eb06 0346 	add.w	r3, r6, r6, lsl #1
 80026a2:	005a      	lsls	r2, r3, #1
 80026a4:	f5b2 6fd2 	cmp.w	r2, #1680	@ 0x690
 80026a8:	d922      	bls.n	80026f0 <br_rsa_i31_private_blind_mod_key_FI+0xac>
 80026aa:	2000      	movs	r0, #0
 80026ac:	f50d 5d37 	add.w	sp, sp, #11712	@ 0x2dc0
 80026b0:	b007      	add	sp, #28
 80026b2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80026b6:	2a00      	cmp	r2, #0
 80026b8:	d1d9      	bne.n	800266e <br_rsa_i31_private_blind_mod_key_FI+0x2a>
 80026ba:	23f0      	movs	r3, #240	@ 0xf0
 80026bc:	9317      	str	r3, [sp, #92]	@ 0x5c
 80026be:	f240 6104 	movw	r1, #1540	@ 0x604
 80026c2:	f44f 730c 	mov.w	r3, #560	@ 0x230
 80026c6:	e9cd 310b 	strd	r3, r1, [sp, #44]	@ 0x2c
 80026ca:	f44f 73c8 	mov.w	r3, #400	@ 0x190
 80026ce:	930d      	str	r3, [sp, #52]	@ 0x34
 80026d0:	f44f 63be 	mov.w	r3, #1520	@ 0x5f0
 80026d4:	9312      	str	r3, [sp, #72]	@ 0x48
 80026d6:	f44f 7320 	mov.w	r3, #640	@ 0x280
 80026da:	9305      	str	r3, [sp, #20]
 80026dc:	f44f 73f0 	mov.w	r3, #480	@ 0x1e0
 80026e0:	9308      	str	r3, [sp, #32]
 80026e2:	2350      	movs	r3, #80	@ 0x50
 80026e4:	f44f 75a0 	mov.w	r5, #320	@ 0x140
 80026e8:	24a0      	movs	r4, #160	@ 0xa0
 80026ea:	9306      	str	r3, [sp, #24]
 80026ec:	2614      	movs	r6, #20
 80026ee:	e019      	b.n	8002724 <br_rsa_i31_private_blind_mod_key_FI+0xe0>
 80026f0:	f1c6 01d2 	rsb	r1, r6, #210	@ 0xd2
 80026f4:	00c9      	lsls	r1, r1, #3
 80026f6:	9112      	str	r1, [sp, #72]	@ 0x48
 80026f8:	eb06 0186 	add.w	r1, r6, r6, lsl #2
 80026fc:	0089      	lsls	r1, r1, #2
 80026fe:	00b2      	lsls	r2, r6, #2
 8002700:	910d      	str	r1, [sp, #52]	@ 0x34
 8002702:	00d9      	lsls	r1, r3, #3
 8002704:	009b      	lsls	r3, r3, #2
 8002706:	9206      	str	r2, [sp, #24]
 8002708:	9317      	str	r3, [sp, #92]	@ 0x5c
 800270a:	ebc6 02c6 	rsb	r2, r6, r6, lsl #3
 800270e:	0173      	lsls	r3, r6, #5
 8002710:	9305      	str	r3, [sp, #20]
 8002712:	4613      	mov	r3, r2
 8002714:	f5c3 63d2 	rsb	r3, r3, #1680	@ 0x690
 8002718:	0092      	lsls	r2, r2, #2
 800271a:	00f4      	lsls	r4, r6, #3
 800271c:	0135      	lsls	r5, r6, #4
 800271e:	9108      	str	r1, [sp, #32]
 8002720:	920b      	str	r2, [sp, #44]	@ 0x2c
 8002722:	930c      	str	r3, [sp, #48]	@ 0x30
 8002724:	687b      	ldr	r3, [r7, #4]
 8002726:	4a32      	ldr	r2, [pc, #200]	@ (80027f0 <br_rsa_i31_private_blind_mod_key_FI+0x1ac>)
 8002728:	4932      	ldr	r1, [pc, #200]	@ (80027f4 <br_rsa_i31_private_blind_mod_key_FI+0x1b0>)
 800272a:	3307      	adds	r3, #7
 800272c:	08db      	lsrs	r3, r3, #3
 800272e:	9309      	str	r3, [sp, #36]	@ 0x24
 8002730:	a81c      	add	r0, sp, #112	@ 0x70
 8002732:	2303      	movs	r3, #3
 8002734:	f7ff fe26 	bl	8002384 <br_hmac_drbg_init>
 8002738:	4639      	mov	r1, r7
 800273a:	a83e      	add	r0, sp, #248	@ 0xf8
 800273c:	f000 fbb0 	bl	8002ea0 <init_temp_rsa_key>
 8002740:	f50d 529c 	add.w	r2, sp, #4992	@ 0x1380
 8002744:	3218      	adds	r2, #24
 8002746:	4639      	mov	r1, r7
 8002748:	1f17      	subs	r7, r2, #4
 800274a:	9600      	str	r6, [sp, #0]
 800274c:	463b      	mov	r3, r7
 800274e:	aa3e      	add	r2, sp, #248	@ 0xf8
 8002750:	a81c      	add	r0, sp, #112	@ 0x70
 8002752:	f60d 59d8 	addw	r9, sp, #3544	@ 0xdd8
 8002756:	f000 fc01 	bl	8002f5c <br_i31_init_key>
 800275a:	4633      	mov	r3, r6
 800275c:	463a      	mov	r2, r7
 800275e:	f6a9 5674 	subw	r6, r9, #3444	@ 0xd74
 8002762:	a93e      	add	r1, sp, #248	@ 0xf8
 8002764:	a81c      	add	r0, sp, #112	@ 0x70
 8002766:	f000 fd79 	bl	800325c <br_i31_update_key>
 800276a:	223e      	movs	r2, #62	@ 0x3e
 800276c:	a919      	add	r1, sp, #100	@ 0x64
 800276e:	a81c      	add	r0, sp, #112	@ 0x70
 8002770:	f000 fac0 	bl	8002cf4 <make_rand>
 8002774:	6873      	ldr	r3, [r6, #4]
 8002776:	2102      	movs	r1, #2
 8002778:	f043 0301 	orr.w	r3, r3, #1
 800277c:	a81a      	add	r0, sp, #104	@ 0x68
 800277e:	6073      	str	r3, [r6, #4]
 8002780:	f7fd ff88 	bl	8000694 <br_i31_bit_length>
 8002784:	683b      	ldr	r3, [r7, #0]
 8002786:	513b      	str	r3, [r7, r4]
 8002788:	443c      	add	r4, r7
 800278a:	331f      	adds	r3, #31
 800278c:	095a      	lsrs	r2, r3, #5
 800278e:	1d21      	adds	r1, r4, #4
 8002790:	6030      	str	r0, [r6, #0]
 8002792:	0092      	lsls	r2, r2, #2
 8002794:	4608      	mov	r0, r1
 8002796:	910f      	str	r1, [sp, #60]	@ 0x3c
 8002798:	2100      	movs	r1, #0
 800279a:	f000 fff7 	bl	800378c <memset>
 800279e:	f5a9 634e 	sub.w	r3, r9, #3296	@ 0xce0
 80027a2:	e9d3 1200 	ldrd	r1, r2, [r3]
 80027a6:	3207      	adds	r2, #7
 80027a8:	4620      	mov	r0, r4
 80027aa:	08d2      	lsrs	r2, r2, #3
 80027ac:	f7fd ffe2 	bl	8000774 <br_i31_decode>
 80027b0:	9e09      	ldr	r6, [sp, #36]	@ 0x24
 80027b2:	443d      	add	r5, r7
 80027b4:	f50d 58ee 	add.w	r8, sp, #7616	@ 0x1dc0
 80027b8:	4622      	mov	r2, r4
 80027ba:	4631      	mov	r1, r6
 80027bc:	4628      	mov	r0, r5
 80027be:	f108 0818 	add.w	r8, r8, #24
 80027c2:	f7fe f871 	bl	80008a8 <br_i31_encode>
 80027c6:	2e00      	cmp	r6, #0
 80027c8:	f000 8208 	beq.w	8002bdc <br_rsa_i31_private_blind_mod_key_FI+0x598>
 80027cc:	990a      	ldr	r1, [sp, #40]	@ 0x28
 80027ce:	19aa      	adds	r2, r5, r6
 80027d0:	4431      	add	r1, r6
 80027d2:	f04f 0b00 	mov.w	fp, #0
 80027d6:	f812 0d01 	ldrb.w	r0, [r2, #-1]!
 80027da:	f811 3d01 	ldrb.w	r3, [r1, #-1]!
 80027de:	1a1b      	subs	r3, r3, r0
 80027e0:	eba3 0b0b 	sub.w	fp, r3, fp
 80027e4:	4295      	cmp	r5, r2
 80027e6:	f3cb 2b00 	ubfx	fp, fp, #8, #1
 80027ea:	d1f4      	bne.n	80027d6 <br_rsa_i31_private_blind_mod_key_FI+0x192>
 80027ec:	e004      	b.n	80027f8 <br_rsa_i31_private_blind_mod_key_FI+0x1b4>
 80027ee:	bf00      	nop
 80027f0:	0800423c 	.word	0x0800423c
 80027f4:	080044a4 	.word	0x080044a4
 80027f8:	f5a9 664e 	sub.w	r6, r9, #3296	@ 0xce0
 80027fc:	4620      	mov	r0, r4
 80027fe:	6872      	ldr	r2, [r6, #4]
 8002800:	6831      	ldr	r1, [r6, #0]
 8002802:	3207      	adds	r2, #7
 8002804:	08d2      	lsrs	r2, r2, #3
 8002806:	f7fd ffb5 	bl	8000774 <br_i31_decode>
 800280a:	6823      	ldr	r3, [r4, #0]
 800280c:	4628      	mov	r0, r5
 800280e:	2100      	movs	r1, #0
 8002810:	f840 3b04 	str.w	r3, [r0], #4
 8002814:	331f      	adds	r3, #31
 8002816:	095a      	lsrs	r2, r3, #5
 8002818:	9b08      	ldr	r3, [sp, #32]
 800281a:	900e      	str	r0, [sp, #56]	@ 0x38
 800281c:	0092      	lsls	r2, r2, #2
 800281e:	eb07 0a03 	add.w	sl, r7, r3
 8002822:	f000 ffb3 	bl	800378c <memset>
 8002826:	e9dd 2109 	ldrd	r2, r1, [sp, #36]	@ 0x24
 800282a:	4623      	mov	r3, r4
 800282c:	4628      	mov	r0, r5
 800282e:	f7fd ffd1 	bl	80007d4 <br_i31_decode_reduce>
 8002832:	f6a8 2844 	subw	r8, r8, #2628	@ 0xa44
 8002836:	6823      	ldr	r3, [r4, #0]
 8002838:	f8c8 3000 	str.w	r3, [r8]
 800283c:	f50d 5c9c 	add.w	ip, sp, #4992	@ 0x1380
 8002840:	331f      	adds	r3, #31
 8002842:	095a      	lsrs	r2, r3, #5
 8002844:	f10c 0c18 	add.w	ip, ip, #24
 8002848:	0092      	lsls	r2, r2, #2
 800284a:	2100      	movs	r1, #0
 800284c:	4660      	mov	r0, ip
 800284e:	f000 ff9d 	bl	800378c <memset>
 8002852:	f6a9 5174 	subw	r1, r9, #3444	@ 0xd74
 8002856:	f50d 5c9c 	add.w	ip, sp, #4992	@ 0x1380
 800285a:	680a      	ldr	r2, [r1, #0]
 800285c:	9110      	str	r1, [sp, #64]	@ 0x40
 800285e:	f10c 0c18 	add.w	ip, ip, #24
 8002862:	ab1a      	add	r3, sp, #104	@ 0x68
 8002864:	3207      	adds	r2, #7
 8002866:	4660      	mov	r0, ip
 8002868:	4619      	mov	r1, r3
 800286a:	08d2      	lsrs	r2, r2, #3
 800286c:	9311      	str	r3, [sp, #68]	@ 0x44
 800286e:	f000 ffdb 	bl	8003828 <memcpy>
 8002872:	6823      	ldr	r3, [r4, #0]
 8002874:	6860      	ldr	r0, [r4, #4]
 8002876:	f8c8 3000 	str.w	r3, [r8]
 800287a:	e9d6 980c 	ldrd	r9, r8, [r6, #48]	@ 0x30
 800287e:	f7fe ff2d 	bl	80016dc <br_i31_ninv31>
 8002882:	9000      	str	r0, [sp, #0]
 8002884:	9805      	ldr	r0, [sp, #20]
 8002886:	9a12      	ldr	r2, [sp, #72]	@ 0x48
 8002888:	9202      	str	r2, [sp, #8]
 800288a:	4438      	add	r0, r7
 800288c:	4642      	mov	r2, r8
 800288e:	4649      	mov	r1, r9
 8002890:	9005      	str	r0, [sp, #20]
 8002892:	9001      	str	r0, [sp, #4]
 8002894:	4623      	mov	r3, r4
 8002896:	4638      	mov	r0, r7
 8002898:	f7fe fbc2 	bl	8001020 <br_i31_modpow_opt>
 800289c:	f8d4 8000 	ldr.w	r8, [r4]
 80028a0:	9b08      	ldr	r3, [sp, #32]
 80028a2:	9013      	str	r0, [sp, #76]	@ 0x4c
 80028a4:	f108 021f 	add.w	r2, r8, #31
 80028a8:	f10a 0104 	add.w	r1, sl, #4
 80028ac:	0952      	lsrs	r2, r2, #5
 80028ae:	f847 8003 	str.w	r8, [r7, r3]
 80028b2:	4608      	mov	r0, r1
 80028b4:	0092      	lsls	r2, r2, #2
 80028b6:	2100      	movs	r1, #0
 80028b8:	9007      	str	r0, [sp, #28]
 80028ba:	f000 ff67 	bl	800378c <memset>
 80028be:	463a      	mov	r2, r7
 80028c0:	f8c5 8000 	str.w	r8, [r5]
 80028c4:	4629      	mov	r1, r5
 80028c6:	4650      	mov	r0, sl
 80028c8:	f7fe fde6 	bl	8001498 <br_i31_mulacc>
 80028cc:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
 80028ce:	e9d6 1204 	ldrd	r1, r2, [r6, #16]
 80028d2:	eb07 0803 	add.w	r8, r7, r3
 80028d6:	4628      	mov	r0, r5
 80028d8:	f7fd ff4c 	bl	8000774 <br_i31_decode>
 80028dc:	e9d6 1202 	ldrd	r1, r2, [r6, #8]
 80028e0:	4640      	mov	r0, r8
 80028e2:	f7fd ff47 	bl	8000774 <br_i31_decode>
 80028e6:	9a06      	ldr	r2, [sp, #24]
 80028e8:	443a      	add	r2, r7
 80028ea:	4610      	mov	r0, r2
 80028ec:	4651      	mov	r1, sl
 80028ee:	4642      	mov	r2, r8
 80028f0:	9006      	str	r0, [sp, #24]
 80028f2:	f7fe ff13 	bl	800171c <br_i31_reduce>
 80028f6:	4638      	mov	r0, r7
 80028f8:	462a      	mov	r2, r5
 80028fa:	4651      	mov	r1, sl
 80028fc:	f7fe ff0e 	bl	800171c <br_i31_reduce>
 8002900:	9a0b      	ldr	r2, [sp, #44]	@ 0x2c
 8002902:	443a      	add	r2, r7
 8002904:	9201      	str	r2, [sp, #4]
 8002906:	6c73      	ldr	r3, [r6, #68]	@ 0x44
 8002908:	9300      	str	r3, [sp, #0]
 800290a:	f10d 0c70 	add.w	ip, sp, #112	@ 0x70
 800290e:	4691      	mov	r9, r2
 8002910:	4660      	mov	r0, ip
 8002912:	e9d6 2308 	ldrd	r2, r3, [r6, #32]
 8002916:	4651      	mov	r1, sl
 8002918:	f000 fa70 	bl	8002dfc <blind_exponent>
 800291c:	682b      	ldr	r3, [r5, #0]
 800291e:	6023      	str	r3, [r4, #0]
 8002920:	331f      	adds	r3, #31
 8002922:	095a      	lsrs	r2, r3, #5
 8002924:	900b      	str	r0, [sp, #44]	@ 0x2c
 8002926:	0092      	lsls	r2, r2, #2
 8002928:	2100      	movs	r1, #0
 800292a:	980f      	ldr	r0, [sp, #60]	@ 0x3c
 800292c:	f000 ff2e 	bl	800378c <memset>
 8002930:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
 8002932:	4639      	mov	r1, r7
 8002934:	4620      	mov	r0, r4
 8002936:	f7fe fef1 	bl	800171c <br_i31_reduce>
 800293a:	6868      	ldr	r0, [r5, #4]
 800293c:	f7fe fece 	bl	80016dc <br_i31_ninv31>
 8002940:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
 8002942:	9014      	str	r0, [sp, #80]	@ 0x50
 8002944:	f10d 0c70 	add.w	ip, sp, #112	@ 0x70
 8002948:	4639      	mov	r1, r7
 800294a:	e9cd 9302 	strd	r9, r3, [sp, #8]
 800294e:	4652      	mov	r2, sl
 8002950:	e9cd 5000 	strd	r5, r0, [sp]
 8002954:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
 8002956:	4660      	mov	r0, ip
 8002958:	f7ff f82c 	bl	80019b4 <br_i31_modpow_opt_rand>
 800295c:	6bf3      	ldr	r3, [r6, #60]	@ 0x3c
 800295e:	9015      	str	r0, [sp, #84]	@ 0x54
 8002960:	6858      	ldr	r0, [r3, #4]
 8002962:	f7fe febb 	bl	80016dc <br_i31_ninv31>
 8002966:	9a0c      	ldr	r2, [sp, #48]	@ 0x30
 8002968:	9001      	str	r0, [sp, #4]
 800296a:	e9cd 9202 	strd	r9, r2, [sp, #8]
 800296e:	f10d 0c70 	add.w	ip, sp, #112	@ 0x70
 8002972:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
 8002974:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
 8002976:	9200      	str	r2, [sp, #0]
 8002978:	4621      	mov	r1, r4
 800297a:	4652      	mov	r2, sl
 800297c:	4660      	mov	r0, ip
 800297e:	f7ff f819 	bl	80019b4 <br_i31_modpow_opt_rand>
 8002982:	f8cd 9004 	str.w	r9, [sp, #4]
 8002986:	6c33      	ldr	r3, [r6, #64]	@ 0x40
 8002988:	9300      	str	r3, [sp, #0]
 800298a:	f10d 0c70 	add.w	ip, sp, #112	@ 0x70
 800298e:	e9d6 2306 	ldrd	r2, r3, [r6, #24]
 8002992:	9016      	str	r0, [sp, #88]	@ 0x58
 8002994:	4651      	mov	r1, sl
 8002996:	4660      	mov	r0, ip
 8002998:	f000 fa30 	bl	8002dfc <blind_exponent>
 800299c:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
 800299e:	9917      	ldr	r1, [sp, #92]	@ 0x5c
 80029a0:	58fb      	ldr	r3, [r7, r3]
 80029a2:	507b      	str	r3, [r7, r1]
 80029a4:	331f      	adds	r3, #31
 80029a6:	1879      	adds	r1, r7, r1
 80029a8:	095a      	lsrs	r2, r3, #5
 80029aa:	900f      	str	r0, [sp, #60]	@ 0x3c
 80029ac:	4608      	mov	r0, r1
 80029ae:	0092      	lsls	r2, r2, #2
 80029b0:	2100      	movs	r1, #0
 80029b2:	900b      	str	r0, [sp, #44]	@ 0x2c
 80029b4:	3004      	adds	r0, #4
 80029b6:	f000 fee9 	bl	800378c <memset>
 80029ba:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
 80029bc:	9906      	ldr	r1, [sp, #24]
 80029be:	980b      	ldr	r0, [sp, #44]	@ 0x2c
 80029c0:	f7fe feac 	bl	800171c <br_i31_reduce>
 80029c4:	f8d8 0004 	ldr.w	r0, [r8, #4]
 80029c8:	f7fe fe88 	bl	80016dc <br_i31_ninv31>
 80029cc:	9a0c      	ldr	r2, [sp, #48]	@ 0x30
 80029ce:	9906      	ldr	r1, [sp, #24]
 80029d0:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
 80029d2:	900d      	str	r0, [sp, #52]	@ 0x34
 80029d4:	f10d 0c70 	add.w	ip, sp, #112	@ 0x70
 80029d8:	e9cd 9202 	strd	r9, r2, [sp, #8]
 80029dc:	e9cd 8000 	strd	r8, r0, [sp]
 80029e0:	4652      	mov	r2, sl
 80029e2:	4660      	mov	r0, ip
 80029e4:	f7fe ffe6 	bl	80019b4 <br_i31_modpow_opt_rand>
 80029e8:	6bb3      	ldr	r3, [r6, #56]	@ 0x38
 80029ea:	9017      	str	r0, [sp, #92]	@ 0x5c
 80029ec:	6858      	ldr	r0, [r3, #4]
 80029ee:	f7fe fe75 	bl	80016dc <br_i31_ninv31>
 80029f2:	9a0c      	ldr	r2, [sp, #48]	@ 0x30
 80029f4:	9001      	str	r0, [sp, #4]
 80029f6:	e9cd 9202 	strd	r9, r2, [sp, #8]
 80029fa:	f10d 0c70 	add.w	ip, sp, #112	@ 0x70
 80029fe:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
 8002a00:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
 8002a02:	990b      	ldr	r1, [sp, #44]	@ 0x2c
 8002a04:	9200      	str	r2, [sp, #0]
 8002a06:	4660      	mov	r0, ip
 8002a08:	4652      	mov	r2, sl
 8002a0a:	f7fe ffd3 	bl	80019b4 <br_i31_modpow_opt_rand>
 8002a0e:	4642      	mov	r2, r8
 8002a10:	4639      	mov	r1, r7
 8002a12:	4681      	mov	r9, r0
 8002a14:	9805      	ldr	r0, [sp, #20]
 8002a16:	f7fe fe81 	bl	800171c <br_i31_reduce>
 8002a1a:	e9dd 1005 	ldrd	r1, r0, [sp, #20]
 8002a1e:	2201      	movs	r2, #1
 8002a20:	f7fe fede 	bl	80017e0 <br_i31_sub>
 8002a24:	4641      	mov	r1, r8
 8002a26:	4602      	mov	r2, r0
 8002a28:	9806      	ldr	r0, [sp, #24]
 8002a2a:	f7fd fe11 	bl	8000650 <br_i31_add>
 8002a2e:	4641      	mov	r1, r8
 8002a30:	9806      	ldr	r0, [sp, #24]
 8002a32:	f7fe fef7 	bl	8001824 <br_i31_to_monty>
 8002a36:	e9d6 120a 	ldrd	r1, r2, [r6, #40]	@ 0x28
 8002a3a:	4643      	mov	r3, r8
 8002a3c:	4650      	mov	r0, sl
 8002a3e:	f7fd fec9 	bl	80007d4 <br_i31_decode_reduce>
 8002a42:	9a0d      	ldr	r2, [sp, #52]	@ 0x34
 8002a44:	9906      	ldr	r1, [sp, #24]
 8002a46:	9805      	ldr	r0, [sp, #20]
 8002a48:	9200      	str	r2, [sp, #0]
 8002a4a:	4643      	mov	r3, r8
 8002a4c:	4652      	mov	r2, sl
 8002a4e:	f7fe fc33 	bl	80012b8 <br_i31_montymul>
 8002a52:	4638      	mov	r0, r7
 8002a54:	9a05      	ldr	r2, [sp, #20]
 8002a56:	4629      	mov	r1, r5
 8002a58:	f7fe fd1e 	bl	8001498 <br_i31_mulacc>
 8002a5c:	6bf2      	ldr	r2, [r6, #60]	@ 0x3c
 8002a5e:	4639      	mov	r1, r7
 8002a60:	4628      	mov	r0, r5
 8002a62:	f7fe fe5b 	bl	800171c <br_i31_reduce>
 8002a66:	6bb2      	ldr	r2, [r6, #56]	@ 0x38
 8002a68:	4639      	mov	r1, r7
 8002a6a:	4640      	mov	r0, r8
 8002a6c:	f7fe fe56 	bl	800171c <br_i31_reduce>
 8002a70:	2201      	movs	r2, #1
 8002a72:	4621      	mov	r1, r4
 8002a74:	4628      	mov	r0, r5
 8002a76:	f7fe feb3 	bl	80017e0 <br_i31_sub>
 8002a7a:	990b      	ldr	r1, [sp, #44]	@ 0x2c
 8002a7c:	2201      	movs	r2, #1
 8002a7e:	4640      	mov	r0, r8
 8002a80:	f7fe feae 	bl	80017e0 <br_i31_sub>
 8002a84:	2201      	movs	r2, #1
 8002a86:	4629      	mov	r1, r5
 8002a88:	4640      	mov	r0, r8
 8002a8a:	f7fd fde1 	bl	8000650 <br_i31_add>
 8002a8e:	f10d 0c64 	add.w	ip, sp, #100	@ 0x64
 8002a92:	4660      	mov	r0, ip
 8002a94:	4641      	mov	r1, r8
 8002a96:	2201      	movs	r2, #1
 8002a98:	f7fd fdda 	bl	8000650 <br_i31_add>
 8002a9c:	6872      	ldr	r2, [r6, #4]
 8002a9e:	6831      	ldr	r1, [r6, #0]
 8002aa0:	3207      	adds	r2, #7
 8002aa2:	08d2      	lsrs	r2, r2, #3
 8002aa4:	4620      	mov	r0, r4
 8002aa6:	f7fd fe65 	bl	8000774 <br_i31_decode>
 8002aaa:	6823      	ldr	r3, [r4, #0]
 8002aac:	602b      	str	r3, [r5, #0]
 8002aae:	331f      	adds	r3, #31
 8002ab0:	095a      	lsrs	r2, r3, #5
 8002ab2:	2100      	movs	r1, #0
 8002ab4:	0092      	lsls	r2, r2, #2
 8002ab6:	980e      	ldr	r0, [sp, #56]	@ 0x38
 8002ab8:	f000 fe68 	bl	800378c <memset>
 8002abc:	4639      	mov	r1, r7
 8002abe:	4622      	mov	r2, r4
 8002ac0:	4628      	mov	r0, r5
 8002ac2:	f7fe fe2b 	bl	800171c <br_i31_reduce>
 8002ac6:	6823      	ldr	r3, [r4, #0]
 8002ac8:	9a08      	ldr	r2, [sp, #32]
 8002aca:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002ace:	50bb      	str	r3, [r7, r2]
 8002ad0:	331f      	adds	r3, #31
 8002ad2:	095a      	lsrs	r2, r3, #5
 8002ad4:	2100      	movs	r1, #0
 8002ad6:	0092      	lsls	r2, r2, #2
 8002ad8:	4640      	mov	r0, r8
 8002ada:	f000 fe57 	bl	800378c <memset>
 8002ade:	9b10      	ldr	r3, [sp, #64]	@ 0x40
 8002ae0:	9911      	ldr	r1, [sp, #68]	@ 0x44
 8002ae2:	681a      	ldr	r2, [r3, #0]
 8002ae4:	f8cd 801c 	str.w	r8, [sp, #28]
 8002ae8:	3207      	adds	r2, #7
 8002aea:	08d2      	lsrs	r2, r2, #3
 8002aec:	4640      	mov	r0, r8
 8002aee:	f000 fe9b 	bl	8003828 <memcpy>
 8002af2:	9908      	ldr	r1, [sp, #32]
 8002af4:	6823      	ldr	r3, [r4, #0]
 8002af6:	507b      	str	r3, [r7, r1]
 8002af8:	602b      	str	r3, [r5, #0]
 8002afa:	6860      	ldr	r0, [r4, #4]
 8002afc:	f7fe fdee 	bl	80016dc <br_i31_ninv31>
 8002b00:	9a05      	ldr	r2, [sp, #20]
 8002b02:	9200      	str	r2, [sp, #0]
 8002b04:	4603      	mov	r3, r0
 8002b06:	4622      	mov	r2, r4
 8002b08:	4651      	mov	r1, sl
 8002b0a:	4628      	mov	r0, r5
 8002b0c:	f7fd ff92 	bl	8000a34 <br_i31_moddiv>
 8002b10:	6823      	ldr	r3, [r4, #0]
 8002b12:	9908      	ldr	r1, [sp, #32]
 8002b14:	507b      	str	r3, [r7, r1]
 8002b16:	331f      	adds	r3, #31
 8002b18:	095a      	lsrs	r2, r3, #5
 8002b1a:	0092      	lsls	r2, r2, #2
 8002b1c:	2100      	movs	r1, #0
 8002b1e:	4680      	mov	r8, r0
 8002b20:	9807      	ldr	r0, [sp, #28]
 8002b22:	f000 fe33 	bl	800378c <memset>
 8002b26:	682a      	ldr	r2, [r5, #0]
 8002b28:	990e      	ldr	r1, [sp, #56]	@ 0x38
 8002b2a:	9807      	ldr	r0, [sp, #28]
 8002b2c:	3207      	adds	r2, #7
 8002b2e:	08d2      	lsrs	r2, r2, #3
 8002b30:	f000 fe7a 	bl	8003828 <memcpy>
 8002b34:	9908      	ldr	r1, [sp, #32]
 8002b36:	682b      	ldr	r3, [r5, #0]
 8002b38:	507b      	str	r3, [r7, r1]
 8002b3a:	6860      	ldr	r0, [r4, #4]
 8002b3c:	e9d6 760c 	ldrd	r7, r6, [r6, #48]	@ 0x30
 8002b40:	f7fe fdcc 	bl	80016dc <br_i31_ninv31>
 8002b44:	9b12      	ldr	r3, [sp, #72]	@ 0x48
 8002b46:	9302      	str	r3, [sp, #8]
 8002b48:	9b05      	ldr	r3, [sp, #20]
 8002b4a:	4632      	mov	r2, r6
 8002b4c:	e9cd 0300 	strd	r0, r3, [sp]
 8002b50:	4639      	mov	r1, r7
 8002b52:	4623      	mov	r3, r4
 8002b54:	4650      	mov	r0, sl
 8002b56:	f7fe fa63 	bl	8001020 <br_i31_modpow_opt>
 8002b5a:	9e09      	ldr	r6, [sp, #36]	@ 0x24
 8002b5c:	4652      	mov	r2, sl
 8002b5e:	4631      	mov	r1, r6
 8002b60:	4620      	mov	r0, r4
 8002b62:	f7fd fea1 	bl	80008a8 <br_i31_encode>
 8002b66:	b1f6      	cbz	r6, 8002ba6 <br_rsa_i31_private_blind_mod_key_FI+0x562>
 8002b68:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 8002b6a:	1e58      	subs	r0, r3, #1
 8002b6c:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
 8002b6e:	4420      	add	r0, r4
 8002b70:	1e59      	subs	r1, r3, #1
 8002b72:	3c01      	subs	r4, #1
 8002b74:	f04f 32ff 	mov.w	r2, #4294967295	@ 0xffffffff
 8002b78:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002b7c:	f811 6f01 	ldrb.w	r6, [r1, #1]!
 8002b80:	4073      	eors	r3, r6
 8002b82:	fab3 f383 	clz	r3, r3
 8002b86:	095b      	lsrs	r3, r3, #5
 8002b88:	4284      	cmp	r4, r0
 8002b8a:	fb03 f202 	mul.w	r2, r3, r2
 8002b8e:	d1f3      	bne.n	8002b78 <br_rsa_i31_private_blind_mod_key_FI+0x534>
 8002b90:	9b09      	ldr	r3, [sp, #36]	@ 0x24
 8002b92:	eb05 0083 	add.w	r0, r5, r3, lsl #2
 8002b96:	3804      	subs	r0, #4
 8002b98:	1f2b      	subs	r3, r5, #4
 8002b9a:	f853 1f04 	ldr.w	r1, [r3, #4]!
 8002b9e:	4011      	ands	r1, r2
 8002ba0:	4283      	cmp	r3, r0
 8002ba2:	6019      	str	r1, [r3, #0]
 8002ba4:	d1f9      	bne.n	8002b9a <br_rsa_i31_private_blind_mod_key_FI+0x556>
 8002ba6:	e9dd 1009 	ldrd	r1, r0, [sp, #36]	@ 0x24
 8002baa:	462a      	mov	r2, r5
 8002bac:	f7fd fe7c 	bl	80008a8 <br_i31_encode>
 8002bb0:	9b13      	ldr	r3, [sp, #76]	@ 0x4c
 8002bb2:	ea03 000b 	and.w	r0, r3, fp
 8002bb6:	9b14      	ldr	r3, [sp, #80]	@ 0x50
 8002bb8:	4018      	ands	r0, r3
 8002bba:	9b15      	ldr	r3, [sp, #84]	@ 0x54
 8002bbc:	4018      	ands	r0, r3
 8002bbe:	9b16      	ldr	r3, [sp, #88]	@ 0x58
 8002bc0:	4018      	ands	r0, r3
 8002bc2:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
 8002bc4:	4018      	ands	r0, r3
 8002bc6:	9b17      	ldr	r3, [sp, #92]	@ 0x5c
 8002bc8:	4018      	ands	r0, r3
 8002bca:	ea00 0009 	and.w	r0, r0, r9
 8002bce:	ea00 0008 	and.w	r0, r0, r8
 8002bd2:	f50d 5d37 	add.w	sp, sp, #11712	@ 0x2dc0
 8002bd6:	b007      	add	sp, #28
 8002bd8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002bdc:	f8dd b024 	ldr.w	fp, [sp, #36]	@ 0x24
 8002be0:	e60a      	b.n	80027f8 <br_rsa_i31_private_blind_mod_key_FI+0x1b4>
 8002be2:	bf00      	nop

08002be4 <create_mask>:
 8002be4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8002be8:	9f08      	ldr	r7, [sp, #32]
 8002bea:	6814      	ldr	r4, [r2, #0]
 8002bec:	4605      	mov	r5, r0
 8002bee:	4638      	mov	r0, r7
 8002bf0:	4616      	mov	r6, r2
 8002bf2:	f840 4b04 	str.w	r4, [r0], #4
 8002bf6:	341f      	adds	r4, #31
 8002bf8:	0964      	lsrs	r4, r4, #5
 8002bfa:	4688      	mov	r8, r1
 8002bfc:	00a2      	lsls	r2, r4, #2
 8002bfe:	2100      	movs	r1, #0
 8002c00:	4699      	mov	r9, r3
 8002c02:	f000 fdc3 	bl	800378c <memset>
 8002c06:	6833      	ldr	r3, [r6, #0]
 8002c08:	603b      	str	r3, [r7, #0]
 8002c0a:	464a      	mov	r2, r9
 8002c0c:	4631      	mov	r1, r6
 8002c0e:	4638      	mov	r0, r7
 8002c10:	f7fe fc42 	bl	8001498 <br_i31_mulacc>
 8002c14:	4642      	mov	r2, r8
 8002c16:	4639      	mov	r1, r7
 8002c18:	4628      	mov	r0, r5
 8002c1a:	f7fe fd7f 	bl	800171c <br_i31_reduce>
 8002c1e:	4628      	mov	r0, r5
 8002c20:	f850 1b04 	ldr.w	r1, [r0], #4
 8002c24:	311f      	adds	r1, #31
 8002c26:	0949      	lsrs	r1, r1, #5
 8002c28:	f7fd fd34 	bl	8000694 <br_i31_bit_length>
 8002c2c:	6028      	str	r0, [r5, #0]
 8002c2e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8002c32:	bf00      	nop

08002c34 <inverse>:
 8002c34:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002c38:	4615      	mov	r5, r2
 8002c3a:	4606      	mov	r6, r0
 8002c3c:	6812      	ldr	r2, [r2, #0]
 8002c3e:	b082      	sub	sp, #8
 8002c40:	f846 2b04 	str.w	r2, [r6], #4
 8002c44:	321f      	adds	r2, #31
 8002c46:	0952      	lsrs	r2, r2, #5
 8002c48:	4604      	mov	r4, r0
 8002c4a:	460f      	mov	r7, r1
 8002c4c:	0092      	lsls	r2, r2, #2
 8002c4e:	2100      	movs	r1, #0
 8002c50:	4630      	mov	r0, r6
 8002c52:	4698      	mov	r8, r3
 8002c54:	f000 fd9a 	bl	800378c <memset>
 8002c58:	682a      	ldr	r2, [r5, #0]
 8002c5a:	603a      	str	r2, [r7, #0]
 8002c5c:	2301      	movs	r3, #1
 8002c5e:	6063      	str	r3, [r4, #4]
 8002c60:	6868      	ldr	r0, [r5, #4]
 8002c62:	f7fe fd3b 	bl	80016dc <br_i31_ninv31>
 8002c66:	462a      	mov	r2, r5
 8002c68:	4603      	mov	r3, r0
 8002c6a:	4639      	mov	r1, r7
 8002c6c:	f8cd 8000 	str.w	r8, [sp]
 8002c70:	4620      	mov	r0, r4
 8002c72:	f7fd fedf 	bl	8000a34 <br_i31_moddiv>
 8002c76:	6821      	ldr	r1, [r4, #0]
 8002c78:	311f      	adds	r1, #31
 8002c7a:	4630      	mov	r0, r6
 8002c7c:	0949      	lsrs	r1, r1, #5
 8002c7e:	f7fd fd09 	bl	8000694 <br_i31_bit_length>
 8002c82:	6020      	str	r0, [r4, #0]
 8002c84:	b002      	add	sp, #8
 8002c86:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002c8a:	bf00      	nop

08002c8c <reblind>:
 8002c8c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8002c90:	9f08      	ldr	r7, [sp, #32]
 8002c92:	6814      	ldr	r4, [r2, #0]
 8002c94:	4605      	mov	r5, r0
 8002c96:	4638      	mov	r0, r7
 8002c98:	0064      	lsls	r4, r4, #1
 8002c9a:	f840 4b04 	str.w	r4, [r0], #4
 8002c9e:	341f      	adds	r4, #31
 8002ca0:	4699      	mov	r9, r3
 8002ca2:	0964      	lsrs	r4, r4, #5
 8002ca4:	4616      	mov	r6, r2
 8002ca6:	4688      	mov	r8, r1
 8002ca8:	00a2      	lsls	r2, r4, #2
 8002caa:	2100      	movs	r1, #0
 8002cac:	f000 fd6e 	bl	800378c <memset>
 8002cb0:	f8d9 3000 	ldr.w	r3, [r9]
 8002cb4:	603b      	str	r3, [r7, #0]
 8002cb6:	4642      	mov	r2, r8
 8002cb8:	4649      	mov	r1, r9
 8002cba:	4638      	mov	r0, r7
 8002cbc:	f7fe fbec 	bl	8001498 <br_i31_mulacc>
 8002cc0:	462c      	mov	r4, r5
 8002cc2:	6832      	ldr	r2, [r6, #0]
 8002cc4:	f844 2b04 	str.w	r2, [r4], #4
 8002cc8:	321f      	adds	r2, #31
 8002cca:	0952      	lsrs	r2, r2, #5
 8002ccc:	0092      	lsls	r2, r2, #2
 8002cce:	2100      	movs	r1, #0
 8002cd0:	4620      	mov	r0, r4
 8002cd2:	f000 fd5b 	bl	800378c <memset>
 8002cd6:	4632      	mov	r2, r6
 8002cd8:	4639      	mov	r1, r7
 8002cda:	4628      	mov	r0, r5
 8002cdc:	f7fe fd1e 	bl	800171c <br_i31_reduce>
 8002ce0:	6829      	ldr	r1, [r5, #0]
 8002ce2:	311f      	adds	r1, #31
 8002ce4:	4620      	mov	r0, r4
 8002ce6:	0949      	lsrs	r1, r1, #5
 8002ce8:	f7fd fcd4 	bl	8000694 <br_i31_bit_length>
 8002cec:	6028      	str	r0, [r5, #0]
 8002cee:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8002cf2:	bf00      	nop

08002cf4 <make_rand>:
 8002cf4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8002cf8:	6803      	ldr	r3, [r0, #0]
 8002cfa:	f102 051f 	add.w	r5, r2, #31
 8002cfe:	f8d3 9008 	ldr.w	r9, [r3, #8]
 8002d02:	460f      	mov	r7, r1
 8002d04:	f025 031f 	bic.w	r3, r5, #31
 8002d08:	eba3 1355 	sub.w	r3, r3, r5, lsr #5
 8002d0c:	f847 3b04 	str.w	r3, [r7], #4
 8002d10:	096d      	lsrs	r5, r5, #5
 8002d12:	ea4f 0885 	mov.w	r8, r5, lsl #2
 8002d16:	4616      	mov	r6, r2
 8002d18:	460c      	mov	r4, r1
 8002d1a:	4642      	mov	r2, r8
 8002d1c:	4639      	mov	r1, r7
 8002d1e:	47c8      	blx	r9
 8002d20:	2d01      	cmp	r5, #1
 8002d22:	d90a      	bls.n	8002d3a <make_rand+0x46>
 8002d24:	f1a4 0c04 	sub.w	ip, r4, #4
 8002d28:	44c4      	add	ip, r8
 8002d2a:	4623      	mov	r3, r4
 8002d2c:	f853 0f04 	ldr.w	r0, [r3, #4]!
 8002d30:	f020 4000 	bic.w	r0, r0, #2147483648	@ 0x80000000
 8002d34:	459c      	cmp	ip, r3
 8002d36:	6018      	str	r0, [r3, #0]
 8002d38:	d1f8      	bne.n	8002d2c <make_rand+0x38>
 8002d3a:	6863      	ldr	r3, [r4, #4]
 8002d3c:	f043 0301 	orr.w	r3, r3, #1
 8002d40:	6063      	str	r3, [r4, #4]
 8002d42:	4638      	mov	r0, r7
 8002d44:	4629      	mov	r1, r5
 8002d46:	f7fd fca5 	bl	8000694 <br_i31_bit_length>
 8002d4a:	f016 061f 	ands.w	r6, r6, #31
 8002d4e:	6020      	str	r0, [r4, #0]
 8002d50:	f854 3025 	ldr.w	r3, [r4, r5, lsl #2]
 8002d54:	d105      	bne.n	8002d62 <make_rand+0x6e>
 8002d56:	f023 4300 	bic.w	r3, r3, #2147483648	@ 0x80000000
 8002d5a:	f844 3025 	str.w	r3, [r4, r5, lsl #2]
 8002d5e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8002d62:	f1c6 061f 	rsb	r6, r6, #31
 8002d66:	f06f 4200 	mvn.w	r2, #2147483648	@ 0x80000000
 8002d6a:	4132      	asrs	r2, r6
 8002d6c:	4013      	ands	r3, r2
 8002d6e:	f844 3025 	str.w	r3, [r4, r5, lsl #2]
 8002d72:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8002d76:	bf00      	nop

08002d78 <make_rand2>:
 8002d78:	f7ff bfbc 	b.w	8002cf4 <make_rand>

08002d7c <make_rand_coprime>:
 8002d7c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002d80:	460c      	mov	r4, r1
 8002d82:	b087      	sub	sp, #28
 8002d84:	461f      	mov	r7, r3
 8002d86:	4691      	mov	r9, r2
 8002d88:	4682      	mov	sl, r0
 8002d8a:	f7ff ffb3 	bl	8002cf4 <make_rand>
 8002d8e:	6863      	ldr	r3, [r4, #4]
 8002d90:	f043 0301 	orr.w	r3, r3, #1
 8002d94:	6063      	str	r3, [r4, #4]
 8002d96:	46a3      	mov	fp, r4
 8002d98:	6878      	ldr	r0, [r7, #4]
 8002d9a:	f7fe fc9f 	bl	80016dc <br_i31_ninv31>
 8002d9e:	f85b 5b04 	ldr.w	r5, [fp], #4
 8002da2:	2200      	movs	r2, #0
 8002da4:	1dee      	adds	r6, r5, #7
 8002da6:	4680      	mov	r8, r0
 8002da8:	9203      	str	r2, [sp, #12]
 8002daa:	4659      	mov	r1, fp
 8002dac:	08f2      	lsrs	r2, r6, #3
 8002dae:	a804      	add	r0, sp, #16
 8002db0:	f000 fd3a 	bl	8003828 <memcpy>
 8002db4:	e00f      	b.n	8002dd6 <make_rand_coprime+0x5a>
 8002db6:	464a      	mov	r2, r9
 8002db8:	4621      	mov	r1, r4
 8002dba:	4650      	mov	r0, sl
 8002dbc:	f7ff ff9a 	bl	8002cf4 <make_rand>
 8002dc0:	e9d4 5300 	ldrd	r5, r3, [r4]
 8002dc4:	f043 0301 	orr.w	r3, r3, #1
 8002dc8:	1dee      	adds	r6, r5, #7
 8002dca:	6063      	str	r3, [r4, #4]
 8002dcc:	08f2      	lsrs	r2, r6, #3
 8002dce:	4659      	mov	r1, fp
 8002dd0:	a804      	add	r0, sp, #16
 8002dd2:	f000 fd29 	bl	8003828 <memcpy>
 8002dd6:	9b10      	ldr	r3, [sp, #64]	@ 0x40
 8002dd8:	9300      	str	r3, [sp, #0]
 8002dda:	463a      	mov	r2, r7
 8002ddc:	4643      	mov	r3, r8
 8002dde:	4621      	mov	r1, r4
 8002de0:	4620      	mov	r0, r4
 8002de2:	f7fd fe27 	bl	8000a34 <br_i31_moddiv>
 8002de6:	2800      	cmp	r0, #0
 8002de8:	d0e5      	beq.n	8002db6 <make_rand_coprime+0x3a>
 8002dea:	08f2      	lsrs	r2, r6, #3
 8002dec:	a904      	add	r1, sp, #16
 8002dee:	4658      	mov	r0, fp
 8002df0:	f000 fd1a 	bl	8003828 <memcpy>
 8002df4:	6025      	str	r5, [r4, #0]
 8002df6:	b007      	add	sp, #28
 8002df8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08002dfc <blind_exponent>:
 8002dfc:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8002e00:	6804      	ldr	r4, [r0, #0]
 8002e02:	b085      	sub	sp, #20
 8002e04:	4617      	mov	r7, r2
 8002e06:	4698      	mov	r8, r3
 8002e08:	2208      	movs	r2, #8
 8002e0a:	233e      	movs	r3, #62	@ 0x3e
 8002e0c:	f8d4 9008 	ldr.w	r9, [r4, #8]
 8002e10:	9301      	str	r3, [sp, #4]
 8002e12:	460d      	mov	r5, r1
 8002e14:	eb0d 0102 	add.w	r1, sp, r2
 8002e18:	e9dd 640c 	ldrd	r6, r4, [sp, #48]	@ 0x30
 8002e1c:	47c8      	blx	r9
 8002e1e:	9b02      	ldr	r3, [sp, #8]
 8002e20:	f023 4300 	bic.w	r3, r3, #2147483648	@ 0x80000000
 8002e24:	f043 0301 	orr.w	r3, r3, #1
 8002e28:	2102      	movs	r1, #2
 8002e2a:	a802      	add	r0, sp, #8
 8002e2c:	9302      	str	r3, [sp, #8]
 8002e2e:	f7fd fc31 	bl	8000694 <br_i31_bit_length>
 8002e32:	9b03      	ldr	r3, [sp, #12]
 8002e34:	9001      	str	r0, [sp, #4]
 8002e36:	f023 4340 	bic.w	r3, r3, #3221225472	@ 0xc0000000
 8002e3a:	a802      	add	r0, sp, #8
 8002e3c:	2102      	movs	r1, #2
 8002e3e:	9303      	str	r3, [sp, #12]
 8002e40:	f7fd fc28 	bl	8000694 <br_i31_bit_length>
 8002e44:	46a1      	mov	r9, r4
 8002e46:	9001      	str	r0, [sp, #4]
 8002e48:	6830      	ldr	r0, [r6, #0]
 8002e4a:	f849 0b04 	str.w	r0, [r9], #4
 8002e4e:	f100 0c1f 	add.w	ip, r0, #31
 8002e52:	ea4f 1c5c 	mov.w	ip, ip, lsr #5
 8002e56:	ea4f 028c 	mov.w	r2, ip, lsl #2
 8002e5a:	2100      	movs	r1, #0
 8002e5c:	4648      	mov	r0, r9
 8002e5e:	f000 fc95 	bl	800378c <memset>
 8002e62:	4642      	mov	r2, r8
 8002e64:	4639      	mov	r1, r7
 8002e66:	4620      	mov	r0, r4
 8002e68:	f7fd fc84 	bl	8000774 <br_i31_decode>
 8002e6c:	6833      	ldr	r3, [r6, #0]
 8002e6e:	6023      	str	r3, [r4, #0]
 8002e70:	aa01      	add	r2, sp, #4
 8002e72:	4631      	mov	r1, r6
 8002e74:	4620      	mov	r0, r4
 8002e76:	f7fe fb0f 	bl	8001498 <br_i31_mulacc>
 8002e7a:	6821      	ldr	r1, [r4, #0]
 8002e7c:	311f      	adds	r1, #31
 8002e7e:	4648      	mov	r0, r9
 8002e80:	0949      	lsrs	r1, r1, #5
 8002e82:	f7fd fc07 	bl	8000694 <br_i31_bit_length>
 8002e86:	1dc6      	adds	r6, r0, #7
 8002e88:	08f6      	lsrs	r6, r6, #3
 8002e8a:	6020      	str	r0, [r4, #0]
 8002e8c:	4622      	mov	r2, r4
 8002e8e:	4628      	mov	r0, r5
 8002e90:	4631      	mov	r1, r6
 8002e92:	f7fd fd09 	bl	80008a8 <br_i31_encode>
 8002e96:	4630      	mov	r0, r6
 8002e98:	b005      	add	sp, #20
 8002e9a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002e9e:	bf00      	nop

08002ea0 <init_temp_rsa_key>:
 8002ea0:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002ea4:	4604      	mov	r4, r0
 8002ea6:	f504 5394 	add.w	r3, r4, #4736	@ 0x1280
 8002eaa:	3310      	adds	r3, #16
 8002eac:	f104 0248 	add.w	r2, r4, #72	@ 0x48
 8002eb0:	e9c4 320e 	strd	r3, r2, [r4, #56]	@ 0x38
 8002eb4:	684a      	ldr	r2, [r1, #4]
 8002eb6:	6062      	str	r2, [r4, #4]
 8002eb8:	f500 608f 	add.w	r0, r0, #1144	@ 0x478
 8002ebc:	f104 0360 	add.w	r3, r4, #96	@ 0x60
 8002ec0:	f504 5684 	add.w	r6, r4, #4224	@ 0x1080
 8002ec4:	6020      	str	r0, [r4, #0]
 8002ec6:	f204 6a79 	addw	sl, r4, #1657	@ 0x679
 8002eca:	f604 0982 	addw	r9, r4, #2178	@ 0x882
 8002ece:	360e      	adds	r6, #14
 8002ed0:	f604 288b 	addw	r8, r4, #2699	@ 0xa8b
 8002ed4:	f604 478c 	addw	r7, r4, #3212	@ 0xc8c
 8002ed8:	f604 6b8d 	addw	fp, r4, #3725	@ 0xe8d
 8002edc:	6423      	str	r3, [r4, #64]	@ 0x40
 8002ede:	3207      	adds	r2, #7
 8002ee0:	f504 731b 	add.w	r3, r4, #620	@ 0x26c
 8002ee4:	460d      	mov	r5, r1
 8002ee6:	6463      	str	r3, [r4, #68]	@ 0x44
 8002ee8:	6809      	ldr	r1, [r1, #0]
 8002eea:	f8c4 a008 	str.w	sl, [r4, #8]
 8002eee:	08d2      	lsrs	r2, r2, #3
 8002ef0:	f8c4 9010 	str.w	r9, [r4, #16]
 8002ef4:	6326      	str	r6, [r4, #48]	@ 0x30
 8002ef6:	f8c4 8018 	str.w	r8, [r4, #24]
 8002efa:	6227      	str	r7, [r4, #32]
 8002efc:	f8c4 b028 	str.w	fp, [r4, #40]	@ 0x28
 8002f00:	f000 fc92 	bl	8003828 <memcpy>
 8002f04:	e9d5 120c 	ldrd	r1, r2, [r5, #48]	@ 0x30
 8002f08:	4630      	mov	r0, r6
 8002f0a:	f000 fc8d 	bl	8003828 <memcpy>
 8002f0e:	6b6b      	ldr	r3, [r5, #52]	@ 0x34
 8002f10:	6363      	str	r3, [r4, #52]	@ 0x34
 8002f12:	e9d5 1202 	ldrd	r1, r2, [r5, #8]
 8002f16:	4650      	mov	r0, sl
 8002f18:	f000 fc86 	bl	8003828 <memcpy>
 8002f1c:	68eb      	ldr	r3, [r5, #12]
 8002f1e:	60e3      	str	r3, [r4, #12]
 8002f20:	e9d5 1204 	ldrd	r1, r2, [r5, #16]
 8002f24:	4648      	mov	r0, r9
 8002f26:	f000 fc7f 	bl	8003828 <memcpy>
 8002f2a:	696b      	ldr	r3, [r5, #20]
 8002f2c:	6163      	str	r3, [r4, #20]
 8002f2e:	e9d5 120a 	ldrd	r1, r2, [r5, #40]	@ 0x28
 8002f32:	4658      	mov	r0, fp
 8002f34:	f000 fc78 	bl	8003828 <memcpy>
 8002f38:	6aeb      	ldr	r3, [r5, #44]	@ 0x2c
 8002f3a:	69ea      	ldr	r2, [r5, #28]
 8002f3c:	69a9      	ldr	r1, [r5, #24]
 8002f3e:	62e3      	str	r3, [r4, #44]	@ 0x2c
 8002f40:	4640      	mov	r0, r8
 8002f42:	f000 fc71 	bl	8003828 <memcpy>
 8002f46:	69eb      	ldr	r3, [r5, #28]
 8002f48:	6a6a      	ldr	r2, [r5, #36]	@ 0x24
 8002f4a:	6a29      	ldr	r1, [r5, #32]
 8002f4c:	61e3      	str	r3, [r4, #28]
 8002f4e:	4638      	mov	r0, r7
 8002f50:	f000 fc6a 	bl	8003828 <memcpy>
 8002f54:	6a6b      	ldr	r3, [r5, #36]	@ 0x24
 8002f56:	6263      	str	r3, [r4, #36]	@ 0x24
 8002f58:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}

08002f5c <br_i31_init_key>:
 8002f5c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002f60:	4614      	mov	r4, r2
 8002f62:	684a      	ldr	r2, [r1, #4]
 8002f64:	b083      	sub	sp, #12
 8002f66:	3207      	adds	r2, #7
 8002f68:	4688      	mov	r8, r1
 8002f6a:	4681      	mov	r9, r0
 8002f6c:	6809      	ldr	r1, [r1, #0]
 8002f6e:	6820      	ldr	r0, [r4, #0]
 8002f70:	9e0c      	ldr	r6, [sp, #48]	@ 0x30
 8002f72:	08d2      	lsrs	r2, r2, #3
 8002f74:	461d      	mov	r5, r3
 8002f76:	f000 fc57 	bl	8003828 <memcpy>
 8002f7a:	6ba7      	ldr	r7, [r4, #56]	@ 0x38
 8002f7c:	f8d8 3004 	ldr.w	r3, [r8, #4]
 8002f80:	6063      	str	r3, [r4, #4]
 8002f82:	46bb      	mov	fp, r7
 8002f84:	f04f 0a3e 	mov.w	sl, #62	@ 0x3e
 8002f88:	f84b ab04 	str.w	sl, [fp], #4
 8002f8c:	f8d9 3000 	ldr.w	r3, [r9]
 8002f90:	2208      	movs	r2, #8
 8002f92:	4659      	mov	r1, fp
 8002f94:	4648      	mov	r0, r9
 8002f96:	689b      	ldr	r3, [r3, #8]
 8002f98:	4798      	blx	r3
 8002f9a:	687b      	ldr	r3, [r7, #4]
 8002f9c:	f023 4300 	bic.w	r3, r3, #2147483648	@ 0x80000000
 8002fa0:	f043 0301 	orr.w	r3, r3, #1
 8002fa4:	607b      	str	r3, [r7, #4]
 8002fa6:	4658      	mov	r0, fp
 8002fa8:	2102      	movs	r1, #2
 8002faa:	f7fd fb73 	bl	8000694 <br_i31_bit_length>
 8002fae:	68bb      	ldr	r3, [r7, #8]
 8002fb0:	6038      	str	r0, [r7, #0]
 8002fb2:	f023 4340 	bic.w	r3, r3, #3221225472	@ 0xc0000000
 8002fb6:	60bb      	str	r3, [r7, #8]
 8002fb8:	6ba7      	ldr	r7, [r4, #56]	@ 0x38
 8002fba:	687b      	ldr	r3, [r7, #4]
 8002fbc:	4638      	mov	r0, r7
 8002fbe:	f043 0301 	orr.w	r3, r3, #1
 8002fc2:	f840 3f04 	str.w	r3, [r0, #4]!
 8002fc6:	2102      	movs	r1, #2
 8002fc8:	f7fd fb64 	bl	8000694 <br_i31_bit_length>
 8002fcc:	6038      	str	r0, [r7, #0]
 8002fce:	4648      	mov	r0, r9
 8002fd0:	eb05 0986 	add.w	r9, r5, r6, lsl #2
 8002fd4:	f8cd 9000 	str.w	r9, [sp]
 8002fd8:	e9d4 310e 	ldrd	r3, r1, [r4, #56]	@ 0x38
 8002fdc:	4652      	mov	r2, sl
 8002fde:	f7ff fecd 	bl	8002d7c <make_rand_coprime>
 8002fe2:	f8d4 a03c 	ldr.w	sl, [r4, #60]	@ 0x3c
 8002fe6:	f8da 3004 	ldr.w	r3, [sl, #4]
 8002fea:	4650      	mov	r0, sl
 8002fec:	f043 0301 	orr.w	r3, r3, #1
 8002ff0:	f840 3f04 	str.w	r3, [r0, #4]!
 8002ff4:	2102      	movs	r1, #2
 8002ff6:	f7fd fb4d 	bl	8000694 <br_i31_bit_length>
 8002ffa:	e9d8 1202 	ldrd	r1, r2, [r8, #8]
 8002ffe:	f8ca 0000 	str.w	r0, [sl]
 8003002:	4628      	mov	r0, r5
 8003004:	f7fd fbb6 	bl	8000774 <br_i31_decode>
 8003008:	686b      	ldr	r3, [r5, #4]
 800300a:	682a      	ldr	r2, [r5, #0]
 800300c:	6c20      	ldr	r0, [r4, #64]	@ 0x40
 800300e:	f083 0301 	eor.w	r3, r3, #1
 8003012:	606b      	str	r3, [r5, #4]
 8003014:	f840 2b04 	str.w	r2, [r0], #4
 8003018:	321f      	adds	r2, #31
 800301a:	0952      	lsrs	r2, r2, #5
 800301c:	2100      	movs	r1, #0
 800301e:	0092      	lsls	r2, r2, #2
 8003020:	f000 fbb4 	bl	800378c <memset>
 8003024:	6ba2      	ldr	r2, [r4, #56]	@ 0x38
 8003026:	6c20      	ldr	r0, [r4, #64]	@ 0x40
 8003028:	4629      	mov	r1, r5
 800302a:	f7fe fa35 	bl	8001498 <br_i31_mulacc>
 800302e:	e9d5 2300 	ldrd	r2, r3, [r5]
 8003032:	f083 0301 	eor.w	r3, r3, #1
 8003036:	606b      	str	r3, [r5, #4]
 8003038:	f845 2026 	str.w	r2, [r5, r6, lsl #2]
 800303c:	321f      	adds	r2, #31
 800303e:	f109 0a04 	add.w	sl, r9, #4
 8003042:	0952      	lsrs	r2, r2, #5
 8003044:	2100      	movs	r1, #0
 8003046:	0092      	lsls	r2, r2, #2
 8003048:	4650      	mov	r0, sl
 800304a:	f000 fb9f 	bl	800378c <memset>
 800304e:	6ba2      	ldr	r2, [r4, #56]	@ 0x38
 8003050:	4629      	mov	r1, r5
 8003052:	4648      	mov	r0, r9
 8003054:	f7fe fa20 	bl	8001498 <br_i31_mulacc>
 8003058:	f855 1026 	ldr.w	r1, [r5, r6, lsl #2]
 800305c:	311f      	adds	r1, #31
 800305e:	0949      	lsrs	r1, r1, #5
 8003060:	4650      	mov	r0, sl
 8003062:	f7fd fb17 	bl	8000694 <br_i31_bit_length>
 8003066:	f845 0026 	str.w	r0, [r5, r6, lsl #2]
 800306a:	3007      	adds	r0, #7
 800306c:	08c1      	lsrs	r1, r0, #3
 800306e:	464a      	mov	r2, r9
 8003070:	68a0      	ldr	r0, [r4, #8]
 8003072:	f7fd fc19 	bl	80008a8 <br_i31_encode>
 8003076:	f855 3026 	ldr.w	r3, [r5, r6, lsl #2]
 800307a:	3307      	adds	r3, #7
 800307c:	08db      	lsrs	r3, r3, #3
 800307e:	e9d8 1204 	ldrd	r1, r2, [r8, #16]
 8003082:	60e3      	str	r3, [r4, #12]
 8003084:	4628      	mov	r0, r5
 8003086:	f7fd fb75 	bl	8000774 <br_i31_decode>
 800308a:	686b      	ldr	r3, [r5, #4]
 800308c:	682a      	ldr	r2, [r5, #0]
 800308e:	6c60      	ldr	r0, [r4, #68]	@ 0x44
 8003090:	f083 0301 	eor.w	r3, r3, #1
 8003094:	606b      	str	r3, [r5, #4]
 8003096:	f840 2b04 	str.w	r2, [r0], #4
 800309a:	321f      	adds	r2, #31
 800309c:	0952      	lsrs	r2, r2, #5
 800309e:	2100      	movs	r1, #0
 80030a0:	0092      	lsls	r2, r2, #2
 80030a2:	f000 fb73 	bl	800378c <memset>
 80030a6:	6be2      	ldr	r2, [r4, #60]	@ 0x3c
 80030a8:	6c60      	ldr	r0, [r4, #68]	@ 0x44
 80030aa:	4629      	mov	r1, r5
 80030ac:	f7fe f9f4 	bl	8001498 <br_i31_mulacc>
 80030b0:	e9d5 2300 	ldrd	r2, r3, [r5]
 80030b4:	f083 0301 	eor.w	r3, r3, #1
 80030b8:	606b      	str	r3, [r5, #4]
 80030ba:	f845 2026 	str.w	r2, [r5, r6, lsl #2]
 80030be:	321f      	adds	r2, #31
 80030c0:	0952      	lsrs	r2, r2, #5
 80030c2:	2100      	movs	r1, #0
 80030c4:	0092      	lsls	r2, r2, #2
 80030c6:	4650      	mov	r0, sl
 80030c8:	f000 fb60 	bl	800378c <memset>
 80030cc:	6be2      	ldr	r2, [r4, #60]	@ 0x3c
 80030ce:	4629      	mov	r1, r5
 80030d0:	4648      	mov	r0, r9
 80030d2:	f7fe f9e1 	bl	8001498 <br_i31_mulacc>
 80030d6:	f855 1026 	ldr.w	r1, [r5, r6, lsl #2]
 80030da:	311f      	adds	r1, #31
 80030dc:	4650      	mov	r0, sl
 80030de:	0949      	lsrs	r1, r1, #5
 80030e0:	f7fd fad8 	bl	8000694 <br_i31_bit_length>
 80030e4:	f845 0026 	str.w	r0, [r5, r6, lsl #2]
 80030e8:	3007      	adds	r0, #7
 80030ea:	08c1      	lsrs	r1, r0, #3
 80030ec:	464a      	mov	r2, r9
 80030ee:	6920      	ldr	r0, [r4, #16]
 80030f0:	f7fd fbda 	bl	80008a8 <br_i31_encode>
 80030f4:	f855 3026 	ldr.w	r3, [r5, r6, lsl #2]
 80030f8:	6862      	ldr	r2, [r4, #4]
 80030fa:	6821      	ldr	r1, [r4, #0]
 80030fc:	3307      	adds	r3, #7
 80030fe:	08db      	lsrs	r3, r3, #3
 8003100:	00b7      	lsls	r7, r6, #2
 8003102:	3207      	adds	r2, #7
 8003104:	444f      	add	r7, r9
 8003106:	6163      	str	r3, [r4, #20]
 8003108:	4628      	mov	r0, r5
 800310a:	08d2      	lsrs	r2, r2, #3
 800310c:	eb07 0ac6 	add.w	sl, r7, r6, lsl #3
 8003110:	f7fd fb30 	bl	8000774 <br_i31_decode>
 8003114:	e9d4 1202 	ldrd	r1, r2, [r4, #8]
 8003118:	4628      	mov	r0, r5
 800311a:	f7fd fb2b 	bl	8000774 <br_i31_decode>
 800311e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8003122:	4650      	mov	r0, sl
 8003124:	f7fd fb26 	bl	8000774 <br_i31_decode>
 8003128:	462a      	mov	r2, r5
 800312a:	4651      	mov	r1, sl
 800312c:	4638      	mov	r0, r7
 800312e:	f7fe faf5 	bl	800171c <br_i31_reduce>
 8003132:	682a      	ldr	r2, [r5, #0]
 8003134:	f847 2036 	str.w	r2, [r7, r6, lsl #3]
 8003138:	321f      	adds	r2, #31
 800313a:	f10a 0b04 	add.w	fp, sl, #4
 800313e:	0952      	lsrs	r2, r2, #5
 8003140:	2100      	movs	r1, #0
 8003142:	0092      	lsls	r2, r2, #2
 8003144:	4658      	mov	r0, fp
 8003146:	f000 fb21 	bl	800378c <memset>
 800314a:	2301      	movs	r3, #1
 800314c:	f8ca 3004 	str.w	r3, [sl, #4]
 8003150:	6868      	ldr	r0, [r5, #4]
 8003152:	f7fe fac3 	bl	80016dc <br_i31_ninv31>
 8003156:	00f2      	lsls	r2, r6, #3
 8003158:	4452      	add	r2, sl
 800315a:	4603      	mov	r3, r0
 800315c:	9200      	str	r2, [sp, #0]
 800315e:	4639      	mov	r1, r7
 8003160:	462a      	mov	r2, r5
 8003162:	4650      	mov	r0, sl
 8003164:	f7fd fc66 	bl	8000a34 <br_i31_moddiv>
 8003168:	f857 1036 	ldr.w	r1, [r7, r6, lsl #3]
 800316c:	311f      	adds	r1, #31
 800316e:	0949      	lsrs	r1, r1, #5
 8003170:	4658      	mov	r0, fp
 8003172:	f7fd fa8f 	bl	8000694 <br_i31_bit_length>
 8003176:	f847 0036 	str.w	r0, [r7, r6, lsl #3]
 800317a:	3007      	adds	r0, #7
 800317c:	08c1      	lsrs	r1, r0, #3
 800317e:	4652      	mov	r2, sl
 8003180:	6aa0      	ldr	r0, [r4, #40]	@ 0x28
 8003182:	f7fd fb91 	bl	80008a8 <br_i31_encode>
 8003186:	f857 3036 	ldr.w	r3, [r7, r6, lsl #3]
 800318a:	3307      	adds	r3, #7
 800318c:	08db      	lsrs	r3, r3, #3
 800318e:	e9d8 1206 	ldrd	r1, r2, [r8, #24]
 8003192:	62e3      	str	r3, [r4, #44]	@ 0x2c
 8003194:	4638      	mov	r0, r7
 8003196:	f7fd faed 	bl	8000774 <br_i31_decode>
 800319a:	f859 2026 	ldr.w	r2, [r9, r6, lsl #2]
 800319e:	f847 2036 	str.w	r2, [r7, r6, lsl #3]
 80031a2:	321f      	adds	r2, #31
 80031a4:	0952      	lsrs	r2, r2, #5
 80031a6:	2100      	movs	r1, #0
 80031a8:	0092      	lsls	r2, r2, #2
 80031aa:	4658      	mov	r0, fp
 80031ac:	f000 faee 	bl	800378c <memset>
 80031b0:	2301      	movs	r3, #1
 80031b2:	f8ca 3004 	str.w	r3, [sl, #4]
 80031b6:	6c22      	ldr	r2, [r4, #64]	@ 0x40
 80031b8:	4651      	mov	r1, sl
 80031ba:	4638      	mov	r0, r7
 80031bc:	f7fe f96c 	bl	8001498 <br_i31_mulacc>
 80031c0:	f859 1026 	ldr.w	r1, [r9, r6, lsl #2]
 80031c4:	1d3d      	adds	r5, r7, #4
 80031c6:	311f      	adds	r1, #31
 80031c8:	0949      	lsrs	r1, r1, #5
 80031ca:	4628      	mov	r0, r5
 80031cc:	f7fd fa62 	bl	8000694 <br_i31_bit_length>
 80031d0:	f849 0026 	str.w	r0, [r9, r6, lsl #2]
 80031d4:	3007      	adds	r0, #7
 80031d6:	08c1      	lsrs	r1, r0, #3
 80031d8:	463a      	mov	r2, r7
 80031da:	69a0      	ldr	r0, [r4, #24]
 80031dc:	f7fd fb64 	bl	80008a8 <br_i31_encode>
 80031e0:	f859 3026 	ldr.w	r3, [r9, r6, lsl #2]
 80031e4:	3307      	adds	r3, #7
 80031e6:	08db      	lsrs	r3, r3, #3
 80031e8:	e9d8 1208 	ldrd	r1, r2, [r8, #32]
 80031ec:	61e3      	str	r3, [r4, #28]
 80031ee:	4638      	mov	r0, r7
 80031f0:	f7fd fac0 	bl	8000774 <br_i31_decode>
 80031f4:	f859 2026 	ldr.w	r2, [r9, r6, lsl #2]
 80031f8:	f847 2036 	str.w	r2, [r7, r6, lsl #3]
 80031fc:	321f      	adds	r2, #31
 80031fe:	0952      	lsrs	r2, r2, #5
 8003200:	4658      	mov	r0, fp
 8003202:	0092      	lsls	r2, r2, #2
 8003204:	2100      	movs	r1, #0
 8003206:	f000 fac1 	bl	800378c <memset>
 800320a:	2301      	movs	r3, #1
 800320c:	f8ca 3004 	str.w	r3, [sl, #4]
 8003210:	6c62      	ldr	r2, [r4, #68]	@ 0x44
 8003212:	4651      	mov	r1, sl
 8003214:	4638      	mov	r0, r7
 8003216:	f7fe f93f 	bl	8001498 <br_i31_mulacc>
 800321a:	f859 1026 	ldr.w	r1, [r9, r6, lsl #2]
 800321e:	311f      	adds	r1, #31
 8003220:	4628      	mov	r0, r5
 8003222:	0949      	lsrs	r1, r1, #5
 8003224:	f7fd fa36 	bl	8000694 <br_i31_bit_length>
 8003228:	f849 0026 	str.w	r0, [r9, r6, lsl #2]
 800322c:	3007      	adds	r0, #7
 800322e:	463a      	mov	r2, r7
 8003230:	08c1      	lsrs	r1, r0, #3
 8003232:	6a20      	ldr	r0, [r4, #32]
 8003234:	f7fd fb38 	bl	80008a8 <br_i31_encode>
 8003238:	f859 3026 	ldr.w	r3, [r9, r6, lsl #2]
 800323c:	f8d8 2034 	ldr.w	r2, [r8, #52]	@ 0x34
 8003240:	f8d8 1030 	ldr.w	r1, [r8, #48]	@ 0x30
 8003244:	6b20      	ldr	r0, [r4, #48]	@ 0x30
 8003246:	3307      	adds	r3, #7
 8003248:	08db      	lsrs	r3, r3, #3
 800324a:	6263      	str	r3, [r4, #36]	@ 0x24
 800324c:	f000 faec 	bl	8003828 <memcpy>
 8003250:	f8d8 3034 	ldr.w	r3, [r8, #52]	@ 0x34
 8003254:	6363      	str	r3, [r4, #52]	@ 0x34
 8003256:	b003      	add	sp, #12
 8003258:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

0800325c <br_i31_update_key>:
 800325c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003260:	461d      	mov	r5, r3
 8003262:	eb02 09c5 	add.w	r9, r2, r5, lsl #3
 8003266:	4613      	mov	r3, r2
 8003268:	684a      	ldr	r2, [r1, #4]
 800326a:	b08d      	sub	sp, #52	@ 0x34
 800326c:	eb03 1705 	add.w	r7, r3, r5, lsl #4
 8003270:	eb07 06c5 	add.w	r6, r7, r5, lsl #3
 8003274:	3207      	adds	r2, #7
 8003276:	460c      	mov	r4, r1
 8003278:	9003      	str	r0, [sp, #12]
 800327a:	6809      	ldr	r1, [r1, #0]
 800327c:	9304      	str	r3, [sp, #16]
 800327e:	4630      	mov	r0, r6
 8003280:	08d2      	lsrs	r2, r2, #3
 8003282:	f7fd fa77 	bl	8000774 <br_i31_decode>
 8003286:	f857 2035 	ldr.w	r2, [r7, r5, lsl #3]
 800328a:	f849 2035 	str.w	r2, [r9, r5, lsl #3]
 800328e:	321f      	adds	r2, #31
 8003290:	0952      	lsrs	r2, r2, #5
 8003292:	1d38      	adds	r0, r7, #4
 8003294:	2100      	movs	r1, #0
 8003296:	0092      	lsls	r2, r2, #2
 8003298:	4683      	mov	fp, r0
 800329a:	f000 fa77 	bl	800378c <memset>
 800329e:	6ba1      	ldr	r1, [r4, #56]	@ 0x38
 80032a0:	f8cd b018 	str.w	fp, [sp, #24]
 80032a4:	f851 2b04 	ldr.w	r2, [r1], #4
 80032a8:	3207      	adds	r2, #7
 80032aa:	eb07 1805 	add.w	r8, r7, r5, lsl #4
 80032ae:	4658      	mov	r0, fp
 80032b0:	08d2      	lsrs	r2, r2, #3
 80032b2:	f000 fab9 	bl	8003828 <memcpy>
 80032b6:	9804      	ldr	r0, [sp, #16]
 80032b8:	4643      	mov	r3, r8
 80032ba:	4632      	mov	r2, r6
 80032bc:	4639      	mov	r1, r7
 80032be:	f7ff fcb9 	bl	8002c34 <inverse>
 80032c2:	f8d4 a038 	ldr.w	sl, [r4, #56]	@ 0x38
 80032c6:	9903      	ldr	r1, [sp, #12]
 80032c8:	46d3      	mov	fp, sl
 80032ca:	680b      	ldr	r3, [r1, #0]
 80032cc:	203e      	movs	r0, #62	@ 0x3e
 80032ce:	689b      	ldr	r3, [r3, #8]
 80032d0:	f84b 0b04 	str.w	r0, [fp], #4
 80032d4:	2208      	movs	r2, #8
 80032d6:	4608      	mov	r0, r1
 80032d8:	4659      	mov	r1, fp
 80032da:	4798      	blx	r3
 80032dc:	f8da 3004 	ldr.w	r3, [sl, #4]
 80032e0:	f023 4300 	bic.w	r3, r3, #2147483648	@ 0x80000000
 80032e4:	f043 0301 	orr.w	r3, r3, #1
 80032e8:	f8ca 3004 	str.w	r3, [sl, #4]
 80032ec:	4658      	mov	r0, fp
 80032ee:	2102      	movs	r1, #2
 80032f0:	f7fd f9d0 	bl	8000694 <br_i31_bit_length>
 80032f4:	f8da 3008 	ldr.w	r3, [sl, #8]
 80032f8:	f8ca 0000 	str.w	r0, [sl]
 80032fc:	f023 4340 	bic.w	r3, r3, #3221225472	@ 0xc0000000
 8003300:	f8ca 3008 	str.w	r3, [sl, #8]
 8003304:	f8d4 a038 	ldr.w	sl, [r4, #56]	@ 0x38
 8003308:	f8da 3004 	ldr.w	r3, [sl, #4]
 800330c:	4650      	mov	r0, sl
 800330e:	f043 0301 	orr.w	r3, r3, #1
 8003312:	f840 3f04 	str.w	r3, [r0, #4]!
 8003316:	2102      	movs	r1, #2
 8003318:	f7fd f9bc 	bl	8000694 <br_i31_bit_length>
 800331c:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
 800331e:	f8ca 0000 	str.w	r0, [sl]
 8003322:	469b      	mov	fp, r3
 8003324:	aa0a      	add	r2, sp, #40	@ 0x28
 8003326:	f85b ab04 	ldr.w	sl, [fp], #4
 800332a:	9307      	str	r3, [sp, #28]
 800332c:	4610      	mov	r0, r2
 800332e:	f10a 021f 	add.w	r2, sl, #31
 8003332:	0952      	lsrs	r2, r2, #5
 8003334:	2100      	movs	r1, #0
 8003336:	0092      	lsls	r2, r2, #2
 8003338:	f000 fa28 	bl	800378c <memset>
 800333c:	f10a 0a07 	add.w	sl, sl, #7
 8003340:	f10d 0c28 	add.w	ip, sp, #40	@ 0x28
 8003344:	4660      	mov	r0, ip
 8003346:	ea4f 02da 	mov.w	r2, sl, lsr #3
 800334a:	4659      	mov	r1, fp
 800334c:	9205      	str	r2, [sp, #20]
 800334e:	f000 fa6b 	bl	8003828 <memcpy>
 8003352:	9b07      	ldr	r3, [sp, #28]
 8003354:	f8cd 8000 	str.w	r8, [sp]
 8003358:	9803      	ldr	r0, [sp, #12]
 800335a:	223e      	movs	r2, #62	@ 0x3e
 800335c:	4619      	mov	r1, r3
 800335e:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
 8003360:	f7ff fd0c 	bl	8002d7c <make_rand_coprime>
 8003364:	f8d4 a03c 	ldr.w	sl, [r4, #60]	@ 0x3c
 8003368:	f8da 3004 	ldr.w	r3, [sl, #4]
 800336c:	4650      	mov	r0, sl
 800336e:	f043 0301 	orr.w	r3, r3, #1
 8003372:	f840 3f04 	str.w	r3, [r0, #4]!
 8003376:	2102      	movs	r1, #2
 8003378:	f7fd f98c 	bl	8000694 <br_i31_bit_length>
 800337c:	e9d4 1202 	ldrd	r1, r2, [r4, #8]
 8003380:	f8ca 0000 	str.w	r0, [sl]
 8003384:	4638      	mov	r0, r7
 8003386:	f7fd f9f5 	bl	8000774 <br_i31_decode>
 800338a:	f8dd b010 	ldr.w	fp, [sp, #16]
 800338e:	eb08 03c5 	add.w	r3, r8, r5, lsl #3
 8003392:	9300      	str	r3, [sp, #0]
 8003394:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
 8003396:	465a      	mov	r2, fp
 8003398:	4631      	mov	r1, r6
 800339a:	4640      	mov	r0, r8
 800339c:	f7ff fc22 	bl	8002be4 <create_mask>
 80033a0:	eb08 03c5 	add.w	r3, r8, r5, lsl #3
 80033a4:	9300      	str	r3, [sp, #0]
 80033a6:	4632      	mov	r2, r6
 80033a8:	4643      	mov	r3, r8
 80033aa:	4639      	mov	r1, r7
 80033ac:	4640      	mov	r0, r8
 80033ae:	f7ff fc6d 	bl	8002c8c <reblind>
 80033b2:	f856 1035 	ldr.w	r1, [r6, r5, lsl #3]
 80033b6:	68a0      	ldr	r0, [r4, #8]
 80033b8:	3107      	adds	r1, #7
 80033ba:	4642      	mov	r2, r8
 80033bc:	08c9      	lsrs	r1, r1, #3
 80033be:	f7fd fa73 	bl	80008a8 <br_i31_encode>
 80033c2:	f856 3035 	ldr.w	r3, [r6, r5, lsl #3]
 80033c6:	f857 2035 	ldr.w	r2, [r7, r5, lsl #3]
 80033ca:	3307      	adds	r3, #7
 80033cc:	08db      	lsrs	r3, r3, #3
 80033ce:	60e3      	str	r3, [r4, #12]
 80033d0:	f846 2035 	str.w	r2, [r6, r5, lsl #3]
 80033d4:	321f      	adds	r2, #31
 80033d6:	f108 0a04 	add.w	sl, r8, #4
 80033da:	0952      	lsrs	r2, r2, #5
 80033dc:	2100      	movs	r1, #0
 80033de:	0092      	lsls	r2, r2, #2
 80033e0:	4650      	mov	r0, sl
 80033e2:	f000 f9d3 	bl	800378c <memset>
 80033e6:	6c21      	ldr	r1, [r4, #64]	@ 0x40
 80033e8:	f851 2b04 	ldr.w	r2, [r1], #4
 80033ec:	3207      	adds	r2, #7
 80033ee:	4650      	mov	r0, sl
 80033f0:	08d2      	lsrs	r2, r2, #3
 80033f2:	f000 fa19 	bl	8003828 <memcpy>
 80033f6:	6c23      	ldr	r3, [r4, #64]	@ 0x40
 80033f8:	681b      	ldr	r3, [r3, #0]
 80033fa:	f846 3035 	str.w	r3, [r6, r5, lsl #3]
 80033fe:	eb08 03c5 	add.w	r3, r8, r5, lsl #3
 8003402:	9300      	str	r3, [sp, #0]
 8003404:	6ba3      	ldr	r3, [r4, #56]	@ 0x38
 8003406:	465a      	mov	r2, fp
 8003408:	4631      	mov	r1, r6
 800340a:	4638      	mov	r0, r7
 800340c:	f7ff fbea 	bl	8002be4 <create_mask>
 8003410:	eb08 03c5 	add.w	r3, r8, r5, lsl #3
 8003414:	9300      	str	r3, [sp, #0]
 8003416:	6c21      	ldr	r1, [r4, #64]	@ 0x40
 8003418:	463b      	mov	r3, r7
 800341a:	4632      	mov	r2, r6
 800341c:	4638      	mov	r0, r7
 800341e:	f7ff fc35 	bl	8002c8c <reblind>
 8003422:	f859 2035 	ldr.w	r2, [r9, r5, lsl #3]
 8003426:	6c20      	ldr	r0, [r4, #64]	@ 0x40
 8003428:	f840 2b04 	str.w	r2, [r0], #4
 800342c:	321f      	adds	r2, #31
 800342e:	0952      	lsrs	r2, r2, #5
 8003430:	2100      	movs	r1, #0
 8003432:	0092      	lsls	r2, r2, #2
 8003434:	f000 f9aa 	bl	800378c <memset>
 8003438:	f859 2035 	ldr.w	r2, [r9, r5, lsl #3]
 800343c:	f8dd b018 	ldr.w	fp, [sp, #24]
 8003440:	6c20      	ldr	r0, [r4, #64]	@ 0x40
 8003442:	3207      	adds	r2, #7
 8003444:	4659      	mov	r1, fp
 8003446:	08d2      	lsrs	r2, r2, #3
 8003448:	3004      	adds	r0, #4
 800344a:	f000 f9ed 	bl	8003828 <memcpy>
 800344e:	6c23      	ldr	r3, [r4, #64]	@ 0x40
 8003450:	f859 1035 	ldr.w	r1, [r9, r5, lsl #3]
 8003454:	6019      	str	r1, [r3, #0]
 8003456:	2201      	movs	r2, #1
 8003458:	4641      	mov	r1, r8
 800345a:	4638      	mov	r0, r7
 800345c:	f7fe f9c0 	bl	80017e0 <br_i31_sub>
 8003460:	f857 2035 	ldr.w	r2, [r7, r5, lsl #3]
 8003464:	f846 2035 	str.w	r2, [r6, r5, lsl #3]
 8003468:	321f      	adds	r2, #31
 800346a:	0952      	lsrs	r2, r2, #5
 800346c:	2100      	movs	r1, #0
 800346e:	0092      	lsls	r2, r2, #2
 8003470:	4650      	mov	r0, sl
 8003472:	f000 f98b 	bl	800378c <memset>
 8003476:	e9d4 1206 	ldrd	r1, r2, [r4, #24]
 800347a:	4640      	mov	r0, r8
 800347c:	f7fd f97a 	bl	8000774 <br_i31_decode>
 8003480:	f859 3035 	ldr.w	r3, [r9, r5, lsl #3]
 8003484:	f846 3035 	str.w	r3, [r6, r5, lsl #3]
 8003488:	2201      	movs	r2, #1
 800348a:	4639      	mov	r1, r7
 800348c:	4640      	mov	r0, r8
 800348e:	f7fd f8df 	bl	8000650 <br_i31_add>
 8003492:	f856 1035 	ldr.w	r1, [r6, r5, lsl #3]
 8003496:	311f      	adds	r1, #31
 8003498:	0949      	lsrs	r1, r1, #5
 800349a:	4650      	mov	r0, sl
 800349c:	f7fd f8fa 	bl	8000694 <br_i31_bit_length>
 80034a0:	f846 0035 	str.w	r0, [r6, r5, lsl #3]
 80034a4:	3007      	adds	r0, #7
 80034a6:	08c1      	lsrs	r1, r0, #3
 80034a8:	4642      	mov	r2, r8
 80034aa:	69a0      	ldr	r0, [r4, #24]
 80034ac:	f7fd f9fc 	bl	80008a8 <br_i31_encode>
 80034b0:	f856 3035 	ldr.w	r3, [r6, r5, lsl #3]
 80034b4:	f857 2035 	ldr.w	r2, [r7, r5, lsl #3]
 80034b8:	3307      	adds	r3, #7
 80034ba:	08db      	lsrs	r3, r3, #3
 80034bc:	61e3      	str	r3, [r4, #28]
 80034be:	f849 2035 	str.w	r2, [r9, r5, lsl #3]
 80034c2:	321f      	adds	r2, #31
 80034c4:	0952      	lsrs	r2, r2, #5
 80034c6:	2100      	movs	r1, #0
 80034c8:	0092      	lsls	r2, r2, #2
 80034ca:	4658      	mov	r0, fp
 80034cc:	f000 f95e 	bl	800378c <memset>
 80034d0:	9a05      	ldr	r2, [sp, #20]
 80034d2:	a90a      	add	r1, sp, #40	@ 0x28
 80034d4:	4658      	mov	r0, fp
 80034d6:	f000 f9a7 	bl	8003828 <memcpy>
 80034da:	4643      	mov	r3, r8
 80034dc:	4632      	mov	r2, r6
 80034de:	4639      	mov	r1, r7
 80034e0:	4648      	mov	r0, r9
 80034e2:	f7ff fba7 	bl	8002c34 <inverse>
 80034e6:	f857 2035 	ldr.w	r2, [r7, r5, lsl #3]
 80034ea:	f846 2035 	str.w	r2, [r6, r5, lsl #3]
 80034ee:	321f      	adds	r2, #31
 80034f0:	0952      	lsrs	r2, r2, #5
 80034f2:	2100      	movs	r1, #0
 80034f4:	0092      	lsls	r2, r2, #2
 80034f6:	4650      	mov	r0, sl
 80034f8:	f000 f948 	bl	800378c <memset>
 80034fc:	6c61      	ldr	r1, [r4, #68]	@ 0x44
 80034fe:	f851 2b04 	ldr.w	r2, [r1], #4
 8003502:	3207      	adds	r2, #7
 8003504:	4650      	mov	r0, sl
 8003506:	08d2      	lsrs	r2, r2, #3
 8003508:	f000 f98e 	bl	8003828 <memcpy>
 800350c:	6c63      	ldr	r3, [r4, #68]	@ 0x44
 800350e:	681b      	ldr	r3, [r3, #0]
 8003510:	f846 3035 	str.w	r3, [r6, r5, lsl #3]
 8003514:	eb08 03c5 	add.w	r3, r8, r5, lsl #3
 8003518:	9300      	str	r3, [sp, #0]
 800351a:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
 800351c:	464a      	mov	r2, r9
 800351e:	4631      	mov	r1, r6
 8003520:	4638      	mov	r0, r7
 8003522:	f7ff fb5f 	bl	8002be4 <create_mask>
 8003526:	eb08 03c5 	add.w	r3, r8, r5, lsl #3
 800352a:	9300      	str	r3, [sp, #0]
 800352c:	6c61      	ldr	r1, [r4, #68]	@ 0x44
 800352e:	463b      	mov	r3, r7
 8003530:	4632      	mov	r2, r6
 8003532:	4638      	mov	r0, r7
 8003534:	f7ff fbaa 	bl	8002c8c <reblind>
 8003538:	f859 2035 	ldr.w	r2, [r9, r5, lsl #3]
 800353c:	6c60      	ldr	r0, [r4, #68]	@ 0x44
 800353e:	f840 2b04 	str.w	r2, [r0], #4
 8003542:	321f      	adds	r2, #31
 8003544:	0952      	lsrs	r2, r2, #5
 8003546:	2100      	movs	r1, #0
 8003548:	0092      	lsls	r2, r2, #2
 800354a:	f000 f91f 	bl	800378c <memset>
 800354e:	f859 2035 	ldr.w	r2, [r9, r5, lsl #3]
 8003552:	6c60      	ldr	r0, [r4, #68]	@ 0x44
 8003554:	3207      	adds	r2, #7
 8003556:	4659      	mov	r1, fp
 8003558:	08d2      	lsrs	r2, r2, #3
 800355a:	3004      	adds	r0, #4
 800355c:	f000 f964 	bl	8003828 <memcpy>
 8003560:	6c63      	ldr	r3, [r4, #68]	@ 0x44
 8003562:	f859 1035 	ldr.w	r1, [r9, r5, lsl #3]
 8003566:	6019      	str	r1, [r3, #0]
 8003568:	2201      	movs	r2, #1
 800356a:	4641      	mov	r1, r8
 800356c:	4638      	mov	r0, r7
 800356e:	f7fe f937 	bl	80017e0 <br_i31_sub>
 8003572:	f857 2035 	ldr.w	r2, [r7, r5, lsl #3]
 8003576:	f846 2035 	str.w	r2, [r6, r5, lsl #3]
 800357a:	321f      	adds	r2, #31
 800357c:	0952      	lsrs	r2, r2, #5
 800357e:	2100      	movs	r1, #0
 8003580:	0092      	lsls	r2, r2, #2
 8003582:	4650      	mov	r0, sl
 8003584:	f000 f902 	bl	800378c <memset>
 8003588:	e9d4 1208 	ldrd	r1, r2, [r4, #32]
 800358c:	4640      	mov	r0, r8
 800358e:	f7fd f8f1 	bl	8000774 <br_i31_decode>
 8003592:	f859 3035 	ldr.w	r3, [r9, r5, lsl #3]
 8003596:	f846 3035 	str.w	r3, [r6, r5, lsl #3]
 800359a:	2201      	movs	r2, #1
 800359c:	4639      	mov	r1, r7
 800359e:	4640      	mov	r0, r8
 80035a0:	f7fd f856 	bl	8000650 <br_i31_add>
 80035a4:	f856 1035 	ldr.w	r1, [r6, r5, lsl #3]
 80035a8:	311f      	adds	r1, #31
 80035aa:	0949      	lsrs	r1, r1, #5
 80035ac:	4650      	mov	r0, sl
 80035ae:	f7fd f871 	bl	8000694 <br_i31_bit_length>
 80035b2:	f846 0035 	str.w	r0, [r6, r5, lsl #3]
 80035b6:	3007      	adds	r0, #7
 80035b8:	08c1      	lsrs	r1, r0, #3
 80035ba:	4642      	mov	r2, r8
 80035bc:	6a20      	ldr	r0, [r4, #32]
 80035be:	f7fd f973 	bl	80008a8 <br_i31_encode>
 80035c2:	f856 3035 	ldr.w	r3, [r6, r5, lsl #3]
 80035c6:	3307      	adds	r3, #7
 80035c8:	08db      	lsrs	r3, r3, #3
 80035ca:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 80035ce:	6263      	str	r3, [r4, #36]	@ 0x24
 80035d0:	4638      	mov	r0, r7
 80035d2:	f7fd f8cf 	bl	8000774 <br_i31_decode>
 80035d6:	eb08 03c5 	add.w	r3, r8, r5, lsl #3
 80035da:	9300      	str	r3, [sp, #0]
 80035dc:	6be3      	ldr	r3, [r4, #60]	@ 0x3c
 80035de:	464a      	mov	r2, r9
 80035e0:	4631      	mov	r1, r6
 80035e2:	4640      	mov	r0, r8
 80035e4:	f7ff fafe 	bl	8002be4 <create_mask>
 80035e8:	eb08 03c5 	add.w	r3, r8, r5, lsl #3
 80035ec:	9300      	str	r3, [sp, #0]
 80035ee:	4632      	mov	r2, r6
 80035f0:	4643      	mov	r3, r8
 80035f2:	4639      	mov	r1, r7
 80035f4:	4640      	mov	r0, r8
 80035f6:	f7ff fb49 	bl	8002c8c <reblind>
 80035fa:	f856 1035 	ldr.w	r1, [r6, r5, lsl #3]
 80035fe:	6920      	ldr	r0, [r4, #16]
 8003600:	3107      	adds	r1, #7
 8003602:	4642      	mov	r2, r8
 8003604:	08c9      	lsrs	r1, r1, #3
 8003606:	f7fd f94f 	bl	80008a8 <br_i31_encode>
 800360a:	f856 3035 	ldr.w	r3, [r6, r5, lsl #3]
 800360e:	3307      	adds	r3, #7
 8003610:	08db      	lsrs	r3, r3, #3
 8003612:	6163      	str	r3, [r4, #20]
 8003614:	e9d4 1202 	ldrd	r1, r2, [r4, #8]
 8003618:	4630      	mov	r0, r6
 800361a:	f7fd f8ab 	bl	8000774 <br_i31_decode>
 800361e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8003622:	4640      	mov	r0, r8
 8003624:	f7fd f8a6 	bl	8000774 <br_i31_decode>
 8003628:	4632      	mov	r2, r6
 800362a:	4641      	mov	r1, r8
 800362c:	4638      	mov	r0, r7
 800362e:	f7fe f875 	bl	800171c <br_i31_reduce>
 8003632:	f857 2035 	ldr.w	r2, [r7, r5, lsl #3]
 8003636:	f846 2035 	str.w	r2, [r6, r5, lsl #3]
 800363a:	321f      	adds	r2, #31
 800363c:	0952      	lsrs	r2, r2, #5
 800363e:	2100      	movs	r1, #0
 8003640:	0092      	lsls	r2, r2, #2
 8003642:	4650      	mov	r0, sl
 8003644:	f000 f8a2 	bl	800378c <memset>
 8003648:	2301      	movs	r3, #1
 800364a:	f8c8 3004 	str.w	r3, [r8, #4]
 800364e:	6870      	ldr	r0, [r6, #4]
 8003650:	f7fe f844 	bl	80016dc <br_i31_ninv31>
 8003654:	eb08 02c5 	add.w	r2, r8, r5, lsl #3
 8003658:	4603      	mov	r3, r0
 800365a:	9200      	str	r2, [sp, #0]
 800365c:	4639      	mov	r1, r7
 800365e:	4632      	mov	r2, r6
 8003660:	4640      	mov	r0, r8
 8003662:	f7fd f9e7 	bl	8000a34 <br_i31_moddiv>
 8003666:	f856 1035 	ldr.w	r1, [r6, r5, lsl #3]
 800366a:	311f      	adds	r1, #31
 800366c:	4650      	mov	r0, sl
 800366e:	0949      	lsrs	r1, r1, #5
 8003670:	f7fd f810 	bl	8000694 <br_i31_bit_length>
 8003674:	f846 0035 	str.w	r0, [r6, r5, lsl #3]
 8003678:	3007      	adds	r0, #7
 800367a:	08c1      	lsrs	r1, r0, #3
 800367c:	4642      	mov	r2, r8
 800367e:	6aa0      	ldr	r0, [r4, #40]	@ 0x28
 8003680:	f7fd f912 	bl	80008a8 <br_i31_encode>
 8003684:	f856 3035 	ldr.w	r3, [r6, r5, lsl #3]
 8003688:	3307      	adds	r3, #7
 800368a:	08db      	lsrs	r3, r3, #3
 800368c:	62e3      	str	r3, [r4, #44]	@ 0x2c
 800368e:	b00d      	add	sp, #52	@ 0x34
 8003690:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08003694 <memmove>:
 8003694:	4288      	cmp	r0, r1
 8003696:	d90d      	bls.n	80036b4 <memmove+0x20>
 8003698:	188b      	adds	r3, r1, r2
 800369a:	4283      	cmp	r3, r0
 800369c:	d90a      	bls.n	80036b4 <memmove+0x20>
 800369e:	eb00 0c02 	add.w	ip, r0, r2
 80036a2:	b35a      	cbz	r2, 80036fc <memmove+0x68>
 80036a4:	4662      	mov	r2, ip
 80036a6:	f813 cd01 	ldrb.w	ip, [r3, #-1]!
 80036aa:	f802 cd01 	strb.w	ip, [r2, #-1]!
 80036ae:	4299      	cmp	r1, r3
 80036b0:	d1f9      	bne.n	80036a6 <memmove+0x12>
 80036b2:	4770      	bx	lr
 80036b4:	2a0f      	cmp	r2, #15
 80036b6:	d80d      	bhi.n	80036d4 <memmove+0x40>
 80036b8:	f102 3cff 	add.w	ip, r2, #4294967295	@ 0xffffffff
 80036bc:	b1f2      	cbz	r2, 80036fc <memmove+0x68>
 80036be:	f10c 0c01 	add.w	ip, ip, #1
 80036c2:	1e43      	subs	r3, r0, #1
 80036c4:	448c      	add	ip, r1
 80036c6:	f811 2b01 	ldrb.w	r2, [r1], #1
 80036ca:	f803 2f01 	strb.w	r2, [r3, #1]!
 80036ce:	4561      	cmp	r1, ip
 80036d0:	d1f9      	bne.n	80036c6 <memmove+0x32>
 80036d2:	4770      	bx	lr
 80036d4:	ea40 0301 	orr.w	r3, r0, r1
 80036d8:	079b      	lsls	r3, r3, #30
 80036da:	b5f0      	push	{r4, r5, r6, r7, lr}
 80036dc:	460c      	mov	r4, r1
 80036de:	d00e      	beq.n	80036fe <memmove+0x6a>
 80036e0:	f102 3cff 	add.w	ip, r2, #4294967295	@ 0xffffffff
 80036e4:	4603      	mov	r3, r0
 80036e6:	f10c 0c01 	add.w	ip, ip, #1
 80036ea:	3b01      	subs	r3, #1
 80036ec:	448c      	add	ip, r1
 80036ee:	f811 2b01 	ldrb.w	r2, [r1], #1
 80036f2:	f803 2f01 	strb.w	r2, [r3, #1]!
 80036f6:	4561      	cmp	r1, ip
 80036f8:	d1f9      	bne.n	80036ee <memmove+0x5a>
 80036fa:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80036fc:	4770      	bx	lr
 80036fe:	f1a2 0510 	sub.w	r5, r2, #16
 8003702:	f025 050f 	bic.w	r5, r5, #15
 8003706:	f101 0e20 	add.w	lr, r1, #32
 800370a:	f101 0310 	add.w	r3, r1, #16
 800370e:	44ae      	add	lr, r5
 8003710:	f100 0c10 	add.w	ip, r0, #16
 8003714:	f853 6c10 	ldr.w	r6, [r3, #-16]
 8003718:	f84c 6c10 	str.w	r6, [ip, #-16]
 800371c:	f853 6c0c 	ldr.w	r6, [r3, #-12]
 8003720:	f84c 6c0c 	str.w	r6, [ip, #-12]
 8003724:	f853 6c08 	ldr.w	r6, [r3, #-8]
 8003728:	f84c 6c08 	str.w	r6, [ip, #-8]
 800372c:	f853 6c04 	ldr.w	r6, [r3, #-4]
 8003730:	f84c 6c04 	str.w	r6, [ip, #-4]
 8003734:	3310      	adds	r3, #16
 8003736:	4573      	cmp	r3, lr
 8003738:	f10c 0c10 	add.w	ip, ip, #16
 800373c:	d1ea      	bne.n	8003714 <memmove+0x80>
 800373e:	eb01 0c05 	add.w	ip, r1, r5
 8003742:	f10c 0110 	add.w	r1, ip, #16
 8003746:	4405      	add	r5, r0
 8003748:	f012 0f0c 	tst.w	r2, #12
 800374c:	f105 0310 	add.w	r3, r5, #16
 8003750:	468e      	mov	lr, r1
 8003752:	f002 050f 	and.w	r5, r2, #15
 8003756:	d017      	beq.n	8003788 <memmove+0xf4>
 8003758:	3d04      	subs	r5, #4
 800375a:	f025 0503 	bic.w	r5, r5, #3
 800375e:	44ac      	add	ip, r5
 8003760:	f10c 0c14 	add.w	ip, ip, #20
 8003764:	1b04      	subs	r4, r0, r4
 8003766:	680f      	ldr	r7, [r1, #0]
 8003768:	190e      	adds	r6, r1, r4
 800376a:	3104      	adds	r1, #4
 800376c:	4561      	cmp	r1, ip
 800376e:	6037      	str	r7, [r6, #0]
 8003770:	d1f9      	bne.n	8003766 <memmove+0xd2>
 8003772:	1d2c      	adds	r4, r5, #4
 8003774:	eb04 010e 	add.w	r1, r4, lr
 8003778:	4423      	add	r3, r4
 800377a:	f002 0203 	and.w	r2, r2, #3
 800377e:	f102 3cff 	add.w	ip, r2, #4294967295	@ 0xffffffff
 8003782:	2a00      	cmp	r2, #0
 8003784:	d1af      	bne.n	80036e6 <memmove+0x52>
 8003786:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8003788:	462a      	mov	r2, r5
 800378a:	e7f8      	b.n	800377e <memmove+0xea>

0800378c <memset>:
 800378c:	0783      	lsls	r3, r0, #30
 800378e:	b530      	push	{r4, r5, lr}
 8003790:	d046      	beq.n	8003820 <memset+0x94>
 8003792:	1884      	adds	r4, r0, r2
 8003794:	4684      	mov	ip, r0
 8003796:	e004      	b.n	80037a2 <memset+0x16>
 8003798:	f803 1b01 	strb.w	r1, [r3], #1
 800379c:	079d      	lsls	r5, r3, #30
 800379e:	d004      	beq.n	80037aa <memset+0x1e>
 80037a0:	469c      	mov	ip, r3
 80037a2:	45a4      	cmp	ip, r4
 80037a4:	4663      	mov	r3, ip
 80037a6:	d1f7      	bne.n	8003798 <memset+0xc>
 80037a8:	bd30      	pop	{r4, r5, pc}
 80037aa:	3a01      	subs	r2, #1
 80037ac:	4402      	add	r2, r0
 80037ae:	eba2 020c 	sub.w	r2, r2, ip
 80037b2:	2a03      	cmp	r2, #3
 80037b4:	d929      	bls.n	800380a <memset+0x7e>
 80037b6:	b2cc      	uxtb	r4, r1
 80037b8:	eb04 2404 	add.w	r4, r4, r4, lsl #8
 80037bc:	2a0f      	cmp	r2, #15
 80037be:	eb04 4404 	add.w	r4, r4, r4, lsl #16
 80037c2:	d92f      	bls.n	8003824 <memset+0x98>
 80037c4:	f1a2 0c10 	sub.w	ip, r2, #16
 80037c8:	f02c 0c0f 	bic.w	ip, ip, #15
 80037cc:	f103 0510 	add.w	r5, r3, #16
 80037d0:	44ac      	add	ip, r5
 80037d2:	e9c3 4400 	strd	r4, r4, [r3]
 80037d6:	e9c3 4402 	strd	r4, r4, [r3, #8]
 80037da:	3310      	adds	r3, #16
 80037dc:	4563      	cmp	r3, ip
 80037de:	d1f8      	bne.n	80037d2 <memset+0x46>
 80037e0:	f012 0f0c 	tst.w	r2, #12
 80037e4:	f002 0e0f 	and.w	lr, r2, #15
 80037e8:	d018      	beq.n	800381c <memset+0x90>
 80037ea:	f02e 0c03 	bic.w	ip, lr, #3
 80037ee:	449c      	add	ip, r3
 80037f0:	f1ae 0504 	sub.w	r5, lr, #4
 80037f4:	461a      	mov	r2, r3
 80037f6:	f842 4b04 	str.w	r4, [r2], #4
 80037fa:	4562      	cmp	r2, ip
 80037fc:	d1fb      	bne.n	80037f6 <memset+0x6a>
 80037fe:	f025 0403 	bic.w	r4, r5, #3
 8003802:	3304      	adds	r3, #4
 8003804:	f00e 0203 	and.w	r2, lr, #3
 8003808:	4423      	add	r3, r4
 800380a:	2a00      	cmp	r2, #0
 800380c:	d0cc      	beq.n	80037a8 <memset+0x1c>
 800380e:	b2c9      	uxtb	r1, r1
 8003810:	441a      	add	r2, r3
 8003812:	f803 1b01 	strb.w	r1, [r3], #1
 8003816:	4293      	cmp	r3, r2
 8003818:	d1fb      	bne.n	8003812 <memset+0x86>
 800381a:	bd30      	pop	{r4, r5, pc}
 800381c:	4672      	mov	r2, lr
 800381e:	e7f4      	b.n	800380a <memset+0x7e>
 8003820:	4603      	mov	r3, r0
 8003822:	e7c6      	b.n	80037b2 <memset+0x26>
 8003824:	4696      	mov	lr, r2
 8003826:	e7e0      	b.n	80037ea <memset+0x5e>

08003828 <memcpy>:
 8003828:	4684      	mov	ip, r0
 800382a:	ea41 0300 	orr.w	r3, r1, r0
 800382e:	f013 0303 	ands.w	r3, r3, #3
 8003832:	d16d      	bne.n	8003910 <memcpy+0xe8>
 8003834:	3a40      	subs	r2, #64	@ 0x40
 8003836:	d341      	bcc.n	80038bc <memcpy+0x94>
 8003838:	f851 3b04 	ldr.w	r3, [r1], #4
 800383c:	f840 3b04 	str.w	r3, [r0], #4
 8003840:	f851 3b04 	ldr.w	r3, [r1], #4
 8003844:	f840 3b04 	str.w	r3, [r0], #4
 8003848:	f851 3b04 	ldr.w	r3, [r1], #4
 800384c:	f840 3b04 	str.w	r3, [r0], #4
 8003850:	f851 3b04 	ldr.w	r3, [r1], #4
 8003854:	f840 3b04 	str.w	r3, [r0], #4
 8003858:	f851 3b04 	ldr.w	r3, [r1], #4
 800385c:	f840 3b04 	str.w	r3, [r0], #4
 8003860:	f851 3b04 	ldr.w	r3, [r1], #4
 8003864:	f840 3b04 	str.w	r3, [r0], #4
 8003868:	f851 3b04 	ldr.w	r3, [r1], #4
 800386c:	f840 3b04 	str.w	r3, [r0], #4
 8003870:	f851 3b04 	ldr.w	r3, [r1], #4
 8003874:	f840 3b04 	str.w	r3, [r0], #4
 8003878:	f851 3b04 	ldr.w	r3, [r1], #4
 800387c:	f840 3b04 	str.w	r3, [r0], #4
 8003880:	f851 3b04 	ldr.w	r3, [r1], #4
 8003884:	f840 3b04 	str.w	r3, [r0], #4
 8003888:	f851 3b04 	ldr.w	r3, [r1], #4
 800388c:	f840 3b04 	str.w	r3, [r0], #4
 8003890:	f851 3b04 	ldr.w	r3, [r1], #4
 8003894:	f840 3b04 	str.w	r3, [r0], #4
 8003898:	f851 3b04 	ldr.w	r3, [r1], #4
 800389c:	f840 3b04 	str.w	r3, [r0], #4
 80038a0:	f851 3b04 	ldr.w	r3, [r1], #4
 80038a4:	f840 3b04 	str.w	r3, [r0], #4
 80038a8:	f851 3b04 	ldr.w	r3, [r1], #4
 80038ac:	f840 3b04 	str.w	r3, [r0], #4
 80038b0:	f851 3b04 	ldr.w	r3, [r1], #4
 80038b4:	f840 3b04 	str.w	r3, [r0], #4
 80038b8:	3a40      	subs	r2, #64	@ 0x40
 80038ba:	d2bd      	bcs.n	8003838 <memcpy+0x10>
 80038bc:	3230      	adds	r2, #48	@ 0x30
 80038be:	d311      	bcc.n	80038e4 <memcpy+0xbc>
 80038c0:	f851 3b04 	ldr.w	r3, [r1], #4
 80038c4:	f840 3b04 	str.w	r3, [r0], #4
 80038c8:	f851 3b04 	ldr.w	r3, [r1], #4
 80038cc:	f840 3b04 	str.w	r3, [r0], #4
 80038d0:	f851 3b04 	ldr.w	r3, [r1], #4
 80038d4:	f840 3b04 	str.w	r3, [r0], #4
 80038d8:	f851 3b04 	ldr.w	r3, [r1], #4
 80038dc:	f840 3b04 	str.w	r3, [r0], #4
 80038e0:	3a10      	subs	r2, #16
 80038e2:	d2ed      	bcs.n	80038c0 <memcpy+0x98>
 80038e4:	320c      	adds	r2, #12
 80038e6:	d305      	bcc.n	80038f4 <memcpy+0xcc>
 80038e8:	f851 3b04 	ldr.w	r3, [r1], #4
 80038ec:	f840 3b04 	str.w	r3, [r0], #4
 80038f0:	3a04      	subs	r2, #4
 80038f2:	d2f9      	bcs.n	80038e8 <memcpy+0xc0>
 80038f4:	3204      	adds	r2, #4
 80038f6:	d008      	beq.n	800390a <memcpy+0xe2>
 80038f8:	07d2      	lsls	r2, r2, #31
 80038fa:	bf1c      	itt	ne
 80038fc:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8003900:	f800 3b01 	strbne.w	r3, [r0], #1
 8003904:	d301      	bcc.n	800390a <memcpy+0xe2>
 8003906:	880b      	ldrh	r3, [r1, #0]
 8003908:	8003      	strh	r3, [r0, #0]
 800390a:	4660      	mov	r0, ip
 800390c:	4770      	bx	lr
 800390e:	bf00      	nop
 8003910:	2a08      	cmp	r2, #8
 8003912:	d313      	bcc.n	800393c <memcpy+0x114>
 8003914:	078b      	lsls	r3, r1, #30
 8003916:	d08d      	beq.n	8003834 <memcpy+0xc>
 8003918:	f010 0303 	ands.w	r3, r0, #3
 800391c:	d08a      	beq.n	8003834 <memcpy+0xc>
 800391e:	f1c3 0304 	rsb	r3, r3, #4
 8003922:	1ad2      	subs	r2, r2, r3
 8003924:	07db      	lsls	r3, r3, #31
 8003926:	bf1c      	itt	ne
 8003928:	f811 3b01 	ldrbne.w	r3, [r1], #1
 800392c:	f800 3b01 	strbne.w	r3, [r0], #1
 8003930:	d380      	bcc.n	8003834 <memcpy+0xc>
 8003932:	f831 3b02 	ldrh.w	r3, [r1], #2
 8003936:	f820 3b02 	strh.w	r3, [r0], #2
 800393a:	e77b      	b.n	8003834 <memcpy+0xc>
 800393c:	3a04      	subs	r2, #4
 800393e:	d3d9      	bcc.n	80038f4 <memcpy+0xcc>
 8003940:	3a01      	subs	r2, #1
 8003942:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003946:	f800 3b01 	strb.w	r3, [r0], #1
 800394a:	d2f9      	bcs.n	8003940 <memcpy+0x118>
 800394c:	780b      	ldrb	r3, [r1, #0]
 800394e:	7003      	strb	r3, [r0, #0]
 8003950:	784b      	ldrb	r3, [r1, #1]
 8003952:	7043      	strb	r3, [r0, #1]
 8003954:	788b      	ldrb	r3, [r1, #2]
 8003956:	7083      	strb	r3, [r0, #2]
 8003958:	4660      	mov	r0, ip
 800395a:	4770      	bx	lr

0800395c <dma_stream_reset>:
 800395c:	2318      	movs	r3, #24
 800395e:	fb11 0303 	smlabb	r3, r1, r3, r0
 8003962:	b510      	push	{r4, lr}
 8003964:	691a      	ldr	r2, [r3, #16]
 8003966:	f022 0201 	bic.w	r2, r2, #1
 800396a:	611a      	str	r2, [r3, #16]
 800396c:	2200      	movs	r2, #0
 800396e:	611a      	str	r2, [r3, #16]
 8003970:	e9c3 2206 	strd	r2, r2, [r3, #24]
 8003974:	615a      	str	r2, [r3, #20]
 8003976:	621a      	str	r2, [r3, #32]
 8003978:	2221      	movs	r2, #33	@ 0x21
 800397a:	625a      	str	r2, [r3, #36]	@ 0x24
 800397c:	f3c1 0340 	ubfx	r3, r1, #1, #1
 8003980:	011b      	lsls	r3, r3, #4
 8003982:	f001 0201 	and.w	r2, r1, #1
 8003986:	2406      	movs	r4, #6
 8003988:	fb12 3204 	smlabb	r2, r2, r4, r3
 800398c:	2903      	cmp	r1, #3
 800398e:	f04f 033d 	mov.w	r3, #61	@ 0x3d
 8003992:	fa03 f302 	lsl.w	r3, r3, r2
 8003996:	bf95      	itete	ls
 8003998:	6882      	ldrls	r2, [r0, #8]
 800399a:	68c2      	ldrhi	r2, [r0, #12]
 800399c:	4313      	orrls	r3, r2
 800399e:	4313      	orrhi	r3, r2
 80039a0:	bf94      	ite	ls
 80039a2:	6083      	strls	r3, [r0, #8]
 80039a4:	60c3      	strhi	r3, [r0, #12]
 80039a6:	bd10      	pop	{r4, pc}

080039a8 <dma_clear_interrupt_flags>:
 80039a8:	b530      	push	{r4, r5, lr}
 80039aa:	f3c1 0440 	ubfx	r4, r1, #1, #1
 80039ae:	f001 0301 	and.w	r3, r1, #1
 80039b2:	0124      	lsls	r4, r4, #4
 80039b4:	2506      	movs	r5, #6
 80039b6:	fb13 4305 	smlabb	r3, r3, r5, r4
 80039ba:	409a      	lsls	r2, r3
 80039bc:	2903      	cmp	r1, #3
 80039be:	bf94      	ite	ls
 80039c0:	6082      	strls	r2, [r0, #8]
 80039c2:	60c2      	strhi	r2, [r0, #12]
 80039c4:	bd30      	pop	{r4, r5, pc}

080039c6 <dma_set_transfer_mode>:
 80039c6:	2318      	movs	r3, #24
 80039c8:	3010      	adds	r0, #16
 80039ca:	fb01 0103 	mla	r1, r1, r3, r0
 80039ce:	2a80      	cmp	r2, #128	@ 0x80
 80039d0:	680b      	ldr	r3, [r1, #0]
 80039d2:	bf0a      	itet	eq
 80039d4:	f423 2380 	biceq.w	r3, r3, #262144	@ 0x40000
 80039d8:	f023 03c0 	bicne.w	r3, r3, #192	@ 0xc0
 80039dc:	f423 73e0 	biceq.w	r3, r3, #448	@ 0x1c0
 80039e0:	4313      	orrs	r3, r2
 80039e2:	600b      	str	r3, [r1, #0]
 80039e4:	4770      	bx	lr

080039e6 <dma_set_priority>:
 80039e6:	2318      	movs	r3, #24
 80039e8:	3010      	adds	r0, #16
 80039ea:	fb01 0103 	mla	r1, r1, r3, r0
 80039ee:	680b      	ldr	r3, [r1, #0]
 80039f0:	f423 3340 	bic.w	r3, r3, #196608	@ 0x30000
 80039f4:	600b      	str	r3, [r1, #0]
 80039f6:	680b      	ldr	r3, [r1, #0]
 80039f8:	4313      	orrs	r3, r2
 80039fa:	600b      	str	r3, [r1, #0]
 80039fc:	4770      	bx	lr

080039fe <dma_set_memory_size>:
 80039fe:	2318      	movs	r3, #24
 8003a00:	3010      	adds	r0, #16
 8003a02:	fb01 0103 	mla	r1, r1, r3, r0
 8003a06:	680b      	ldr	r3, [r1, #0]
 8003a08:	f423 43c0 	bic.w	r3, r3, #24576	@ 0x6000
 8003a0c:	600b      	str	r3, [r1, #0]
 8003a0e:	680b      	ldr	r3, [r1, #0]
 8003a10:	4313      	orrs	r3, r2
 8003a12:	600b      	str	r3, [r1, #0]
 8003a14:	4770      	bx	lr

08003a16 <dma_set_peripheral_size>:
 8003a16:	2318      	movs	r3, #24
 8003a18:	3010      	adds	r0, #16
 8003a1a:	fb01 0103 	mla	r1, r1, r3, r0
 8003a1e:	680b      	ldr	r3, [r1, #0]
 8003a20:	f423 53c0 	bic.w	r3, r3, #6144	@ 0x1800
 8003a24:	600b      	str	r3, [r1, #0]
 8003a26:	680b      	ldr	r3, [r1, #0]
 8003a28:	4313      	orrs	r3, r2
 8003a2a:	600b      	str	r3, [r1, #0]
 8003a2c:	4770      	bx	lr

08003a2e <dma_enable_memory_increment_mode>:
 8003a2e:	2318      	movs	r3, #24
 8003a30:	3010      	adds	r0, #16
 8003a32:	fb01 0103 	mla	r1, r1, r3, r0
 8003a36:	680b      	ldr	r3, [r1, #0]
 8003a38:	f443 6380 	orr.w	r3, r3, #1024	@ 0x400
 8003a3c:	600b      	str	r3, [r1, #0]
 8003a3e:	4770      	bx	lr

08003a40 <dma_disable_peripheral_increment_mode>:
 8003a40:	2318      	movs	r3, #24
 8003a42:	3010      	adds	r0, #16
 8003a44:	fb01 0103 	mla	r1, r1, r3, r0
 8003a48:	680b      	ldr	r3, [r1, #0]
 8003a4a:	f423 7300 	bic.w	r3, r3, #512	@ 0x200
 8003a4e:	600b      	str	r3, [r1, #0]
 8003a50:	4770      	bx	lr

08003a52 <dma_channel_select>:
 8003a52:	2318      	movs	r3, #24
 8003a54:	3010      	adds	r0, #16
 8003a56:	fb01 0103 	mla	r1, r1, r3, r0
 8003a5a:	680b      	ldr	r3, [r1, #0]
 8003a5c:	4313      	orrs	r3, r2
 8003a5e:	600b      	str	r3, [r1, #0]
 8003a60:	4770      	bx	lr

08003a62 <dma_disable_transfer_error_interrupt>:
 8003a62:	2318      	movs	r3, #24
 8003a64:	3010      	adds	r0, #16
 8003a66:	fb01 0103 	mla	r1, r1, r3, r0
 8003a6a:	680b      	ldr	r3, [r1, #0]
 8003a6c:	f023 0304 	bic.w	r3, r3, #4
 8003a70:	600b      	str	r3, [r1, #0]
 8003a72:	4770      	bx	lr

08003a74 <dma_disable_half_transfer_interrupt>:
 8003a74:	2318      	movs	r3, #24
 8003a76:	3010      	adds	r0, #16
 8003a78:	fb01 0103 	mla	r1, r1, r3, r0
 8003a7c:	680b      	ldr	r3, [r1, #0]
 8003a7e:	f023 0308 	bic.w	r3, r3, #8
 8003a82:	600b      	str	r3, [r1, #0]
 8003a84:	4770      	bx	lr

08003a86 <dma_enable_transfer_complete_interrupt>:
 8003a86:	b538      	push	{r3, r4, r5, lr}
 8003a88:	2220      	movs	r2, #32
 8003a8a:	4605      	mov	r5, r0
 8003a8c:	f7ff ff8c 	bl	80039a8 <dma_clear_interrupt_flags>
 8003a90:	3510      	adds	r5, #16
 8003a92:	2318      	movs	r3, #24
 8003a94:	fb11 5103 	smlabb	r1, r1, r3, r5
 8003a98:	680b      	ldr	r3, [r1, #0]
 8003a9a:	f043 0310 	orr.w	r3, r3, #16
 8003a9e:	600b      	str	r3, [r1, #0]
 8003aa0:	bd38      	pop	{r3, r4, r5, pc}

08003aa2 <dma_disable_direct_mode_error_interrupt>:
 8003aa2:	2318      	movs	r3, #24
 8003aa4:	3010      	adds	r0, #16
 8003aa6:	fb01 0103 	mla	r1, r1, r3, r0
 8003aaa:	680b      	ldr	r3, [r1, #0]
 8003aac:	f023 0302 	bic.w	r3, r3, #2
 8003ab0:	600b      	str	r3, [r1, #0]
 8003ab2:	4770      	bx	lr

08003ab4 <dma_disable_fifo_error_interrupt>:
 8003ab4:	2318      	movs	r3, #24
 8003ab6:	3024      	adds	r0, #36	@ 0x24
 8003ab8:	fb01 0103 	mla	r1, r1, r3, r0
 8003abc:	680b      	ldr	r3, [r1, #0]
 8003abe:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 8003ac2:	600b      	str	r3, [r1, #0]
 8003ac4:	4770      	bx	lr

08003ac6 <dma_enable_stream>:
 8003ac6:	2318      	movs	r3, #24
 8003ac8:	3010      	adds	r0, #16
 8003aca:	fb01 0103 	mla	r1, r1, r3, r0
 8003ace:	680b      	ldr	r3, [r1, #0]
 8003ad0:	f043 0301 	orr.w	r3, r3, #1
 8003ad4:	600b      	str	r3, [r1, #0]
 8003ad6:	4770      	bx	lr

08003ad8 <dma_disable_stream>:
 8003ad8:	2318      	movs	r3, #24
 8003ada:	3010      	adds	r0, #16
 8003adc:	fb01 0103 	mla	r1, r1, r3, r0
 8003ae0:	680b      	ldr	r3, [r1, #0]
 8003ae2:	f023 0301 	bic.w	r3, r3, #1
 8003ae6:	600b      	str	r3, [r1, #0]
 8003ae8:	4770      	bx	lr

08003aea <dma_set_peripheral_address>:
 8003aea:	2318      	movs	r3, #24
 8003aec:	fb01 0003 	mla	r0, r1, r3, r0
 8003af0:	6903      	ldr	r3, [r0, #16]
 8003af2:	07db      	lsls	r3, r3, #31
 8003af4:	bf58      	it	pl
 8003af6:	6182      	strpl	r2, [r0, #24]
 8003af8:	4770      	bx	lr

08003afa <dma_set_memory_address>:
 8003afa:	2318      	movs	r3, #24
 8003afc:	fb01 0003 	mla	r0, r1, r3, r0
 8003b00:	6903      	ldr	r3, [r0, #16]
 8003b02:	07d9      	lsls	r1, r3, #31
 8003b04:	d504      	bpl.n	8003b10 <dma_set_memory_address+0x16>
 8003b06:	f403 2340 	and.w	r3, r3, #786432	@ 0xc0000
 8003b0a:	f5b3 2f40 	cmp.w	r3, #786432	@ 0xc0000
 8003b0e:	d100      	bne.n	8003b12 <dma_set_memory_address+0x18>
 8003b10:	61c2      	str	r2, [r0, #28]
 8003b12:	4770      	bx	lr

08003b14 <dma_set_number_of_data>:
 8003b14:	3014      	adds	r0, #20
 8003b16:	2318      	movs	r3, #24
 8003b18:	fb01 0003 	mla	r0, r1, r3, r0
 8003b1c:	6002      	str	r2, [r0, #0]
 8003b1e:	4770      	bx	lr

08003b20 <flash_prefetch_enable>:
 8003b20:	4a03      	ldr	r2, [pc, #12]	@ (8003b30 <flash_prefetch_enable+0x10>)
 8003b22:	f8d2 3c00 	ldr.w	r3, [r2, #3072]	@ 0xc00
 8003b26:	f443 7380 	orr.w	r3, r3, #256	@ 0x100
 8003b2a:	f8c2 3c00 	str.w	r3, [r2, #3072]	@ 0xc00
 8003b2e:	4770      	bx	lr
 8003b30:	40023000 	.word	0x40023000

08003b34 <flash_set_ws>:
 8003b34:	4a04      	ldr	r2, [pc, #16]	@ (8003b48 <flash_set_ws+0x14>)
 8003b36:	f8d2 3c00 	ldr.w	r3, [r2, #3072]	@ 0xc00
 8003b3a:	f023 030f 	bic.w	r3, r3, #15
 8003b3e:	4303      	orrs	r3, r0
 8003b40:	f8c2 3c00 	str.w	r3, [r2, #3072]	@ 0xc00
 8003b44:	4770      	bx	lr
 8003b46:	bf00      	nop
 8003b48:	40023000 	.word	0x40023000

08003b4c <gpio_mode_setup>:
 8003b4c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003b50:	6805      	ldr	r5, [r0, #0]
 8003b52:	68c4      	ldr	r4, [r0, #12]
 8003b54:	2600      	movs	r6, #0
 8003b56:	f04f 0e03 	mov.w	lr, #3
 8003b5a:	fa43 f706 	asr.w	r7, r3, r6
 8003b5e:	07ff      	lsls	r7, r7, #31
 8003b60:	d50d      	bpl.n	8003b7e <gpio_mode_setup+0x32>
 8003b62:	0077      	lsls	r7, r6, #1
 8003b64:	fa0e fc07 	lsl.w	ip, lr, r7
 8003b68:	fa01 f807 	lsl.w	r8, r1, r7
 8003b6c:	ea25 050c 	bic.w	r5, r5, ip
 8003b70:	ea24 040c 	bic.w	r4, r4, ip
 8003b74:	fa02 f707 	lsl.w	r7, r2, r7
 8003b78:	ea48 0505 	orr.w	r5, r8, r5
 8003b7c:	433c      	orrs	r4, r7
 8003b7e:	3601      	adds	r6, #1
 8003b80:	2e10      	cmp	r6, #16
 8003b82:	d1ea      	bne.n	8003b5a <gpio_mode_setup+0xe>
 8003b84:	6005      	str	r5, [r0, #0]
 8003b86:	60c4      	str	r4, [r0, #12]
 8003b88:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003b8c <gpio_set_af>:
 8003b8c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003b8e:	6a06      	ldr	r6, [r0, #32]
 8003b90:	6a45      	ldr	r5, [r0, #36]	@ 0x24
 8003b92:	2300      	movs	r3, #0
 8003b94:	f04f 0c0f 	mov.w	ip, #15
 8003b98:	fa42 f403 	asr.w	r4, r2, r3
 8003b9c:	07e7      	lsls	r7, r4, #31
 8003b9e:	d507      	bpl.n	8003bb0 <gpio_set_af+0x24>
 8003ba0:	009c      	lsls	r4, r3, #2
 8003ba2:	fa0c f704 	lsl.w	r7, ip, r4
 8003ba6:	ea26 0607 	bic.w	r6, r6, r7
 8003baa:	fa01 f404 	lsl.w	r4, r1, r4
 8003bae:	4326      	orrs	r6, r4
 8003bb0:	3301      	adds	r3, #1
 8003bb2:	2b08      	cmp	r3, #8
 8003bb4:	d1f0      	bne.n	8003b98 <gpio_set_af+0xc>
 8003bb6:	2300      	movs	r3, #0
 8003bb8:	f04f 0c0f 	mov.w	ip, #15
 8003bbc:	f103 0408 	add.w	r4, r3, #8
 8003bc0:	fa42 f404 	asr.w	r4, r2, r4
 8003bc4:	07e4      	lsls	r4, r4, #31
 8003bc6:	d507      	bpl.n	8003bd8 <gpio_set_af+0x4c>
 8003bc8:	009c      	lsls	r4, r3, #2
 8003bca:	fa0c f704 	lsl.w	r7, ip, r4
 8003bce:	ea25 0507 	bic.w	r5, r5, r7
 8003bd2:	fa01 f404 	lsl.w	r4, r1, r4
 8003bd6:	4325      	orrs	r5, r4
 8003bd8:	3301      	adds	r3, #1
 8003bda:	2b08      	cmp	r3, #8
 8003bdc:	d1ee      	bne.n	8003bbc <gpio_set_af+0x30>
 8003bde:	6206      	str	r6, [r0, #32]
 8003be0:	6245      	str	r5, [r0, #36]	@ 0x24
 8003be2:	bdf0      	pop	{r4, r5, r6, r7, pc}

08003be4 <rcc_periph_clock_enable>:
 8003be4:	0943      	lsrs	r3, r0, #5
 8003be6:	f103 4380 	add.w	r3, r3, #1073741824	@ 0x40000000
 8003bea:	f503 330e 	add.w	r3, r3, #145408	@ 0x23800
 8003bee:	f000 001f 	and.w	r0, r0, #31
 8003bf2:	6819      	ldr	r1, [r3, #0]
 8003bf4:	2201      	movs	r2, #1
 8003bf6:	4082      	lsls	r2, r0
 8003bf8:	430a      	orrs	r2, r1
 8003bfa:	601a      	str	r2, [r3, #0]
 8003bfc:	4770      	bx	lr
	...

08003c00 <rcc_is_osc_ready>:
 8003c00:	2806      	cmp	r0, #6
 8003c02:	d82b      	bhi.n	8003c5c <rcc_is_osc_ready+0x5c>
 8003c04:	e8df f000 	tbb	[pc, r0]
 8003c08:	0a241e04 	.word	0x0a241e04
 8003c0c:	1610      	.short	0x1610
 8003c0e:	1a          	.byte	0x1a
 8003c0f:	00          	.byte	0x00
 8003c10:	4b13      	ldr	r3, [pc, #76]	@ (8003c60 <rcc_is_osc_ready+0x60>)
 8003c12:	f8d3 0800 	ldr.w	r0, [r3, #2048]	@ 0x800
 8003c16:	f3c0 6040 	ubfx	r0, r0, #25, #1
 8003c1a:	4770      	bx	lr
 8003c1c:	4b10      	ldr	r3, [pc, #64]	@ (8003c60 <rcc_is_osc_ready+0x60>)
 8003c1e:	f8d3 0800 	ldr.w	r0, [r3, #2048]	@ 0x800
 8003c22:	f3c0 4040 	ubfx	r0, r0, #17, #1
 8003c26:	4770      	bx	lr
 8003c28:	4b0d      	ldr	r3, [pc, #52]	@ (8003c60 <rcc_is_osc_ready+0x60>)
 8003c2a:	f8d3 0800 	ldr.w	r0, [r3, #2048]	@ 0x800
 8003c2e:	f3c0 0040 	ubfx	r0, r0, #1, #1
 8003c32:	4770      	bx	lr
 8003c34:	4b0a      	ldr	r3, [pc, #40]	@ (8003c60 <rcc_is_osc_ready+0x60>)
 8003c36:	f8d3 0870 	ldr.w	r0, [r3, #2160]	@ 0x870
 8003c3a:	e7f8      	b.n	8003c2e <rcc_is_osc_ready+0x2e>
 8003c3c:	4b08      	ldr	r3, [pc, #32]	@ (8003c60 <rcc_is_osc_ready+0x60>)
 8003c3e:	f8d3 0874 	ldr.w	r0, [r3, #2164]	@ 0x874
 8003c42:	e7f4      	b.n	8003c2e <rcc_is_osc_ready+0x2e>
 8003c44:	4b06      	ldr	r3, [pc, #24]	@ (8003c60 <rcc_is_osc_ready+0x60>)
 8003c46:	f8d3 0800 	ldr.w	r0, [r3, #2048]	@ 0x800
 8003c4a:	f3c0 7040 	ubfx	r0, r0, #29, #1
 8003c4e:	4770      	bx	lr
 8003c50:	4b03      	ldr	r3, [pc, #12]	@ (8003c60 <rcc_is_osc_ready+0x60>)
 8003c52:	f8d3 0800 	ldr.w	r0, [r3, #2048]	@ 0x800
 8003c56:	f3c0 60c0 	ubfx	r0, r0, #27, #1
 8003c5a:	4770      	bx	lr
 8003c5c:	2000      	movs	r0, #0
 8003c5e:	4770      	bx	lr
 8003c60:	40023000 	.word	0x40023000

08003c64 <rcc_wait_for_osc_ready>:
 8003c64:	b508      	push	{r3, lr}
 8003c66:	4602      	mov	r2, r0
 8003c68:	4610      	mov	r0, r2
 8003c6a:	f7ff ffc9 	bl	8003c00 <rcc_is_osc_ready>
 8003c6e:	2800      	cmp	r0, #0
 8003c70:	d0fa      	beq.n	8003c68 <rcc_wait_for_osc_ready+0x4>
 8003c72:	bd08      	pop	{r3, pc}

08003c74 <rcc_osc_on>:
 8003c74:	2806      	cmp	r0, #6
 8003c76:	d80c      	bhi.n	8003c92 <rcc_osc_on+0x1e>
 8003c78:	e8df f000 	tbb	[pc, r0]
 8003c7c:	0c2e2804 	.word	0x0c2e2804
 8003c80:	1812      	.short	0x1812
 8003c82:	20          	.byte	0x20
 8003c83:	00          	.byte	0x00
 8003c84:	4a17      	ldr	r2, [pc, #92]	@ (8003ce4 <rcc_osc_on+0x70>)
 8003c86:	f8d2 3800 	ldr.w	r3, [r2, #2048]	@ 0x800
 8003c8a:	f043 7380 	orr.w	r3, r3, #16777216	@ 0x1000000
 8003c8e:	f8c2 3800 	str.w	r3, [r2, #2048]	@ 0x800
 8003c92:	4770      	bx	lr
 8003c94:	4a13      	ldr	r2, [pc, #76]	@ (8003ce4 <rcc_osc_on+0x70>)
 8003c96:	f8d2 3800 	ldr.w	r3, [r2, #2048]	@ 0x800
 8003c9a:	f443 3380 	orr.w	r3, r3, #65536	@ 0x10000
 8003c9e:	e7f6      	b.n	8003c8e <rcc_osc_on+0x1a>
 8003ca0:	4a10      	ldr	r2, [pc, #64]	@ (8003ce4 <rcc_osc_on+0x70>)
 8003ca2:	f8d2 3800 	ldr.w	r3, [r2, #2048]	@ 0x800
 8003ca6:	f043 0301 	orr.w	r3, r3, #1
 8003caa:	e7f0      	b.n	8003c8e <rcc_osc_on+0x1a>
 8003cac:	4a0d      	ldr	r2, [pc, #52]	@ (8003ce4 <rcc_osc_on+0x70>)
 8003cae:	f8d2 3870 	ldr.w	r3, [r2, #2160]	@ 0x870
 8003cb2:	f043 0301 	orr.w	r3, r3, #1
 8003cb6:	f8c2 3870 	str.w	r3, [r2, #2160]	@ 0x870
 8003cba:	4770      	bx	lr
 8003cbc:	4a09      	ldr	r2, [pc, #36]	@ (8003ce4 <rcc_osc_on+0x70>)
 8003cbe:	f8d2 3874 	ldr.w	r3, [r2, #2164]	@ 0x874
 8003cc2:	f043 0301 	orr.w	r3, r3, #1
 8003cc6:	f8c2 3874 	str.w	r3, [r2, #2164]	@ 0x874
 8003cca:	4770      	bx	lr
 8003ccc:	4a05      	ldr	r2, [pc, #20]	@ (8003ce4 <rcc_osc_on+0x70>)
 8003cce:	f8d2 3800 	ldr.w	r3, [r2, #2048]	@ 0x800
 8003cd2:	f043 5380 	orr.w	r3, r3, #268435456	@ 0x10000000
 8003cd6:	e7da      	b.n	8003c8e <rcc_osc_on+0x1a>
 8003cd8:	4a02      	ldr	r2, [pc, #8]	@ (8003ce4 <rcc_osc_on+0x70>)
 8003cda:	f8d2 3800 	ldr.w	r3, [r2, #2048]	@ 0x800
 8003cde:	f043 6380 	orr.w	r3, r3, #67108864	@ 0x4000000
 8003ce2:	e7d4      	b.n	8003c8e <rcc_osc_on+0x1a>
 8003ce4:	40023000 	.word	0x40023000

08003ce8 <rcc_osc_off>:
 8003ce8:	2806      	cmp	r0, #6
 8003cea:	d80c      	bhi.n	8003d06 <rcc_osc_off+0x1e>
 8003cec:	e8df f000 	tbb	[pc, r0]
 8003cf0:	0c2e2804 	.word	0x0c2e2804
 8003cf4:	1812      	.short	0x1812
 8003cf6:	20          	.byte	0x20
 8003cf7:	00          	.byte	0x00
 8003cf8:	4a17      	ldr	r2, [pc, #92]	@ (8003d58 <rcc_osc_off+0x70>)
 8003cfa:	f8d2 3800 	ldr.w	r3, [r2, #2048]	@ 0x800
 8003cfe:	f023 7380 	bic.w	r3, r3, #16777216	@ 0x1000000
 8003d02:	f8c2 3800 	str.w	r3, [r2, #2048]	@ 0x800
 8003d06:	4770      	bx	lr
 8003d08:	4a13      	ldr	r2, [pc, #76]	@ (8003d58 <rcc_osc_off+0x70>)
 8003d0a:	f8d2 3800 	ldr.w	r3, [r2, #2048]	@ 0x800
 8003d0e:	f423 3380 	bic.w	r3, r3, #65536	@ 0x10000
 8003d12:	e7f6      	b.n	8003d02 <rcc_osc_off+0x1a>
 8003d14:	4a10      	ldr	r2, [pc, #64]	@ (8003d58 <rcc_osc_off+0x70>)
 8003d16:	f8d2 3800 	ldr.w	r3, [r2, #2048]	@ 0x800
 8003d1a:	f023 0301 	bic.w	r3, r3, #1
 8003d1e:	e7f0      	b.n	8003d02 <rcc_osc_off+0x1a>
 8003d20:	4a0d      	ldr	r2, [pc, #52]	@ (8003d58 <rcc_osc_off+0x70>)
 8003d22:	f8d2 3870 	ldr.w	r3, [r2, #2160]	@ 0x870
 8003d26:	f023 0301 	bic.w	r3, r3, #1
 8003d2a:	f8c2 3870 	str.w	r3, [r2, #2160]	@ 0x870
 8003d2e:	4770      	bx	lr
 8003d30:	4a09      	ldr	r2, [pc, #36]	@ (8003d58 <rcc_osc_off+0x70>)
 8003d32:	f8d2 3874 	ldr.w	r3, [r2, #2164]	@ 0x874
 8003d36:	f023 0301 	bic.w	r3, r3, #1
 8003d3a:	f8c2 3874 	str.w	r3, [r2, #2164]	@ 0x874
 8003d3e:	4770      	bx	lr
 8003d40:	4a05      	ldr	r2, [pc, #20]	@ (8003d58 <rcc_osc_off+0x70>)
 8003d42:	f8d2 3800 	ldr.w	r3, [r2, #2048]	@ 0x800
 8003d46:	f023 5380 	bic.w	r3, r3, #268435456	@ 0x10000000
 8003d4a:	e7da      	b.n	8003d02 <rcc_osc_off+0x1a>
 8003d4c:	4a02      	ldr	r2, [pc, #8]	@ (8003d58 <rcc_osc_off+0x70>)
 8003d4e:	f8d2 3800 	ldr.w	r3, [r2, #2048]	@ 0x800
 8003d52:	f023 6380 	bic.w	r3, r3, #67108864	@ 0x4000000
 8003d56:	e7d4      	b.n	8003d02 <rcc_osc_off+0x1a>
 8003d58:	40023000 	.word	0x40023000

08003d5c <rcc_set_sysclk_source>:
 8003d5c:	4a04      	ldr	r2, [pc, #16]	@ (8003d70 <rcc_set_sysclk_source+0x14>)
 8003d5e:	f8d2 3808 	ldr.w	r3, [r2, #2056]	@ 0x808
 8003d62:	f023 0303 	bic.w	r3, r3, #3
 8003d66:	4303      	orrs	r3, r0
 8003d68:	f8c2 3808 	str.w	r3, [r2, #2056]	@ 0x808
 8003d6c:	4770      	bx	lr
 8003d6e:	bf00      	nop
 8003d70:	40023000 	.word	0x40023000

08003d74 <rcc_set_ppre2>:
 8003d74:	4a04      	ldr	r2, [pc, #16]	@ (8003d88 <rcc_set_ppre2+0x14>)
 8003d76:	f8d2 3808 	ldr.w	r3, [r2, #2056]	@ 0x808
 8003d7a:	f423 4360 	bic.w	r3, r3, #57344	@ 0xe000
 8003d7e:	ea43 3340 	orr.w	r3, r3, r0, lsl #13
 8003d82:	f8c2 3808 	str.w	r3, [r2, #2056]	@ 0x808
 8003d86:	4770      	bx	lr
 8003d88:	40023000 	.word	0x40023000

08003d8c <rcc_set_ppre1>:
 8003d8c:	4a04      	ldr	r2, [pc, #16]	@ (8003da0 <rcc_set_ppre1+0x14>)
 8003d8e:	f8d2 3808 	ldr.w	r3, [r2, #2056]	@ 0x808
 8003d92:	f423 53e0 	bic.w	r3, r3, #7168	@ 0x1c00
 8003d96:	ea43 2380 	orr.w	r3, r3, r0, lsl #10
 8003d9a:	f8c2 3808 	str.w	r3, [r2, #2056]	@ 0x808
 8003d9e:	4770      	bx	lr
 8003da0:	40023000 	.word	0x40023000

08003da4 <rcc_set_hpre>:
 8003da4:	4a04      	ldr	r2, [pc, #16]	@ (8003db8 <rcc_set_hpre+0x14>)
 8003da6:	f8d2 3808 	ldr.w	r3, [r2, #2056]	@ 0x808
 8003daa:	f023 03f0 	bic.w	r3, r3, #240	@ 0xf0
 8003dae:	ea43 1300 	orr.w	r3, r3, r0, lsl #4
 8003db2:	f8c2 3808 	str.w	r3, [r2, #2056]	@ 0x808
 8003db6:	4770      	bx	lr
 8003db8:	40023000 	.word	0x40023000

08003dbc <rcc_set_main_pll_hsi>:
 8003dbc:	b510      	push	{r4, lr}
 8003dbe:	f647 74c0 	movw	r4, #32704	@ 0x7fc0
 8003dc2:	ea04 1481 	and.w	r4, r4, r1, lsl #6
 8003dc6:	f000 003f 	and.w	r0, r0, #63	@ 0x3f
 8003dca:	061b      	lsls	r3, r3, #24
 8003dcc:	f003 6370 	and.w	r3, r3, #251658240	@ 0xf000000
 8003dd0:	4304      	orrs	r4, r0
 8003dd2:	431c      	orrs	r4, r3
 8003dd4:	9b02      	ldr	r3, [sp, #8]
 8003dd6:	0852      	lsrs	r2, r2, #1
 8003dd8:	2b02      	cmp	r3, #2
 8003dda:	f102 32ff 	add.w	r2, r2, #4294967295	@ 0xffffffff
 8003dde:	ea4f 4202 	mov.w	r2, r2, lsl #16
 8003de2:	bf38      	it	cc
 8003de4:	2302      	movcc	r3, #2
 8003de6:	f402 3240 	and.w	r2, r2, #196608	@ 0x30000
 8003dea:	071b      	lsls	r3, r3, #28
 8003dec:	f003 43e0 	and.w	r3, r3, #1879048192	@ 0x70000000
 8003df0:	4314      	orrs	r4, r2
 8003df2:	431c      	orrs	r4, r3
 8003df4:	4b01      	ldr	r3, [pc, #4]	@ (8003dfc <rcc_set_main_pll_hsi+0x40>)
 8003df6:	f8c3 4804 	str.w	r4, [r3, #2052]	@ 0x804
 8003dfa:	bd10      	pop	{r4, pc}
 8003dfc:	40023000 	.word	0x40023000

08003e00 <rcc_set_main_pll_hse>:
 8003e00:	b510      	push	{r4, lr}
 8003e02:	9c02      	ldr	r4, [sp, #8]
 8003e04:	2c02      	cmp	r4, #2
 8003e06:	bf38      	it	cc
 8003e08:	2402      	movcc	r4, #2
 8003e0a:	0724      	lsls	r4, r4, #28
 8003e0c:	061b      	lsls	r3, r3, #24
 8003e0e:	f003 6370 	and.w	r3, r3, #251658240	@ 0xf000000
 8003e12:	f004 44e0 	and.w	r4, r4, #1879048192	@ 0x70000000
 8003e16:	0852      	lsrs	r2, r2, #1
 8003e18:	431c      	orrs	r4, r3
 8003e1a:	f000 003f 	and.w	r0, r0, #63	@ 0x3f
 8003e1e:	f647 73c0 	movw	r3, #32704	@ 0x7fc0
 8003e22:	3a01      	subs	r2, #1
 8003e24:	ea03 1381 	and.w	r3, r3, r1, lsl #6
 8003e28:	4304      	orrs	r4, r0
 8003e2a:	0412      	lsls	r2, r2, #16
 8003e2c:	431c      	orrs	r4, r3
 8003e2e:	f402 3240 	and.w	r2, r2, #196608	@ 0x30000
 8003e32:	4b03      	ldr	r3, [pc, #12]	@ (8003e40 <rcc_set_main_pll_hse+0x40>)
 8003e34:	4314      	orrs	r4, r2
 8003e36:	f444 0480 	orr.w	r4, r4, #4194304	@ 0x400000
 8003e3a:	f8c3 4804 	str.w	r4, [r3, #2052]	@ 0x804
 8003e3e:	bd10      	pop	{r4, pc}
 8003e40:	40023000 	.word	0x40023000

08003e44 <rcc_clock_setup_pll>:
 8003e44:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8003e46:	4604      	mov	r4, r0
 8003e48:	2004      	movs	r0, #4
 8003e4a:	f7ff ff13 	bl	8003c74 <rcc_osc_on>
 8003e4e:	f7ff ff09 	bl	8003c64 <rcc_wait_for_osc_ready>
 8003e52:	2000      	movs	r0, #0
 8003e54:	f7ff ff82 	bl	8003d5c <rcc_set_sysclk_source>
 8003e58:	79e3      	ldrb	r3, [r4, #7]
 8003e5a:	2b01      	cmp	r3, #1
 8003e5c:	d104      	bne.n	8003e68 <rcc_clock_setup_pll+0x24>
 8003e5e:	2003      	movs	r0, #3
 8003e60:	f7ff ff08 	bl	8003c74 <rcc_osc_on>
 8003e64:	f7ff fefe 	bl	8003c64 <rcc_wait_for_osc_ready>
 8003e68:	f640 001c 	movw	r0, #2076	@ 0x81c
 8003e6c:	f7ff feba 	bl	8003be4 <rcc_periph_clock_enable>
 8003e70:	7be0      	ldrb	r0, [r4, #15]
 8003e72:	f000 f959 	bl	8004128 <pwr_set_vos_scale>
 8003e76:	7b20      	ldrb	r0, [r4, #12]
 8003e78:	f7ff ff94 	bl	8003da4 <rcc_set_hpre>
 8003e7c:	7b60      	ldrb	r0, [r4, #13]
 8003e7e:	f7ff ff85 	bl	8003d8c <rcc_set_ppre1>
 8003e82:	7ba0      	ldrb	r0, [r4, #14]
 8003e84:	f7ff ff76 	bl	8003d74 <rcc_set_ppre2>
 8003e88:	2000      	movs	r0, #0
 8003e8a:	f7ff ff2d 	bl	8003ce8 <rcc_osc_off>
 8003e8e:	79e6      	ldrb	r6, [r4, #7]
 8003e90:	79a5      	ldrb	r5, [r4, #6]
 8003e92:	7820      	ldrb	r0, [r4, #0]
 8003e94:	8861      	ldrh	r1, [r4, #2]
 8003e96:	7922      	ldrb	r2, [r4, #4]
 8003e98:	7963      	ldrb	r3, [r4, #5]
 8003e9a:	9500      	str	r5, [sp, #0]
 8003e9c:	2e01      	cmp	r6, #1
 8003e9e:	d12f      	bne.n	8003f00 <rcc_clock_setup_pll+0xbc>
 8003ea0:	f7ff ffae 	bl	8003e00 <rcc_set_main_pll_hse>
 8003ea4:	2000      	movs	r0, #0
 8003ea6:	f7ff fee5 	bl	8003c74 <rcc_osc_on>
 8003eaa:	f7ff fedb 	bl	8003c64 <rcc_wait_for_osc_ready>
 8003eae:	68a3      	ldr	r3, [r4, #8]
 8003eb0:	055a      	lsls	r2, r3, #21
 8003eb2:	d528      	bpl.n	8003f06 <rcc_clock_setup_pll+0xc2>
 8003eb4:	f000 f910 	bl	80040d8 <flash_dcache_enable>
 8003eb8:	68a3      	ldr	r3, [r4, #8]
 8003eba:	059b      	lsls	r3, r3, #22
 8003ebc:	d526      	bpl.n	8003f0c <rcc_clock_setup_pll+0xc8>
 8003ebe:	f000 f91f 	bl	8004100 <flash_icache_enable>
 8003ec2:	68a0      	ldr	r0, [r4, #8]
 8003ec4:	f7ff fe36 	bl	8003b34 <flash_set_ws>
 8003ec8:	2002      	movs	r0, #2
 8003eca:	f7ff ff47 	bl	8003d5c <rcc_set_sysclk_source>
 8003ece:	4a12      	ldr	r2, [pc, #72]	@ (8003f18 <rcc_clock_setup_pll+0xd4>)
 8003ed0:	f8d2 3808 	ldr.w	r3, [r2, #2056]	@ 0x808
 8003ed4:	f003 030c 	and.w	r3, r3, #12
 8003ed8:	2b08      	cmp	r3, #8
 8003eda:	d1f9      	bne.n	8003ed0 <rcc_clock_setup_pll+0x8c>
 8003edc:	4b0f      	ldr	r3, [pc, #60]	@ (8003f1c <rcc_clock_setup_pll+0xd8>)
 8003ede:	6922      	ldr	r2, [r4, #16]
 8003ee0:	601a      	str	r2, [r3, #0]
 8003ee2:	4b0f      	ldr	r3, [pc, #60]	@ (8003f20 <rcc_clock_setup_pll+0xdc>)
 8003ee4:	6962      	ldr	r2, [r4, #20]
 8003ee6:	601a      	str	r2, [r3, #0]
 8003ee8:	4b0e      	ldr	r3, [pc, #56]	@ (8003f24 <rcc_clock_setup_pll+0xe0>)
 8003eea:	69a2      	ldr	r2, [r4, #24]
 8003eec:	601a      	str	r2, [r3, #0]
 8003eee:	79e3      	ldrb	r3, [r4, #7]
 8003ef0:	2b01      	cmp	r3, #1
 8003ef2:	d10e      	bne.n	8003f12 <rcc_clock_setup_pll+0xce>
 8003ef4:	2004      	movs	r0, #4
 8003ef6:	b002      	add	sp, #8
 8003ef8:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8003efc:	f7ff bef4 	b.w	8003ce8 <rcc_osc_off>
 8003f00:	f7ff ff5c 	bl	8003dbc <rcc_set_main_pll_hsi>
 8003f04:	e7ce      	b.n	8003ea4 <rcc_clock_setup_pll+0x60>
 8003f06:	f000 f8f1 	bl	80040ec <flash_dcache_disable>
 8003f0a:	e7d5      	b.n	8003eb8 <rcc_clock_setup_pll+0x74>
 8003f0c:	f000 f902 	bl	8004114 <flash_icache_disable>
 8003f10:	e7d7      	b.n	8003ec2 <rcc_clock_setup_pll+0x7e>
 8003f12:	b002      	add	sp, #8
 8003f14:	bd70      	pop	{r4, r5, r6, pc}
 8003f16:	bf00      	nop
 8003f18:	40023000 	.word	0x40023000
 8003f1c:	20000008 	.word	0x20000008
 8003f20:	20000004 	.word	0x20000004
 8003f24:	20000000 	.word	0x20000000

08003f28 <rcc_get_usart_clk_freq>:
 8003f28:	4b04      	ldr	r3, [pc, #16]	@ (8003f3c <rcc_get_usart_clk_freq+0x14>)
 8003f2a:	f420 6080 	bic.w	r0, r0, #1024	@ 0x400
 8003f2e:	4298      	cmp	r0, r3
 8003f30:	bf0c      	ite	eq
 8003f32:	4b03      	ldreq	r3, [pc, #12]	@ (8003f40 <rcc_get_usart_clk_freq+0x18>)
 8003f34:	4b03      	ldrne	r3, [pc, #12]	@ (8003f44 <rcc_get_usart_clk_freq+0x1c>)
 8003f36:	6818      	ldr	r0, [r3, #0]
 8003f38:	4770      	bx	lr
 8003f3a:	bf00      	nop
 8003f3c:	40011000 	.word	0x40011000
 8003f40:	20000000 	.word	0x20000000
 8003f44:	20000004 	.word	0x20000004

08003f48 <usart_set_baudrate>:
 8003f48:	b538      	push	{r3, r4, r5, lr}
 8003f4a:	460c      	mov	r4, r1
 8003f4c:	4605      	mov	r5, r0
 8003f4e:	f7ff ffeb 	bl	8003f28 <rcc_get_usart_clk_freq>
 8003f52:	eb00 0354 	add.w	r3, r0, r4, lsr #1
 8003f56:	fbb3 f3f4 	udiv	r3, r3, r4
 8003f5a:	60ab      	str	r3, [r5, #8]
 8003f5c:	bd38      	pop	{r3, r4, r5, pc}

08003f5e <usart_set_databits>:
 8003f5e:	68c3      	ldr	r3, [r0, #12]
 8003f60:	2908      	cmp	r1, #8
 8003f62:	bf0c      	ite	eq
 8003f64:	f423 5380 	biceq.w	r3, r3, #4096	@ 0x1000
 8003f68:	f443 5380 	orrne.w	r3, r3, #4096	@ 0x1000
 8003f6c:	60c3      	str	r3, [r0, #12]
 8003f6e:	4770      	bx	lr

08003f70 <usart_set_stopbits>:
 8003f70:	6903      	ldr	r3, [r0, #16]
 8003f72:	f423 5340 	bic.w	r3, r3, #12288	@ 0x3000
 8003f76:	430b      	orrs	r3, r1
 8003f78:	6103      	str	r3, [r0, #16]
 8003f7a:	4770      	bx	lr

08003f7c <usart_set_parity>:
 8003f7c:	68c3      	ldr	r3, [r0, #12]
 8003f7e:	f423 63c0 	bic.w	r3, r3, #1536	@ 0x600
 8003f82:	430b      	orrs	r3, r1
 8003f84:	60c3      	str	r3, [r0, #12]
 8003f86:	4770      	bx	lr

08003f88 <usart_set_mode>:
 8003f88:	68c3      	ldr	r3, [r0, #12]
 8003f8a:	f023 030c 	bic.w	r3, r3, #12
 8003f8e:	430b      	orrs	r3, r1
 8003f90:	60c3      	str	r3, [r0, #12]
 8003f92:	4770      	bx	lr

08003f94 <usart_set_flow_control>:
 8003f94:	6943      	ldr	r3, [r0, #20]
 8003f96:	f423 7340 	bic.w	r3, r3, #768	@ 0x300
 8003f9a:	430b      	orrs	r3, r1
 8003f9c:	6143      	str	r3, [r0, #20]
 8003f9e:	4770      	bx	lr

08003fa0 <usart_enable>:
 8003fa0:	68c3      	ldr	r3, [r0, #12]
 8003fa2:	f443 5300 	orr.w	r3, r3, #8192	@ 0x2000
 8003fa6:	60c3      	str	r3, [r0, #12]
 8003fa8:	4770      	bx	lr

08003faa <usart_send_blocking>:
 8003faa:	b538      	push	{r3, r4, r5, lr}
 8003fac:	4604      	mov	r4, r0
 8003fae:	460d      	mov	r5, r1
 8003fb0:	f000 f82b 	bl	800400a <usart_wait_send_ready>
 8003fb4:	4629      	mov	r1, r5
 8003fb6:	4620      	mov	r0, r4
 8003fb8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8003fbc:	f000 b81d 	b.w	8003ffa <usart_send>

08003fc0 <usart_recv_blocking>:
 8003fc0:	b510      	push	{r4, lr}
 8003fc2:	4604      	mov	r4, r0
 8003fc4:	f000 f825 	bl	8004012 <usart_wait_recv_ready>
 8003fc8:	4620      	mov	r0, r4
 8003fca:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8003fce:	f000 b818 	b.w	8004002 <usart_recv>

08003fd2 <usart_enable_rx_dma>:
 8003fd2:	6943      	ldr	r3, [r0, #20]
 8003fd4:	f043 0340 	orr.w	r3, r3, #64	@ 0x40
 8003fd8:	6143      	str	r3, [r0, #20]
 8003fda:	4770      	bx	lr

08003fdc <usart_disable_rx_dma>:
 8003fdc:	6943      	ldr	r3, [r0, #20]
 8003fde:	f023 0340 	bic.w	r3, r3, #64	@ 0x40
 8003fe2:	6143      	str	r3, [r0, #20]
 8003fe4:	4770      	bx	lr

08003fe6 <usart_enable_tx_dma>:
 8003fe6:	6943      	ldr	r3, [r0, #20]
 8003fe8:	f043 0380 	orr.w	r3, r3, #128	@ 0x80
 8003fec:	6143      	str	r3, [r0, #20]
 8003fee:	4770      	bx	lr

08003ff0 <usart_disable_tx_dma>:
 8003ff0:	6943      	ldr	r3, [r0, #20]
 8003ff2:	f023 0380 	bic.w	r3, r3, #128	@ 0x80
 8003ff6:	6143      	str	r3, [r0, #20]
 8003ff8:	4770      	bx	lr

08003ffa <usart_send>:
 8003ffa:	f3c1 0108 	ubfx	r1, r1, #0, #9
 8003ffe:	6041      	str	r1, [r0, #4]
 8004000:	4770      	bx	lr

08004002 <usart_recv>:
 8004002:	6840      	ldr	r0, [r0, #4]
 8004004:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8004008:	4770      	bx	lr

0800400a <usart_wait_send_ready>:
 800400a:	6803      	ldr	r3, [r0, #0]
 800400c:	061b      	lsls	r3, r3, #24
 800400e:	d5fc      	bpl.n	800400a <usart_wait_send_ready>
 8004010:	4770      	bx	lr

08004012 <usart_wait_recv_ready>:
 8004012:	6803      	ldr	r3, [r0, #0]
 8004014:	069b      	lsls	r3, r3, #26
 8004016:	d5fc      	bpl.n	8004012 <usart_wait_recv_ready>
 8004018:	4770      	bx	lr

0800401a <blocking_handler>:
 800401a:	e7fe      	b.n	800401a <blocking_handler>

0800401c <null_handler>:
 800401c:	4770      	bx	lr
	...

08004020 <reset_handler>:
 8004020:	b538      	push	{r3, r4, r5, lr}
 8004022:	4a1d      	ldr	r2, [pc, #116]	@ (8004098 <reset_handler+0x78>)
 8004024:	4b1d      	ldr	r3, [pc, #116]	@ (800409c <reset_handler+0x7c>)
 8004026:	491e      	ldr	r1, [pc, #120]	@ (80040a0 <reset_handler+0x80>)
 8004028:	428b      	cmp	r3, r1
 800402a:	d320      	bcc.n	800406e <reset_handler+0x4e>
 800402c:	4a1d      	ldr	r2, [pc, #116]	@ (80040a4 <reset_handler+0x84>)
 800402e:	2100      	movs	r1, #0
 8004030:	4293      	cmp	r3, r2
 8004032:	d321      	bcc.n	8004078 <reset_handler+0x58>
 8004034:	f04f 23e0 	mov.w	r3, #3758153728	@ 0xe000e000
 8004038:	4c1b      	ldr	r4, [pc, #108]	@ (80040a8 <reset_handler+0x88>)
 800403a:	f8d3 2d14 	ldr.w	r2, [r3, #3348]	@ 0xd14
 800403e:	4d1b      	ldr	r5, [pc, #108]	@ (80040ac <reset_handler+0x8c>)
 8004040:	f442 7200 	orr.w	r2, r2, #512	@ 0x200
 8004044:	f8c3 2d14 	str.w	r2, [r3, #3348]	@ 0xd14
 8004048:	f8d3 2d88 	ldr.w	r2, [r3, #3464]	@ 0xd88
 800404c:	f442 0270 	orr.w	r2, r2, #15728640	@ 0xf00000
 8004050:	f8c3 2d88 	str.w	r2, [r3, #3464]	@ 0xd88
 8004054:	42ac      	cmp	r4, r5
 8004056:	d312      	bcc.n	800407e <reset_handler+0x5e>
 8004058:	4c15      	ldr	r4, [pc, #84]	@ (80040b0 <reset_handler+0x90>)
 800405a:	4d16      	ldr	r5, [pc, #88]	@ (80040b4 <reset_handler+0x94>)
 800405c:	42ac      	cmp	r4, r5
 800405e:	d312      	bcc.n	8004086 <reset_handler+0x66>
 8004060:	f7fc f8a4 	bl	80001ac <main>
 8004064:	4c14      	ldr	r4, [pc, #80]	@ (80040b8 <reset_handler+0x98>)
 8004066:	4d15      	ldr	r5, [pc, #84]	@ (80040bc <reset_handler+0x9c>)
 8004068:	42ac      	cmp	r4, r5
 800406a:	d310      	bcc.n	800408e <reset_handler+0x6e>
 800406c:	bd38      	pop	{r3, r4, r5, pc}
 800406e:	f852 0b04 	ldr.w	r0, [r2], #4
 8004072:	f843 0b04 	str.w	r0, [r3], #4
 8004076:	e7d7      	b.n	8004028 <reset_handler+0x8>
 8004078:	f843 1b04 	str.w	r1, [r3], #4
 800407c:	e7d8      	b.n	8004030 <reset_handler+0x10>
 800407e:	f854 3b04 	ldr.w	r3, [r4], #4
 8004082:	4798      	blx	r3
 8004084:	e7e6      	b.n	8004054 <reset_handler+0x34>
 8004086:	f854 3b04 	ldr.w	r3, [r4], #4
 800408a:	4798      	blx	r3
 800408c:	e7e6      	b.n	800405c <reset_handler+0x3c>
 800408e:	f854 3b04 	ldr.w	r3, [r4], #4
 8004092:	4798      	blx	r3
 8004094:	e7e8      	b.n	8004068 <reset_handler+0x48>
 8004096:	bf00      	nop
 8004098:	080045f8 	.word	0x080045f8
 800409c:	20000000 	.word	0x20000000
 80040a0:	2000000c 	.word	0x2000000c
 80040a4:	2000000c 	.word	0x2000000c
 80040a8:	080045f0 	.word	0x080045f0
 80040ac:	080045f0 	.word	0x080045f0
 80040b0:	080045f0 	.word	0x080045f0
 80040b4:	080045f0 	.word	0x080045f0
 80040b8:	080045f0 	.word	0x080045f0
 80040bc:	080045f0 	.word	0x080045f0

080040c0 <nvic_enable_irq>:
 80040c0:	4b04      	ldr	r3, [pc, #16]	@ (80040d4 <nvic_enable_irq+0x14>)
 80040c2:	0942      	lsrs	r2, r0, #5
 80040c4:	eb03 0382 	add.w	r3, r3, r2, lsl #2
 80040c8:	f000 001f 	and.w	r0, r0, #31
 80040cc:	2201      	movs	r2, #1
 80040ce:	4082      	lsls	r2, r0
 80040d0:	601a      	str	r2, [r3, #0]
 80040d2:	4770      	bx	lr
 80040d4:	e000e100 	.word	0xe000e100

080040d8 <flash_dcache_enable>:
 80040d8:	4a03      	ldr	r2, [pc, #12]	@ (80040e8 <flash_dcache_enable+0x10>)
 80040da:	f8d2 3c00 	ldr.w	r3, [r2, #3072]	@ 0xc00
 80040de:	f443 6380 	orr.w	r3, r3, #1024	@ 0x400
 80040e2:	f8c2 3c00 	str.w	r3, [r2, #3072]	@ 0xc00
 80040e6:	4770      	bx	lr
 80040e8:	40023000 	.word	0x40023000

080040ec <flash_dcache_disable>:
 80040ec:	4a03      	ldr	r2, [pc, #12]	@ (80040fc <flash_dcache_disable+0x10>)
 80040ee:	f8d2 3c00 	ldr.w	r3, [r2, #3072]	@ 0xc00
 80040f2:	f423 6380 	bic.w	r3, r3, #1024	@ 0x400
 80040f6:	f8c2 3c00 	str.w	r3, [r2, #3072]	@ 0xc00
 80040fa:	4770      	bx	lr
 80040fc:	40023000 	.word	0x40023000

08004100 <flash_icache_enable>:
 8004100:	4a03      	ldr	r2, [pc, #12]	@ (8004110 <flash_icache_enable+0x10>)
 8004102:	f8d2 3c00 	ldr.w	r3, [r2, #3072]	@ 0xc00
 8004106:	f443 7300 	orr.w	r3, r3, #512	@ 0x200
 800410a:	f8c2 3c00 	str.w	r3, [r2, #3072]	@ 0xc00
 800410e:	4770      	bx	lr
 8004110:	40023000 	.word	0x40023000

08004114 <flash_icache_disable>:
 8004114:	4a03      	ldr	r2, [pc, #12]	@ (8004124 <flash_icache_disable+0x10>)
 8004116:	f8d2 3c00 	ldr.w	r3, [r2, #3072]	@ 0xc00
 800411a:	f423 7300 	bic.w	r3, r3, #512	@ 0x200
 800411e:	f8c2 3c00 	str.w	r3, [r2, #3072]	@ 0xc00
 8004122:	4770      	bx	lr
 8004124:	40023000 	.word	0x40023000

08004128 <pwr_set_vos_scale>:
 8004128:	4a02      	ldr	r2, [pc, #8]	@ (8004134 <pwr_set_vos_scale+0xc>)
 800412a:	6813      	ldr	r3, [r2, #0]
 800412c:	f360 338f 	bfi	r3, r0, #14, #2
 8004130:	6013      	str	r3, [r2, #0]
 8004132:	4770      	bx	lr
 8004134:	40007000 	.word	0x40007000
 8004138:	31303030 	.word	0x31303030
 800413c:	46464646 	.word	0x46464646
 8004140:	46464646 	.word	0x46464646
 8004144:	46464646 	.word	0x46464646
 8004148:	46464646 	.word	0x46464646
 800414c:	46464646 	.word	0x46464646
 8004150:	46464646 	.word	0x46464646
 8004154:	46464646 	.word	0x46464646
 8004158:	46464646 	.word	0x46464646
 800415c:	46464646 	.word	0x46464646
 8004160:	46464646 	.word	0x46464646
 8004164:	46464646 	.word	0x46464646
 8004168:	46464646 	.word	0x46464646
 800416c:	46464646 	.word	0x46464646
 8004170:	46464646 	.word	0x46464646
 8004174:	46464646 	.word	0x46464646
 8004178:	46464646 	.word	0x46464646
 800417c:	46464646 	.word	0x46464646
 8004180:	46464646 	.word	0x46464646
 8004184:	46464646 	.word	0x46464646
 8004188:	46464646 	.word	0x46464646
 800418c:	46464646 	.word	0x46464646
 8004190:	46464646 	.word	0x46464646
 8004194:	46464646 	.word	0x46464646
 8004198:	46464646 	.word	0x46464646
 800419c:	46464646 	.word	0x46464646
 80041a0:	46464646 	.word	0x46464646
 80041a4:	46464646 	.word	0x46464646
 80041a8:	46464646 	.word	0x46464646
 80041ac:	46464646 	.word	0x46464646
 80041b0:	46464646 	.word	0x46464646
 80041b4:	46464646 	.word	0x46464646
 80041b8:	46464646 	.word	0x46464646
 80041bc:	46464646 	.word	0x46464646
 80041c0:	46464646 	.word	0x46464646
 80041c4:	46464646 	.word	0x46464646
 80041c8:	46464646 	.word	0x46464646
 80041cc:	46464646 	.word	0x46464646
 80041d0:	46464646 	.word	0x46464646
 80041d4:	46464646 	.word	0x46464646
 80041d8:	46464646 	.word	0x46464646
 80041dc:	46464646 	.word	0x46464646
 80041e0:	46464646 	.word	0x46464646
 80041e4:	46464646 	.word	0x46464646
 80041e8:	46464646 	.word	0x46464646
 80041ec:	46464646 	.word	0x46464646
 80041f0:	30333030 	.word	0x30333030
 80041f4:	30333132 	.word	0x30333132
 80041f8:	36303930 	.word	0x36303930
 80041fc:	42323530 	.word	0x42323530
 8004200:	33304530 	.word	0x33304530
 8004204:	41313230 	.word	0x41313230
 8004208:	30303530 	.word	0x30303530
 800420c:	34313430 	.word	0x34313430
 8004210:	41343941 	.word	0x41343941
 8004214:	35454638 	.word	0x35454638
 8004218:	31424343 	.word	0x31424343
 800421c:	36414239 	.word	0x36414239
 8004220:	43344331 	.word	0x43344331
 8004224:	33373830 	.word	0x33373830
 8004228:	31393344 	.word	0x31393344
 800422c:	37383945 	.word	0x37383945
 8004230:	46323839 	.word	0x46323839
 8004234:	33444242 	.word	0x33444242
 8004238:	00000000 	.word	0x00000000
 800423c:	006b656b 	.word	0x006b656b

08004240 <RSA_SK>:
 8004240:	080043cc 00000400 08004388 00000040     .C.......C..@...
 8004250:	08004348 00000040 08004308 00000040     HC..@....C..@...
 8004260:	080042c8 00000040 08004288 00000040     .B..@....B..@...
 8004270:	080043c8 00000003 00000000 00000000     .C..............
	...

08004288 <RSA_IQ>:
 8004288:	7904ebe8 de79c1a5 0ba149d5 550eb948     ...y..y..I..H..U
 8004298:	ee542c74 c201b0a8 473e3cd2 3dc87c3a     t,T......<>G:|.=
 80042a8:	4d54332e 74412940 0993e1ba 4d1be0ec     .3TM@)At.......M
 80042b8:	4aca2a1f bee65f0b c9c40a59 e1ac82d9     .*.J._..Y.......

080042c8 <RSA_DQ>:
 80042c8:	984bc029 70d313fd 241dae99 fb3a5a83     ).K....p...$.Z:.
 80042d8:	b65fe31f 865cc97d 86c8b4d3 c330e8e9     .._.}.\.......0.
 80042e8:	ad6c4da4 7275b5a4 e994c196 04aad1c4     .Ml...ur........
 80042f8:	201b337c 667cd3eb 8a53f472 cdf9b20a     |3. ..|fr.S.....

08004308 <RSA_DP>:
 8004308:	60be97af 3683ce0f 2ed92d51 c6394122     ...`...6Q-.."A9.
 8004318:	cfa4945c 9cfabd28 dee9d63b 3f24e356     \...(...;...V.$?
 8004328:	ca1431e1 af1b55ba 35dd6d71 a71f1c0c     .1...U..qm.5....
 8004338:	afdb3e2c 7f2ad8a6 b4e8e201 61dbfaf5     ,>....*........a

08004348 <RSA_Q>:
 8004348:	bf920aca f62eb058 48b15066 6c864229     ....X...fP.H)B.l
 8004358:	b87e0698 c4fb4fb5 9136c3f3 e9dbb607     ..~..O....6.....
 8004368:	7d513c56 a90aecb5 d8f9667c 94d2de25     V<Q}....|f..%...
 8004378:	93f1585a 275ff0e4 cac783bd 55b26a48     ZX...._'....Hj.U

08004388 <RSA_P>:
 8004388:	666fe7f2 d403c42e e1cc2489 82013fcd     ..of.....$...?..
 8004398:	44affbc1 aa0eccfa 65a9749d 874cedef     ...D.....t.e..L.
 80043a8:	eac6b3f0 4ede8561 9f5ab266 66c5417a     ....a..Nf.Z.zA.f
 80043b8:	f088df57 7ec7f2b5 962155e6 57abd883     W......~.U!....W

080043c8 <RSA_E>:
 80043c8:	00010001                                ....

080043cc <RSA_N>:
 80043cc:	2ea6b4bf 8d9c3f87 7b2ec4a0 b00f3659     .....?.....{Y6..
 80043dc:	4925e1ff b036e6e5 6b08c248 51c0a777     ..%I..6.H..kw..Q
 80043ec:	a9063566 7f17df59 e5b4f615 3c72ee44     f5..Y.......D.r<
 80043fc:	c9521153 924f61c9 43706433 7f3ff107     S.R..aO.3dpC..?.
 800440c:	c1f0ac15 c0557d54 cc9edc29 72111de4     ....T}U.)......r
 800441c:	70d2f445 1fb234fc f06aadf3 f81156e5     E..p.4....j..V..
 800442c:	048b3a0c d9777c46 be401f41 239d8093     .:..F|w.A.@....#
 800443c:	26128075 dd1c725a 332ab347 e36119d8     u..&Zr..G.*3..a.

0800444c <benchmarkclock>:
 800444c:	00c00008 01000408 00000600 00000400     ................
 800445c:	0a037a00 00b71b00 016e3600              .z.......6n.

08004468 <br_sha224_vtable>:
 8004468:	00000070 53101c03 08001db5 0800216d     p......S....m!..
 8004478:	0800228d 08001e41 08001d9d              ."..A.......

08004484 <br_sha224_IV>:
 8004484:	c1059ed8 367cd507 3070dd17 f70e5939     ......|6..p09Y..
 8004494:	ffc00b31 68581511 64f98fa7 befa4fa4     1.....Xh...d.O..

080044a4 <br_sha256_vtable>:
 80044a4:	00000070 53102004 08001df9 0800216d     p.... .S....m!..
 80044b4:	08002291 08001e41 08001d9d              ."..A.......

080044c0 <br_sha256_IV>:
 80044c0:	6a09e667 bb67ae85 3c6ef372 a54ff53a     g..j..g.r.n<:.O.
 80044d0:	510e527f 9b05688c 1f83d9ab 5be0cd19     .R.Q.h.........[

080044e0 <K>:
 80044e0:	428a2f98 71374491 b5c0fbcf e9b5dba5     ./.B.D7q........
 80044f0:	3956c25b 59f111f1 923f82a4 ab1c5ed5     [.V9...Y..?..^..
 8004500:	d807aa98 12835b01 243185be 550c7dc3     .....[....1$.}.U
 8004510:	72be5d74 80deb1fe 9bdc06a7 c19bf174     t].r........t...
 8004520:	e49b69c1 efbe4786 0fc19dc6 240ca1cc     .i...G.........$
 8004530:	2de92c6f 4a7484aa 5cb0a9dc 76f988da     o,.-..tJ...\...v
 8004540:	983e5152 a831c66d b00327c8 bf597fc7     RQ>.m.1..'....Y.
 8004550:	c6e00bf3 d5a79147 06ca6351 14292967     ....G...Qc..g)).
 8004560:	27b70a85 2e1b2138 4d2c6dfc 53380d13     ...'8!...m,M..8S
 8004570:	650a7354 766a0abb 81c2c92e 92722c85     Ts.e..jv.....,r.
 8004580:	a2bfe8a1 a81a664b c24b8b70 c76c51a3     ....Kf..p.K..Ql.
 8004590:	d192e819 d6990624 f40e3585 106aa070     ....$....5..p.j.
 80045a0:	19a4c116 1e376c08 2748774c 34b0bcb5     .....l7.LwH'...4
 80045b0:	391c0cb3 4ed8aa4a 5b9cca4f 682e6ff3     ...9J..NO..[.o.h
 80045c0:	748f82ee 78a5636f 84c87814 8cc70208     ...toc.x.x......
 80045d0:	90befffa a4506ceb bef9a3f7 c67178f2     .....lP......xq.

080045e0 <br_hmac_drbg_vtable>:
 80045e0:	00000088 08002385 080023c9 08002295     .....#...#..."..
