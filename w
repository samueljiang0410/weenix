
user/bin/sh.exec:     file format elf32-i386


Disassembly of section .text:

08048094 <__tolower>:
 8048094:	55                   	push   %ebp
 8048095:	89 e5                	mov    %esp,%ebp
 8048097:	83 ec 04             	sub    $0x4,%esp
 804809a:	8b 45 08             	mov    0x8(%ebp),%eax
 804809d:	88 45 fc             	mov    %al,-0x4(%ebp)
 80480a0:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
 80480a4:	0f b6 80 20 30 05 08 	movzbl 0x8053020(%eax),%eax
 80480ab:	0f b6 c0             	movzbl %al,%eax
 80480ae:	83 e0 01             	and    $0x1,%eax
 80480b1:	85 c0                	test   %eax,%eax
 80480b3:	74 04                	je     80480b9 <__tolower+0x25>
 80480b5:	80 45 fc 20          	addb   $0x20,-0x4(%ebp)
 80480b9:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
 80480bd:	c9                   	leave  
 80480be:	c3                   	ret    

080480bf <__toupper>:
 80480bf:	55                   	push   %ebp
 80480c0:	89 e5                	mov    %esp,%ebp
 80480c2:	83 ec 04             	sub    $0x4,%esp
 80480c5:	8b 45 08             	mov    0x8(%ebp),%eax
 80480c8:	88 45 fc             	mov    %al,-0x4(%ebp)
 80480cb:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
 80480cf:	0f b6 80 20 30 05 08 	movzbl 0x8053020(%eax),%eax
 80480d6:	0f b6 c0             	movzbl %al,%eax
 80480d9:	83 e0 02             	and    $0x2,%eax
 80480dc:	85 c0                	test   %eax,%eax
 80480de:	74 04                	je     80480e4 <__toupper+0x25>
 80480e0:	80 6d fc 20          	subb   $0x20,-0x4(%ebp)
 80480e4:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
 80480e8:	c9                   	leave  
 80480e9:	c3                   	ret    

080480ea <check_failed>:
 80480ea:	55                   	push   %ebp
 80480eb:	89 e5                	mov    %esp,%ebp
 80480ed:	83 ec 28             	sub    $0x28,%esp
 80480f0:	a1 04 4a 05 08       	mov    0x8054a04,%eax
 80480f5:	89 04 24             	mov    %eax,(%esp)
 80480f8:	e8 e8 40 00 00       	call   804c1e5 <strerror>
 80480fd:	89 c2                	mov    %eax,%edx
 80480ff:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8048104:	89 54 24 10          	mov    %edx,0x10(%esp)
 8048108:	8b 55 0c             	mov    0xc(%ebp),%edx
 804810b:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804810f:	8b 55 08             	mov    0x8(%ebp),%edx
 8048112:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048116:	c7 44 24 04 0b fe 04 	movl   $0x804fe0b,0x4(%esp)
 804811d:	08 
 804811e:	89 04 24             	mov    %eax,(%esp)
 8048121:	e8 b2 65 00 00       	call   804e6d8 <fprintf>
 8048126:	b8 01 00 00 00       	mov    $0x1,%eax
 804812b:	c9                   	leave  
 804812c:	c3                   	ret    

0804812d <check_exists>:
 804812d:	55                   	push   %ebp
 804812e:	89 e5                	mov    %esp,%ebp
 8048130:	83 ec 28             	sub    $0x28,%esp
 8048133:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804813a:	00 
 804813b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048142:	00 
 8048143:	8b 45 08             	mov    0x8(%ebp),%eax
 8048146:	89 04 24             	mov    %eax,(%esp)
 8048149:	e8 22 30 00 00       	call   804b170 <open>
 804814e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048151:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8048155:	78 12                	js     8048169 <check_exists+0x3c>
 8048157:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804815a:	89 04 24             	mov    %eax,(%esp)
 804815d:	e8 65 31 00 00       	call   804b2c7 <close>
 8048162:	b8 01 00 00 00       	mov    $0x1,%eax
 8048167:	eb 05                	jmp    804816e <check_exists+0x41>
 8048169:	b8 00 00 00 00       	mov    $0x0,%eax
 804816e:	c9                   	leave  
 804816f:	c3                   	ret    

08048170 <cmd_chk_priv>:
 8048170:	55                   	push   %ebp
 8048171:	89 e5                	mov    %esp,%ebp
 8048173:	53                   	push   %ebx
 8048174:	81 ec 54 01 00 00    	sub    $0x154,%esp
 804817a:	8b 45 0c             	mov    0xc(%ebp),%eax
 804817d:	8b 00                	mov    (%eax),%eax
 804817f:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8048182:	c7 45 e8 1e fe 04 08 	movl   $0x804fe1e,-0x18(%ebp)
 8048189:	c7 45 e4 28 fe 04 08 	movl   $0x804fe28,-0x1c(%ebp)
 8048190:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8048193:	89 04 24             	mov    %eax,(%esp)
 8048196:	e8 92 ff ff ff       	call   804812d <check_exists>
 804819b:	85 c0                	test   %eax,%eax
 804819d:	74 2d                	je     80481cc <cmd_chk_priv+0x5c>
 804819f:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 80481a4:	8b 55 e8             	mov    -0x18(%ebp),%edx
 80481a7:	89 54 24 0c          	mov    %edx,0xc(%esp)
 80481ab:	8b 55 ec             	mov    -0x14(%ebp),%edx
 80481ae:	89 54 24 08          	mov    %edx,0x8(%esp)
 80481b2:	c7 44 24 04 36 fe 04 	movl   $0x804fe36,0x4(%esp)
 80481b9:	08 
 80481ba:	89 04 24             	mov    %eax,(%esp)
 80481bd:	e8 16 65 00 00       	call   804e6d8 <fprintf>
 80481c2:	b8 01 00 00 00       	mov    $0x1,%eax
 80481c7:	e9 0f 03 00 00       	jmp    80484db <cmd_chk_priv+0x36b>
 80481cc:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80481d3:	00 
 80481d4:	c7 44 24 04 02 01 00 	movl   $0x102,0x4(%esp)
 80481db:	00 
 80481dc:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80481df:	89 04 24             	mov    %eax,(%esp)
 80481e2:	e8 89 2f 00 00       	call   804b170 <open>
 80481e7:	89 45 e0             	mov    %eax,-0x20(%ebp)
 80481ea:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 80481ee:	79 18                	jns    8048208 <cmd_chk_priv+0x98>
 80481f0:	c7 44 24 04 4b fe 04 	movl   $0x804fe4b,0x4(%esp)
 80481f7:	08 
 80481f8:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80481fb:	89 04 24             	mov    %eax,(%esp)
 80481fe:	e8 e7 fe ff ff       	call   80480ea <check_failed>
 8048203:	e9 d3 02 00 00       	jmp    80484db <cmd_chk_priv+0x36b>
 8048208:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804820b:	89 04 24             	mov    %eax,(%esp)
 804820e:	e8 44 3d 00 00       	call   804bf57 <strlen>
 8048213:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048217:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804821a:	89 44 24 04          	mov    %eax,0x4(%esp)
 804821e:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8048221:	89 04 24             	mov    %eax,(%esp)
 8048224:	e8 4d 30 00 00       	call   804b276 <write>
 8048229:	89 c3                	mov    %eax,%ebx
 804822b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804822e:	89 04 24             	mov    %eax,(%esp)
 8048231:	e8 21 3d 00 00       	call   804bf57 <strlen>
 8048236:	39 c3                	cmp    %eax,%ebx
 8048238:	74 1b                	je     8048255 <cmd_chk_priv+0xe5>
 804823a:	c7 44 24 04 50 fe 04 	movl   $0x804fe50,0x4(%esp)
 8048241:	08 
 8048242:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048245:	89 04 24             	mov    %eax,(%esp)
 8048248:	e8 9d fe ff ff       	call   80480ea <check_failed>
 804824d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048250:	e9 39 02 00 00       	jmp    804848e <cmd_chk_priv+0x31e>
 8048255:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048258:	89 04 24             	mov    %eax,(%esp)
 804825b:	e8 f7 3c 00 00       	call   804bf57 <strlen>
 8048260:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8048263:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 804826a:	00 
 804826b:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804826e:	89 44 24 10          	mov    %eax,0x10(%esp)
 8048272:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
 8048279:	00 
 804827a:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%esp)
 8048281:	00 
 8048282:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8048285:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048289:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048290:	e8 ef 2d 00 00       	call   804b084 <mmap>
 8048295:	89 45 d8             	mov    %eax,-0x28(%ebp)
 8048298:	83 7d d8 ff          	cmpl   $0xffffffff,-0x28(%ebp)
 804829c:	75 1b                	jne    80482b9 <cmd_chk_priv+0x149>
 804829e:	c7 44 24 04 56 fe 04 	movl   $0x804fe56,0x4(%esp)
 80482a5:	08 
 80482a6:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80482a9:	89 04 24             	mov    %eax,(%esp)
 80482ac:	e8 39 fe ff ff       	call   80480ea <check_failed>
 80482b1:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80482b4:	e9 d5 01 00 00       	jmp    804848e <cmd_chk_priv+0x31e>
 80482b9:	8b 45 d8             	mov    -0x28(%ebp),%eax
 80482bc:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 80482bf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80482c2:	89 04 24             	mov    %eax,(%esp)
 80482c5:	e8 8d 3c 00 00       	call   804bf57 <strlen>
 80482ca:	89 44 24 08          	mov    %eax,0x8(%esp)
 80482ce:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80482d1:	89 44 24 04          	mov    %eax,0x4(%esp)
 80482d5:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 80482d8:	89 04 24             	mov    %eax,(%esp)
 80482db:	e8 a4 3a 00 00       	call   804bd84 <strncmp>
 80482e0:	85 c0                	test   %eax,%eax
 80482e2:	74 28                	je     804830c <cmd_chk_priv+0x19c>
 80482e4:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 80482e9:	8b 55 ec             	mov    -0x14(%ebp),%edx
 80482ec:	89 54 24 08          	mov    %edx,0x8(%esp)
 80482f0:	c7 44 24 04 5b fe 04 	movl   $0x804fe5b,0x4(%esp)
 80482f7:	08 
 80482f8:	89 04 24             	mov    %eax,(%esp)
 80482fb:	e8 d8 63 00 00       	call   804e6d8 <fprintf>
 8048300:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 8048307:	e9 56 01 00 00       	jmp    8048462 <cmd_chk_priv+0x2f2>
 804830c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804830f:	89 04 24             	mov    %eax,(%esp)
 8048312:	e8 40 3c 00 00       	call   804bf57 <strlen>
 8048317:	89 44 24 08          	mov    %eax,0x8(%esp)
 804831b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048322:	00 
 8048323:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8048326:	89 04 24             	mov    %eax,(%esp)
 8048329:	e8 6a 3b 00 00       	call   804be98 <memset>
 804832e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8048335:	eb 3a                	jmp    8048371 <cmd_chk_priv+0x201>
 8048337:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 804833a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804833d:	01 d0                	add    %edx,%eax
 804833f:	0f b6 00             	movzbl (%eax),%eax
 8048342:	84 c0                	test   %al,%al
 8048344:	74 28                	je     804836e <cmd_chk_priv+0x1fe>
 8048346:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804834b:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804834e:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048352:	c7 44 24 04 79 fe 04 	movl   $0x804fe79,0x4(%esp)
 8048359:	08 
 804835a:	89 04 24             	mov    %eax,(%esp)
 804835d:	e8 76 63 00 00       	call   804e6d8 <fprintf>
 8048362:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 8048369:	e9 f4 00 00 00       	jmp    8048462 <cmd_chk_priv+0x2f2>
 804836e:	ff 45 f0             	incl   -0x10(%ebp)
 8048371:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048374:	3b 45 dc             	cmp    -0x24(%ebp),%eax
 8048377:	72 be                	jb     8048337 <cmd_chk_priv+0x1c7>
 8048379:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8048380:	00 
 8048381:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048388:	00 
 8048389:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804838c:	89 04 24             	mov    %eax,(%esp)
 804838f:	e8 40 2e 00 00       	call   804b1d4 <lseek>
 8048394:	85 c0                	test   %eax,%eax
 8048396:	74 1b                	je     80483b3 <cmd_chk_priv+0x243>
 8048398:	c7 44 24 04 96 fe 04 	movl   $0x804fe96,0x4(%esp)
 804839f:	08 
 80483a0:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80483a3:	89 04 24             	mov    %eax,(%esp)
 80483a6:	e8 3f fd ff ff       	call   80480ea <check_failed>
 80483ab:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80483ae:	e9 af 00 00 00       	jmp    8048462 <cmd_chk_priv+0x2f2>
 80483b3:	c7 44 24 08 00 01 00 	movl   $0x100,0x8(%esp)
 80483ba:	00 
 80483bb:	8d 85 d4 fe ff ff    	lea    -0x12c(%ebp),%eax
 80483c1:	89 44 24 04          	mov    %eax,0x4(%esp)
 80483c5:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80483c8:	89 04 24             	mov    %eax,(%esp)
 80483cb:	e8 55 2e 00 00       	call   804b225 <read>
 80483d0:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80483d3:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80483d6:	3b 45 dc             	cmp    -0x24(%ebp),%eax
 80483d9:	74 33                	je     804840e <cmd_chk_priv+0x29e>
 80483db:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 80483e0:	8b 55 dc             	mov    -0x24(%ebp),%edx
 80483e3:	89 54 24 10          	mov    %edx,0x10(%esp)
 80483e7:	8b 55 f0             	mov    -0x10(%ebp),%edx
 80483ea:	89 54 24 0c          	mov    %edx,0xc(%esp)
 80483ee:	8b 55 ec             	mov    -0x14(%ebp),%edx
 80483f1:	89 54 24 08          	mov    %edx,0x8(%esp)
 80483f5:	c7 44 24 04 9c fe 04 	movl   $0x804fe9c,0x4(%esp)
 80483fc:	08 
 80483fd:	89 04 24             	mov    %eax,(%esp)
 8048400:	e8 d3 62 00 00       	call   804e6d8 <fprintf>
 8048405:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 804840c:	eb 54                	jmp    8048462 <cmd_chk_priv+0x2f2>
 804840e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048411:	89 04 24             	mov    %eax,(%esp)
 8048414:	e8 3e 3b 00 00       	call   804bf57 <strlen>
 8048419:	89 44 24 08          	mov    %eax,0x8(%esp)
 804841d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048420:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048424:	8d 85 d4 fe ff ff    	lea    -0x12c(%ebp),%eax
 804842a:	89 04 24             	mov    %eax,(%esp)
 804842d:	e8 52 39 00 00       	call   804bd84 <strncmp>
 8048432:	85 c0                	test   %eax,%eax
 8048434:	74 25                	je     804845b <cmd_chk_priv+0x2eb>
 8048436:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804843b:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804843e:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048442:	c7 44 24 04 c4 fe 04 	movl   $0x804fec4,0x4(%esp)
 8048449:	08 
 804844a:	89 04 24             	mov    %eax,(%esp)
 804844d:	e8 86 62 00 00       	call   804e6d8 <fprintf>
 8048452:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 8048459:	eb 07                	jmp    8048462 <cmd_chk_priv+0x2f2>
 804845b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048462:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8048465:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048469:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804846c:	89 04 24             	mov    %eax,(%esp)
 804846f:	e8 73 2c 00 00       	call   804b0e7 <munmap>
 8048474:	85 c0                	test   %eax,%eax
 8048476:	79 16                	jns    804848e <cmd_chk_priv+0x31e>
 8048478:	c7 44 24 04 eb fe 04 	movl   $0x804feeb,0x4(%esp)
 804847f:	08 
 8048480:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048483:	89 04 24             	mov    %eax,(%esp)
 8048486:	e8 5f fc ff ff       	call   80480ea <check_failed>
 804848b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804848e:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8048491:	89 04 24             	mov    %eax,(%esp)
 8048494:	e8 2e 2e 00 00       	call   804b2c7 <close>
 8048499:	85 c0                	test   %eax,%eax
 804849b:	79 16                	jns    80484b3 <cmd_chk_priv+0x343>
 804849d:	c7 44 24 04 f2 fe 04 	movl   $0x804fef2,0x4(%esp)
 80484a4:	08 
 80484a5:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80484a8:	89 04 24             	mov    %eax,(%esp)
 80484ab:	e8 3a fc ff ff       	call   80480ea <check_failed>
 80484b0:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80484b3:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80484b6:	89 04 24             	mov    %eax,(%esp)
 80484b9:	e8 8a 2f 00 00       	call   804b448 <unlink>
 80484be:	85 c0                	test   %eax,%eax
 80484c0:	79 16                	jns    80484d8 <cmd_chk_priv+0x368>
 80484c2:	c7 44 24 04 68 fd 04 	movl   $0x804fd68,0x4(%esp)
 80484c9:	08 
 80484ca:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80484cd:	89 04 24             	mov    %eax,(%esp)
 80484d0:	e8 15 fc ff ff       	call   80480ea <check_failed>
 80484d5:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80484d8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80484db:	81 c4 54 01 00 00    	add    $0x154,%esp
 80484e1:	5b                   	pop    %ebx
 80484e2:	5d                   	pop    %ebp
 80484e3:	c3                   	ret    

080484e4 <cmd_chk_null>:
 80484e4:	55                   	push   %ebp
 80484e5:	89 e5                	mov    %esp,%ebp
 80484e7:	81 ec 38 01 00 00    	sub    $0x138,%esp
 80484ed:	8b 45 0c             	mov    0xc(%ebp),%eax
 80484f0:	8b 00                	mov    (%eax),%eax
 80484f2:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80484f5:	c7 45 ec f8 fe 04 08 	movl   $0x804fef8,-0x14(%ebp)
 80484fc:	c7 44 24 08 80 01 00 	movl   $0x180,0x8(%esp)
 8048503:	00 
 8048504:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
 804850b:	00 
 804850c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804850f:	89 04 24             	mov    %eax,(%esp)
 8048512:	e8 59 2c 00 00       	call   804b170 <open>
 8048517:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804851a:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804851e:	79 18                	jns    8048538 <cmd_chk_null+0x54>
 8048520:	c7 44 24 04 4b fe 04 	movl   $0x804fe4b,0x4(%esp)
 8048527:	08 
 8048528:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804852b:	89 04 24             	mov    %eax,(%esp)
 804852e:	e8 b7 fb ff ff       	call   80480ea <check_failed>
 8048533:	e9 cc 00 00 00       	jmp    8048604 <cmd_chk_null+0x120>
 8048538:	c7 44 24 08 00 01 00 	movl   $0x100,0x8(%esp)
 804853f:	00 
 8048540:	c7 44 24 04 cc 00 00 	movl   $0xcc,0x4(%esp)
 8048547:	00 
 8048548:	8d 85 e4 fe ff ff    	lea    -0x11c(%ebp),%eax
 804854e:	89 04 24             	mov    %eax,(%esp)
 8048551:	e8 42 39 00 00       	call   804be98 <memset>
 8048556:	c7 44 24 08 00 01 00 	movl   $0x100,0x8(%esp)
 804855d:	00 
 804855e:	8d 85 e4 fe ff ff    	lea    -0x11c(%ebp),%eax
 8048564:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048568:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804856b:	89 04 24             	mov    %eax,(%esp)
 804856e:	e8 03 2d 00 00       	call   804b276 <write>
 8048573:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8048576:	81 7d e4 00 01 00 00 	cmpl   $0x100,-0x1c(%ebp)
 804857d:	74 18                	je     8048597 <cmd_chk_null+0xb3>
 804857f:	c7 44 24 04 50 fe 04 	movl   $0x804fe50,0x4(%esp)
 8048586:	08 
 8048587:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804858a:	89 04 24             	mov    %eax,(%esp)
 804858d:	e8 58 fb ff ff       	call   80480ea <check_failed>
 8048592:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048595:	eb 45                	jmp    80485dc <cmd_chk_null+0xf8>
 8048597:	c7 44 24 08 00 01 00 	movl   $0x100,0x8(%esp)
 804859e:	00 
 804859f:	8d 85 e4 fe ff ff    	lea    -0x11c(%ebp),%eax
 80485a5:	89 44 24 04          	mov    %eax,0x4(%esp)
 80485a9:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80485ac:	89 04 24             	mov    %eax,(%esp)
 80485af:	e8 71 2c 00 00       	call   804b225 <read>
 80485b4:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 80485b7:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 80485bb:	74 18                	je     80485d5 <cmd_chk_null+0xf1>
 80485bd:	c7 44 24 04 02 ff 04 	movl   $0x804ff02,0x4(%esp)
 80485c4:	08 
 80485c5:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80485c8:	89 04 24             	mov    %eax,(%esp)
 80485cb:	e8 1a fb ff ff       	call   80480ea <check_failed>
 80485d0:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80485d3:	eb 07                	jmp    80485dc <cmd_chk_null+0xf8>
 80485d5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 80485dc:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80485df:	89 04 24             	mov    %eax,(%esp)
 80485e2:	e8 e0 2c 00 00       	call   804b2c7 <close>
 80485e7:	85 c0                	test   %eax,%eax
 80485e9:	79 16                	jns    8048601 <cmd_chk_null+0x11d>
 80485eb:	c7 44 24 04 f2 fe 04 	movl   $0x804fef2,0x4(%esp)
 80485f2:	08 
 80485f3:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80485f6:	89 04 24             	mov    %eax,(%esp)
 80485f9:	e8 ec fa ff ff       	call   80480ea <check_failed>
 80485fe:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048601:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048604:	c9                   	leave  
 8048605:	c3                   	ret    

08048606 <cmd_chk_zero>:
 8048606:	55                   	push   %ebp
 8048607:	89 e5                	mov    %esp,%ebp
 8048609:	81 ec 58 01 00 00    	sub    $0x158,%esp
 804860f:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048612:	8b 00                	mov    (%eax),%eax
 8048614:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8048617:	c7 45 e0 07 ff 04 08 	movl   $0x804ff07,-0x20(%ebp)
 804861e:	c7 44 24 08 80 01 00 	movl   $0x180,0x8(%esp)
 8048625:	00 
 8048626:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
 804862d:	00 
 804862e:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8048631:	89 04 24             	mov    %eax,(%esp)
 8048634:	e8 37 2b 00 00       	call   804b170 <open>
 8048639:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804863c:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
 8048640:	79 18                	jns    804865a <cmd_chk_zero+0x54>
 8048642:	c7 44 24 04 4b fe 04 	movl   $0x804fe4b,0x4(%esp)
 8048649:	08 
 804864a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804864d:	89 04 24             	mov    %eax,(%esp)
 8048650:	e8 95 fa ff ff       	call   80480ea <check_failed>
 8048655:	e9 0a 02 00 00       	jmp    8048864 <cmd_chk_zero+0x25e>
 804865a:	c7 44 24 08 00 01 00 	movl   $0x100,0x8(%esp)
 8048661:	00 
 8048662:	c7 44 24 04 cc 00 00 	movl   $0xcc,0x4(%esp)
 8048669:	00 
 804866a:	8d 85 d0 fe ff ff    	lea    -0x130(%ebp),%eax
 8048670:	89 04 24             	mov    %eax,(%esp)
 8048673:	e8 20 38 00 00       	call   804be98 <memset>
 8048678:	c7 44 24 08 00 01 00 	movl   $0x100,0x8(%esp)
 804867f:	00 
 8048680:	8d 85 d0 fe ff ff    	lea    -0x130(%ebp),%eax
 8048686:	89 44 24 04          	mov    %eax,0x4(%esp)
 804868a:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804868d:	89 04 24             	mov    %eax,(%esp)
 8048690:	e8 90 2b 00 00       	call   804b225 <read>
 8048695:	89 45 d8             	mov    %eax,-0x28(%ebp)
 8048698:	81 7d d8 00 01 00 00 	cmpl   $0x100,-0x28(%ebp)
 804869f:	74 1b                	je     80486bc <cmd_chk_zero+0xb6>
 80486a1:	c7 44 24 04 02 ff 04 	movl   $0x804ff02,0x4(%esp)
 80486a8:	08 
 80486a9:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80486ac:	89 04 24             	mov    %eax,(%esp)
 80486af:	e8 36 fa ff ff       	call   80480ea <check_failed>
 80486b4:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80486b7:	e9 80 01 00 00       	jmp    804883c <cmd_chk_zero+0x236>
 80486bc:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80486c3:	eb 30                	jmp    80486f5 <cmd_chk_zero+0xef>
 80486c5:	8d 95 d0 fe ff ff    	lea    -0x130(%ebp),%edx
 80486cb:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80486ce:	01 d0                	add    %edx,%eax
 80486d0:	0f b6 00             	movzbl (%eax),%eax
 80486d3:	84 c0                	test   %al,%al
 80486d5:	74 1b                	je     80486f2 <cmd_chk_zero+0xec>
 80486d7:	c7 44 24 04 11 ff 04 	movl   $0x804ff11,0x4(%esp)
 80486de:	08 
 80486df:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80486e2:	89 04 24             	mov    %eax,(%esp)
 80486e5:	e8 00 fa ff ff       	call   80480ea <check_failed>
 80486ea:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80486ed:	e9 4a 01 00 00       	jmp    804883c <cmd_chk_zero+0x236>
 80486f2:	ff 45 f0             	incl   -0x10(%ebp)
 80486f5:	81 7d f0 ff 00 00 00 	cmpl   $0xff,-0x10(%ebp)
 80486fc:	76 c7                	jbe    80486c5 <cmd_chk_zero+0xbf>
 80486fe:	c7 45 d4 00 a0 00 00 	movl   $0xa000,-0x2c(%ebp)
 8048705:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 804870c:	00 
 804870d:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8048710:	89 44 24 10          	mov    %eax,0x10(%esp)
 8048714:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
 804871b:	00 
 804871c:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%esp)
 8048723:	00 
 8048724:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8048727:	89 44 24 04          	mov    %eax,0x4(%esp)
 804872b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048732:	e8 4d 29 00 00       	call   804b084 <mmap>
 8048737:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804873a:	83 7d d0 ff          	cmpl   $0xffffffff,-0x30(%ebp)
 804873e:	75 1b                	jne    804875b <cmd_chk_zero+0x155>
 8048740:	c7 44 24 04 56 fe 04 	movl   $0x804fe56,0x4(%esp)
 8048747:	08 
 8048748:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804874b:	89 04 24             	mov    %eax,(%esp)
 804874e:	e8 97 f9 ff ff       	call   80480ea <check_failed>
 8048753:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048756:	e9 e1 00 00 00       	jmp    804883c <cmd_chk_zero+0x236>
 804875b:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804875e:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8048761:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8048768:	eb 2b                	jmp    8048795 <cmd_chk_zero+0x18f>
 804876a:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804876d:	0f b6 00             	movzbl (%eax),%eax
 8048770:	84 c0                	test   %al,%al
 8048772:	74 1b                	je     804878f <cmd_chk_zero+0x189>
 8048774:	c7 44 24 04 1d ff 04 	movl   $0x804ff1d,0x4(%esp)
 804877b:	08 
 804877c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804877f:	89 04 24             	mov    %eax,(%esp)
 8048782:	e8 63 f9 ff ff       	call   80480ea <check_failed>
 8048787:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804878a:	e9 81 00 00 00       	jmp    8048810 <cmd_chk_zero+0x20a>
 804878f:	ff 45 f0             	incl   -0x10(%ebp)
 8048792:	ff 45 e8             	incl   -0x18(%ebp)
 8048795:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048798:	3b 45 d4             	cmp    -0x2c(%ebp),%eax
 804879b:	72 cd                	jb     804876a <cmd_chk_zero+0x164>
 804879d:	8b 45 d0             	mov    -0x30(%ebp),%eax
 80487a0:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80487a3:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80487aa:	eb 0f                	jmp    80487bb <cmd_chk_zero+0x1b5>
 80487ac:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80487af:	8b 55 f0             	mov    -0x10(%ebp),%edx
 80487b2:	89 10                	mov    %edx,(%eax)
 80487b4:	ff 45 f0             	incl   -0x10(%ebp)
 80487b7:	83 45 ec 04          	addl   $0x4,-0x14(%ebp)
 80487bb:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 80487be:	c1 e8 02             	shr    $0x2,%eax
 80487c1:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 80487c4:	77 e6                	ja     80487ac <cmd_chk_zero+0x1a6>
 80487c6:	8b 45 d0             	mov    -0x30(%ebp),%eax
 80487c9:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80487cc:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80487d3:	eb 29                	jmp    80487fe <cmd_chk_zero+0x1f8>
 80487d5:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80487d8:	8b 00                	mov    (%eax),%eax
 80487da:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 80487dd:	74 18                	je     80487f7 <cmd_chk_zero+0x1f1>
 80487df:	c7 44 24 04 2f ff 04 	movl   $0x804ff2f,0x4(%esp)
 80487e6:	08 
 80487e7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80487ea:	89 04 24             	mov    %eax,(%esp)
 80487ed:	e8 f8 f8 ff ff       	call   80480ea <check_failed>
 80487f2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80487f5:	eb 19                	jmp    8048810 <cmd_chk_zero+0x20a>
 80487f7:	ff 45 f0             	incl   -0x10(%ebp)
 80487fa:	83 45 ec 04          	addl   $0x4,-0x14(%ebp)
 80487fe:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8048801:	c1 e8 02             	shr    $0x2,%eax
 8048804:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 8048807:	77 cc                	ja     80487d5 <cmd_chk_zero+0x1cf>
 8048809:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048810:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8048813:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048817:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804881a:	89 04 24             	mov    %eax,(%esp)
 804881d:	e8 c5 28 00 00       	call   804b0e7 <munmap>
 8048822:	85 c0                	test   %eax,%eax
 8048824:	79 16                	jns    804883c <cmd_chk_zero+0x236>
 8048826:	c7 44 24 04 eb fe 04 	movl   $0x804feeb,0x4(%esp)
 804882d:	08 
 804882e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048831:	89 04 24             	mov    %eax,(%esp)
 8048834:	e8 b1 f8 ff ff       	call   80480ea <check_failed>
 8048839:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804883c:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804883f:	89 04 24             	mov    %eax,(%esp)
 8048842:	e8 80 2a 00 00       	call   804b2c7 <close>
 8048847:	85 c0                	test   %eax,%eax
 8048849:	79 16                	jns    8048861 <cmd_chk_zero+0x25b>
 804884b:	c7 44 24 04 f2 fe 04 	movl   $0x804fef2,0x4(%esp)
 8048852:	08 
 8048853:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048856:	89 04 24             	mov    %eax,(%esp)
 8048859:	e8 8c f8 ff ff       	call   80480ea <check_failed>
 804885e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048861:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048864:	c9                   	leave  
 8048865:	c3                   	ret    

08048866 <cmd_chk_malloc>:
 8048866:	55                   	push   %ebp
 8048867:	89 e5                	mov    %esp,%ebp
 8048869:	83 ec 38             	sub    $0x38,%esp
 804886c:	8b 45 0c             	mov    0xc(%ebp),%eax
 804886f:	8b 00                	mov    (%eax),%eax
 8048871:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8048874:	c7 45 e4 80 20 00 00 	movl   $0x2080,-0x1c(%ebp)
 804887b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804887e:	89 04 24             	mov    %eax,(%esp)
 8048881:	e8 95 5b 00 00       	call   804e41b <malloc>
 8048886:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8048889:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 804888d:	75 18                	jne    80488a7 <cmd_chk_malloc+0x41>
 804888f:	c7 44 24 04 e9 fd 04 	movl   $0x804fde9,0x4(%esp)
 8048896:	08 
 8048897:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804889a:	89 04 24             	mov    %eax,(%esp)
 804889d:	e8 48 f8 ff ff       	call   80480ea <check_failed>
 80488a2:	e9 9b 00 00 00       	jmp    8048942 <cmd_chk_malloc+0xdc>
 80488a7:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80488aa:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80488ad:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80488b4:	eb 11                	jmp    80488c7 <cmd_chk_malloc+0x61>
 80488b6:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80488b9:	8d 50 04             	lea    0x4(%eax),%edx
 80488bc:	89 55 f4             	mov    %edx,-0xc(%ebp)
 80488bf:	8b 55 f0             	mov    -0x10(%ebp),%edx
 80488c2:	89 10                	mov    %edx,(%eax)
 80488c4:	ff 45 f0             	incl   -0x10(%ebp)
 80488c7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80488ca:	c1 e8 02             	shr    $0x2,%eax
 80488cd:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 80488d0:	77 e4                	ja     80488b6 <cmd_chk_malloc+0x50>
 80488d2:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80488d5:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80488d8:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80488df:	eb 41                	jmp    8048922 <cmd_chk_malloc+0xbc>
 80488e1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80488e4:	8d 50 04             	lea    0x4(%eax),%edx
 80488e7:	89 55 f4             	mov    %edx,-0xc(%ebp)
 80488ea:	8b 10                	mov    (%eax),%edx
 80488ec:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80488ef:	39 c2                	cmp    %eax,%edx
 80488f1:	74 2c                	je     804891f <cmd_chk_malloc+0xb9>
 80488f3:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80488f6:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 80488fb:	89 54 24 0c          	mov    %edx,0xc(%esp)
 80488ff:	8b 55 e8             	mov    -0x18(%ebp),%edx
 8048902:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048906:	c7 44 24 04 40 ff 04 	movl   $0x804ff40,0x4(%esp)
 804890d:	08 
 804890e:	89 04 24             	mov    %eax,(%esp)
 8048911:	e8 c2 5d 00 00       	call   804e6d8 <fprintf>
 8048916:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
 804891d:	eb 15                	jmp    8048934 <cmd_chk_malloc+0xce>
 804891f:	ff 45 f0             	incl   -0x10(%ebp)
 8048922:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048925:	c1 e8 02             	shr    $0x2,%eax
 8048928:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 804892b:	77 b4                	ja     80488e1 <cmd_chk_malloc+0x7b>
 804892d:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 8048934:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8048937:	89 04 24             	mov    %eax,(%esp)
 804893a:	e8 95 5b 00 00       	call   804e4d4 <free>
 804893f:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048942:	c9                   	leave  
 8048943:	c3                   	ret    

08048944 <cmd_chk_sbrk>:
 8048944:	55                   	push   %ebp
 8048945:	89 e5                	mov    %esp,%ebp
 8048947:	83 ec 38             	sub    $0x38,%esp
 804894a:	c7 45 ec ff ff ff ff 	movl   $0xffffffff,-0x14(%ebp)
 8048951:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048954:	8b 00                	mov    (%eax),%eax
 8048956:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8048959:	c7 45 e4 80 a0 00 00 	movl   $0xa080,-0x1c(%ebp)
 8048960:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048963:	89 04 24             	mov    %eax,(%esp)
 8048966:	e8 38 23 00 00       	call   804aca3 <sbrk>
 804896b:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804896e:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8048971:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 8048974:	75 18                	jne    804898e <cmd_chk_sbrk+0x4a>
 8048976:	c7 44 24 04 5c ff 04 	movl   $0x804ff5c,0x4(%esp)
 804897d:	08 
 804897e:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8048981:	89 04 24             	mov    %eax,(%esp)
 8048984:	e8 61 f7 ff ff       	call   80480ea <check_failed>
 8048989:	e9 e8 00 00 00       	jmp    8048a76 <cmd_chk_sbrk+0x132>
 804898e:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8048991:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048994:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804899b:	eb 11                	jmp    80489ae <cmd_chk_sbrk+0x6a>
 804899d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80489a0:	8d 50 04             	lea    0x4(%eax),%edx
 80489a3:	89 55 f4             	mov    %edx,-0xc(%ebp)
 80489a6:	8b 55 f0             	mov    -0x10(%ebp),%edx
 80489a9:	89 10                	mov    %edx,(%eax)
 80489ab:	ff 45 f0             	incl   -0x10(%ebp)
 80489ae:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80489b1:	c1 e8 02             	shr    $0x2,%eax
 80489b4:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 80489b7:	77 e4                	ja     804899d <cmd_chk_sbrk+0x59>
 80489b9:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80489bc:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80489bf:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80489c6:	eb 3f                	jmp    8048a07 <cmd_chk_sbrk+0xc3>
 80489c8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80489cb:	8d 50 04             	lea    0x4(%eax),%edx
 80489ce:	89 55 f4             	mov    %edx,-0xc(%ebp)
 80489d1:	8b 10                	mov    (%eax),%edx
 80489d3:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80489d6:	39 c2                	cmp    %eax,%edx
 80489d8:	74 2a                	je     8048a04 <cmd_chk_sbrk+0xc0>
 80489da:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80489dd:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 80489e2:	89 54 24 0c          	mov    %edx,0xc(%esp)
 80489e6:	8b 55 e8             	mov    -0x18(%ebp),%edx
 80489e9:	89 54 24 08          	mov    %edx,0x8(%esp)
 80489ed:	c7 44 24 04 40 ff 04 	movl   $0x804ff40,0x4(%esp)
 80489f4:	08 
 80489f5:	89 04 24             	mov    %eax,(%esp)
 80489f8:	e8 db 5c 00 00       	call   804e6d8 <fprintf>
 80489fd:	b8 01 00 00 00       	mov    $0x1,%eax
 8048a02:	eb 72                	jmp    8048a76 <cmd_chk_sbrk+0x132>
 8048a04:	ff 45 f0             	incl   -0x10(%ebp)
 8048a07:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048a0a:	c1 e8 02             	shr    $0x2,%eax
 8048a0d:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 8048a10:	77 b6                	ja     80489c8 <cmd_chk_sbrk+0x84>
 8048a12:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048a15:	f7 d8                	neg    %eax
 8048a17:	89 04 24             	mov    %eax,(%esp)
 8048a1a:	e8 84 22 00 00       	call   804aca3 <sbrk>
 8048a1f:	89 45 dc             	mov    %eax,-0x24(%ebp)
 8048a22:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8048a25:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 8048a28:	75 15                	jne    8048a3f <cmd_chk_sbrk+0xfb>
 8048a2a:	c7 44 24 04 67 ff 04 	movl   $0x804ff67,0x4(%esp)
 8048a31:	08 
 8048a32:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8048a35:	89 04 24             	mov    %eax,(%esp)
 8048a38:	e8 ad f6 ff ff       	call   80480ea <check_failed>
 8048a3d:	eb 37                	jmp    8048a76 <cmd_chk_sbrk+0x132>
 8048a3f:	8b 55 e0             	mov    -0x20(%ebp),%edx
 8048a42:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048a45:	01 c2                	add    %eax,%edx
 8048a47:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8048a4a:	39 c2                	cmp    %eax,%edx
 8048a4c:	76 23                	jbe    8048a71 <cmd_chk_sbrk+0x12d>
 8048a4e:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8048a53:	8b 55 e8             	mov    -0x18(%ebp),%edx
 8048a56:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048a5a:	c7 44 24 04 74 ff 04 	movl   $0x804ff74,0x4(%esp)
 8048a61:	08 
 8048a62:	89 04 24             	mov    %eax,(%esp)
 8048a65:	e8 6e 5c 00 00       	call   804e6d8 <fprintf>
 8048a6a:	b8 01 00 00 00       	mov    $0x1,%eax
 8048a6f:	eb 05                	jmp    8048a76 <cmd_chk_sbrk+0x132>
 8048a71:	b8 00 00 00 00       	mov    $0x0,%eax
 8048a76:	c9                   	leave  
 8048a77:	c3                   	ret    

08048a78 <cmd_chk_wrnoent>:
 8048a78:	55                   	push   %ebp
 8048a79:	89 e5                	mov    %esp,%ebp
 8048a7b:	81 ec 38 01 00 00    	sub    $0x138,%esp
 8048a81:	c7 45 f0 96 ff 04 08 	movl   $0x804ff96,-0x10(%ebp)
 8048a88:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048a8b:	8b 00                	mov    (%eax),%eax
 8048a8d:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8048a90:	c7 45 e8 a7 ff 04 08 	movl   $0x804ffa7,-0x18(%ebp)
 8048a97:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048a9a:	89 04 24             	mov    %eax,(%esp)
 8048a9d:	e8 8b f6 ff ff       	call   804812d <check_exists>
 8048aa2:	85 c0                	test   %eax,%eax
 8048aa4:	74 26                	je     8048acc <cmd_chk_wrnoent+0x54>
 8048aa6:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8048aab:	8b 55 ec             	mov    -0x14(%ebp),%edx
 8048aae:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048ab2:	c7 44 24 04 b4 ff 04 	movl   $0x804ffb4,0x4(%esp)
 8048ab9:	08 
 8048aba:	89 04 24             	mov    %eax,(%esp)
 8048abd:	e8 16 5c 00 00       	call   804e6d8 <fprintf>
 8048ac2:	b8 01 00 00 00       	mov    $0x1,%eax
 8048ac7:	e9 03 02 00 00       	jmp    8048ccf <cmd_chk_wrnoent+0x257>
 8048acc:	c7 44 24 08 80 01 00 	movl   $0x180,0x8(%esp)
 8048ad3:	00 
 8048ad4:	c7 44 24 04 02 01 00 	movl   $0x102,0x4(%esp)
 8048adb:	00 
 8048adc:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048adf:	89 04 24             	mov    %eax,(%esp)
 8048ae2:	e8 89 26 00 00       	call   804b170 <open>
 8048ae7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8048aea:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 8048aee:	79 18                	jns    8048b08 <cmd_chk_wrnoent+0x90>
 8048af0:	c7 44 24 04 c8 ff 04 	movl   $0x804ffc8,0x4(%esp)
 8048af7:	08 
 8048af8:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048afb:	89 04 24             	mov    %eax,(%esp)
 8048afe:	e8 e7 f5 ff ff       	call   80480ea <check_failed>
 8048b03:	e9 c7 01 00 00       	jmp    8048ccf <cmd_chk_wrnoent+0x257>
 8048b08:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048b0b:	89 04 24             	mov    %eax,(%esp)
 8048b0e:	e8 35 29 00 00       	call   804b448 <unlink>
 8048b13:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048b16:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8048b1a:	79 1b                	jns    8048b37 <cmd_chk_wrnoent+0xbf>
 8048b1c:	c7 44 24 04 68 fd 04 	movl   $0x804fd68,0x4(%esp)
 8048b23:	08 
 8048b24:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048b27:	89 04 24             	mov    %eax,(%esp)
 8048b2a:	e8 bb f5 ff ff       	call   80480ea <check_failed>
 8048b2f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048b32:	e9 70 01 00 00       	jmp    8048ca7 <cmd_chk_wrnoent+0x22f>
 8048b37:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8048b3e:	00 
 8048b3f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048b46:	00 
 8048b47:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048b4a:	89 04 24             	mov    %eax,(%esp)
 8048b4d:	e8 1e 26 00 00       	call   804b170 <open>
 8048b52:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8048b55:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 8048b59:	78 1b                	js     8048b76 <cmd_chk_wrnoent+0xfe>
 8048b5b:	c7 44 24 04 cf ff 04 	movl   $0x804ffcf,0x4(%esp)
 8048b62:	08 
 8048b63:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048b66:	89 04 24             	mov    %eax,(%esp)
 8048b69:	e8 7c f5 ff ff       	call   80480ea <check_failed>
 8048b6e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048b71:	e9 31 01 00 00       	jmp    8048ca7 <cmd_chk_wrnoent+0x22f>
 8048b76:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8048b79:	89 04 24             	mov    %eax,(%esp)
 8048b7c:	e8 d6 33 00 00       	call   804bf57 <strlen>
 8048b81:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048b85:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8048b88:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048b8c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048b8f:	89 04 24             	mov    %eax,(%esp)
 8048b92:	e8 df 26 00 00       	call   804b276 <write>
 8048b97:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048b9a:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8048b9d:	89 04 24             	mov    %eax,(%esp)
 8048ba0:	e8 b2 33 00 00       	call   804bf57 <strlen>
 8048ba5:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 8048ba8:	74 1b                	je     8048bc5 <cmd_chk_wrnoent+0x14d>
 8048baa:	c7 44 24 04 e0 ff 04 	movl   $0x804ffe0,0x4(%esp)
 8048bb1:	08 
 8048bb2:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048bb5:	89 04 24             	mov    %eax,(%esp)
 8048bb8:	e8 2d f5 ff ff       	call   80480ea <check_failed>
 8048bbd:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048bc0:	e9 e2 00 00 00       	jmp    8048ca7 <cmd_chk_wrnoent+0x22f>
 8048bc5:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8048bcc:	00 
 8048bcd:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048bd4:	00 
 8048bd5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048bd8:	89 04 24             	mov    %eax,(%esp)
 8048bdb:	e8 f4 25 00 00       	call   804b1d4 <lseek>
 8048be0:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048be3:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8048be7:	74 1b                	je     8048c04 <cmd_chk_wrnoent+0x18c>
 8048be9:	c7 44 24 04 ee ff 04 	movl   $0x804ffee,0x4(%esp)
 8048bf0:	08 
 8048bf1:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048bf4:	89 04 24             	mov    %eax,(%esp)
 8048bf7:	e8 ee f4 ff ff       	call   80480ea <check_failed>
 8048bfc:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048bff:	e9 a3 00 00 00       	jmp    8048ca7 <cmd_chk_wrnoent+0x22f>
 8048c04:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8048c07:	89 04 24             	mov    %eax,(%esp)
 8048c0a:	e8 48 33 00 00       	call   804bf57 <strlen>
 8048c0f:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048c13:	8d 85 e0 fe ff ff    	lea    -0x120(%ebp),%eax
 8048c19:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048c1d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048c20:	89 04 24             	mov    %eax,(%esp)
 8048c23:	e8 fd 25 00 00       	call   804b225 <read>
 8048c28:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048c2b:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8048c2e:	89 04 24             	mov    %eax,(%esp)
 8048c31:	e8 21 33 00 00       	call   804bf57 <strlen>
 8048c36:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 8048c39:	74 18                	je     8048c53 <cmd_chk_wrnoent+0x1db>
 8048c3b:	c7 44 24 04 fa ff 04 	movl   $0x804fffa,0x4(%esp)
 8048c42:	08 
 8048c43:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048c46:	89 04 24             	mov    %eax,(%esp)
 8048c49:	e8 9c f4 ff ff       	call   80480ea <check_failed>
 8048c4e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048c51:	eb 54                	jmp    8048ca7 <cmd_chk_wrnoent+0x22f>
 8048c53:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8048c56:	89 04 24             	mov    %eax,(%esp)
 8048c59:	e8 f9 32 00 00       	call   804bf57 <strlen>
 8048c5e:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048c62:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8048c65:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048c69:	8d 85 e0 fe ff ff    	lea    -0x120(%ebp),%eax
 8048c6f:	89 04 24             	mov    %eax,(%esp)
 8048c72:	e8 0d 31 00 00       	call   804bd84 <strncmp>
 8048c77:	85 c0                	test   %eax,%eax
 8048c79:	74 25                	je     8048ca0 <cmd_chk_wrnoent+0x228>
 8048c7b:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8048c80:	8b 55 ec             	mov    -0x14(%ebp),%edx
 8048c83:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048c87:	c7 44 24 04 07 00 05 	movl   $0x8050007,0x4(%esp)
 8048c8e:	08 
 8048c8f:	89 04 24             	mov    %eax,(%esp)
 8048c92:	e8 41 5a 00 00       	call   804e6d8 <fprintf>
 8048c97:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 8048c9e:	eb 07                	jmp    8048ca7 <cmd_chk_wrnoent+0x22f>
 8048ca0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048ca7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048caa:	89 04 24             	mov    %eax,(%esp)
 8048cad:	e8 15 26 00 00       	call   804b2c7 <close>
 8048cb2:	85 c0                	test   %eax,%eax
 8048cb4:	79 16                	jns    8048ccc <cmd_chk_wrnoent+0x254>
 8048cb6:	c7 44 24 04 f2 fe 04 	movl   $0x804fef2,0x4(%esp)
 8048cbd:	08 
 8048cbe:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048cc1:	89 04 24             	mov    %eax,(%esp)
 8048cc4:	e8 21 f4 ff ff       	call   80480ea <check_failed>
 8048cc9:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048ccc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048ccf:	c9                   	leave  
 8048cd0:	c3                   	ret    

08048cd1 <cmd_chk_unlink>:
 8048cd1:	55                   	push   %ebp
 8048cd2:	89 e5                	mov    %esp,%ebp
 8048cd4:	83 ec 38             	sub    $0x38,%esp
 8048cd7:	c7 45 f0 21 00 05 08 	movl   $0x8050021,-0x10(%ebp)
 8048cde:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048ce1:	8b 00                	mov    (%eax),%eax
 8048ce3:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8048ce6:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048ce9:	89 04 24             	mov    %eax,(%esp)
 8048cec:	e8 3c f4 ff ff       	call   804812d <check_exists>
 8048cf1:	85 c0                	test   %eax,%eax
 8048cf3:	74 26                	je     8048d1b <cmd_chk_unlink+0x4a>
 8048cf5:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8048cfa:	8b 55 ec             	mov    -0x14(%ebp),%edx
 8048cfd:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048d01:	c7 44 24 04 b4 ff 04 	movl   $0x804ffb4,0x4(%esp)
 8048d08:	08 
 8048d09:	89 04 24             	mov    %eax,(%esp)
 8048d0c:	e8 c7 59 00 00       	call   804e6d8 <fprintf>
 8048d11:	b8 01 00 00 00       	mov    $0x1,%eax
 8048d16:	e9 d3 00 00 00       	jmp    8048dee <cmd_chk_unlink+0x11d>
 8048d1b:	c7 44 24 08 80 01 00 	movl   $0x180,0x8(%esp)
 8048d22:	00 
 8048d23:	c7 44 24 04 00 01 00 	movl   $0x100,0x4(%esp)
 8048d2a:	00 
 8048d2b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048d2e:	89 04 24             	mov    %eax,(%esp)
 8048d31:	e8 3a 24 00 00       	call   804b170 <open>
 8048d36:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8048d39:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 8048d3d:	79 18                	jns    8048d57 <cmd_chk_unlink+0x86>
 8048d3f:	c7 44 24 04 c8 ff 04 	movl   $0x804ffc8,0x4(%esp)
 8048d46:	08 
 8048d47:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048d4a:	89 04 24             	mov    %eax,(%esp)
 8048d4d:	e8 98 f3 ff ff       	call   80480ea <check_failed>
 8048d52:	e9 97 00 00 00       	jmp    8048dee <cmd_chk_unlink+0x11d>
 8048d57:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048d5a:	89 04 24             	mov    %eax,(%esp)
 8048d5d:	e8 e6 26 00 00       	call   804b448 <unlink>
 8048d62:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048d65:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8048d69:	79 18                	jns    8048d83 <cmd_chk_unlink+0xb2>
 8048d6b:	c7 44 24 04 68 fd 04 	movl   $0x804fd68,0x4(%esp)
 8048d72:	08 
 8048d73:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048d76:	89 04 24             	mov    %eax,(%esp)
 8048d79:	e8 6c f3 ff ff       	call   80480ea <check_failed>
 8048d7e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048d81:	eb 43                	jmp    8048dc6 <cmd_chk_unlink+0xf5>
 8048d83:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8048d8a:	00 
 8048d8b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048d92:	00 
 8048d93:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048d96:	89 04 24             	mov    %eax,(%esp)
 8048d99:	e8 d2 23 00 00       	call   804b170 <open>
 8048d9e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8048da1:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 8048da5:	78 18                	js     8048dbf <cmd_chk_unlink+0xee>
 8048da7:	c7 44 24 04 cf ff 04 	movl   $0x804ffcf,0x4(%esp)
 8048dae:	08 
 8048daf:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048db2:	89 04 24             	mov    %eax,(%esp)
 8048db5:	e8 30 f3 ff ff       	call   80480ea <check_failed>
 8048dba:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048dbd:	eb 07                	jmp    8048dc6 <cmd_chk_unlink+0xf5>
 8048dbf:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048dc6:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8048dc9:	89 04 24             	mov    %eax,(%esp)
 8048dcc:	e8 f6 24 00 00       	call   804b2c7 <close>
 8048dd1:	85 c0                	test   %eax,%eax
 8048dd3:	79 16                	jns    8048deb <cmd_chk_unlink+0x11a>
 8048dd5:	c7 44 24 04 f2 fe 04 	movl   $0x804fef2,0x4(%esp)
 8048ddc:	08 
 8048ddd:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048de0:	89 04 24             	mov    %eax,(%esp)
 8048de3:	e8 02 f3 ff ff       	call   80480ea <check_failed>
 8048de8:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048deb:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048dee:	c9                   	leave  
 8048def:	c3                   	ret    

08048df0 <cmd_chk_sparse>:
 8048df0:	55                   	push   %ebp
 8048df1:	89 e5                	mov    %esp,%ebp
 8048df3:	81 ec 58 01 00 00    	sub    $0x158,%esp
 8048df9:	c7 45 e4 31 00 05 08 	movl   $0x8050031,-0x1c(%ebp)
 8048e00:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048e03:	8b 00                	mov    (%eax),%eax
 8048e05:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8048e08:	c7 45 dc 00 a0 00 00 	movl   $0xa000,-0x24(%ebp)
 8048e0f:	c7 45 d8 41 00 05 08 	movl   $0x8050041,-0x28(%ebp)
 8048e16:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048e19:	89 04 24             	mov    %eax,(%esp)
 8048e1c:	e8 0c f3 ff ff       	call   804812d <check_exists>
 8048e21:	85 c0                	test   %eax,%eax
 8048e23:	74 26                	je     8048e4b <cmd_chk_sparse+0x5b>
 8048e25:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8048e2a:	8b 55 e0             	mov    -0x20(%ebp),%edx
 8048e2d:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048e31:	c7 44 24 04 b4 ff 04 	movl   $0x804ffb4,0x4(%esp)
 8048e38:	08 
 8048e39:	89 04 24             	mov    %eax,(%esp)
 8048e3c:	e8 97 58 00 00       	call   804e6d8 <fprintf>
 8048e41:	b8 01 00 00 00       	mov    $0x1,%eax
 8048e46:	e9 be 03 00 00       	jmp    8049209 <cmd_chk_sparse+0x419>
 8048e4b:	c7 44 24 08 80 01 00 	movl   $0x180,0x8(%esp)
 8048e52:	00 
 8048e53:	c7 44 24 04 02 01 00 	movl   $0x102,0x4(%esp)
 8048e5a:	00 
 8048e5b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048e5e:	89 04 24             	mov    %eax,(%esp)
 8048e61:	e8 0a 23 00 00       	call   804b170 <open>
 8048e66:	89 45 cc             	mov    %eax,-0x34(%ebp)
 8048e69:	8b 45 cc             	mov    -0x34(%ebp),%eax
 8048e6c:	85 c0                	test   %eax,%eax
 8048e6e:	79 18                	jns    8048e88 <cmd_chk_sparse+0x98>
 8048e70:	c7 44 24 04 c8 ff 04 	movl   $0x804ffc8,0x4(%esp)
 8048e77:	08 
 8048e78:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8048e7b:	89 04 24             	mov    %eax,(%esp)
 8048e7e:	e8 67 f2 ff ff       	call   80480ea <check_failed>
 8048e83:	e9 81 03 00 00       	jmp    8049209 <cmd_chk_sparse+0x419>
 8048e88:	8b 45 cc             	mov    -0x34(%ebp),%eax
 8048e8b:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8048e92:	00 
 8048e93:	8b 55 dc             	mov    -0x24(%ebp),%edx
 8048e96:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048e9a:	89 04 24             	mov    %eax,(%esp)
 8048e9d:	e8 32 23 00 00       	call   804b1d4 <lseek>
 8048ea2:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8048ea5:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 8048ea8:	3b 45 dc             	cmp    -0x24(%ebp),%eax
 8048eab:	74 1b                	je     8048ec8 <cmd_chk_sparse+0xd8>
 8048ead:	c7 44 24 04 4e 00 05 	movl   $0x805004e,0x4(%esp)
 8048eb4:	08 
 8048eb5:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8048eb8:	89 04 24             	mov    %eax,(%esp)
 8048ebb:	e8 2a f2 ff ff       	call   80480ea <check_failed>
 8048ec0:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048ec3:	e9 f4 02 00 00       	jmp    80491bc <cmd_chk_sparse+0x3cc>
 8048ec8:	8b 45 cc             	mov    -0x34(%ebp),%eax
 8048ecb:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 8048ed2:	00 
 8048ed3:	8d 55 cc             	lea    -0x34(%ebp),%edx
 8048ed6:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048eda:	89 04 24             	mov    %eax,(%esp)
 8048edd:	e8 94 23 00 00       	call   804b276 <write>
 8048ee2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048ee5:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8048ee9:	79 1b                	jns    8048f06 <cmd_chk_sparse+0x116>
 8048eeb:	c7 44 24 04 50 fe 04 	movl   $0x804fe50,0x4(%esp)
 8048ef2:	08 
 8048ef3:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8048ef6:	89 04 24             	mov    %eax,(%esp)
 8048ef9:	e8 ec f1 ff ff       	call   80480ea <check_failed>
 8048efe:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048f01:	e9 b6 02 00 00       	jmp    80491bc <cmd_chk_sparse+0x3cc>
 8048f06:	8b 45 cc             	mov    -0x34(%ebp),%eax
 8048f09:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8048f10:	00 
 8048f11:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048f18:	00 
 8048f19:	89 04 24             	mov    %eax,(%esp)
 8048f1c:	e8 b3 22 00 00       	call   804b1d4 <lseek>
 8048f21:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 8048f24:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 8048f28:	74 1b                	je     8048f45 <cmd_chk_sparse+0x155>
 8048f2a:	c7 44 24 04 ee ff 04 	movl   $0x804ffee,0x4(%esp)
 8048f31:	08 
 8048f32:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8048f35:	89 04 24             	mov    %eax,(%esp)
 8048f38:	e8 ad f1 ff ff       	call   80480ea <check_failed>
 8048f3d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048f40:	e9 77 02 00 00       	jmp    80491bc <cmd_chk_sparse+0x3cc>
 8048f45:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8048f48:	89 04 24             	mov    %eax,(%esp)
 8048f4b:	e8 07 30 00 00       	call   804bf57 <strlen>
 8048f50:	89 c2                	mov    %eax,%edx
 8048f52:	8b 45 cc             	mov    -0x34(%ebp),%eax
 8048f55:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048f59:	8d 95 cc fe ff ff    	lea    -0x134(%ebp),%edx
 8048f5f:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048f63:	89 04 24             	mov    %eax,(%esp)
 8048f66:	e8 ba 22 00 00       	call   804b225 <read>
 8048f6b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048f6e:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8048f71:	89 04 24             	mov    %eax,(%esp)
 8048f74:	e8 de 2f 00 00       	call   804bf57 <strlen>
 8048f79:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 8048f7c:	74 1b                	je     8048f99 <cmd_chk_sparse+0x1a9>
 8048f7e:	c7 44 24 04 58 00 05 	movl   $0x8050058,0x4(%esp)
 8048f85:	08 
 8048f86:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8048f89:	89 04 24             	mov    %eax,(%esp)
 8048f8c:	e8 59 f1 ff ff       	call   80480ea <check_failed>
 8048f91:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048f94:	e9 23 02 00 00       	jmp    80491bc <cmd_chk_sparse+0x3cc>
 8048f99:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8048f9c:	89 04 24             	mov    %eax,(%esp)
 8048f9f:	e8 b3 2f 00 00       	call   804bf57 <strlen>
 8048fa4:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8048fa7:	8d 85 cc fe ff ff    	lea    -0x134(%ebp),%eax
 8048fad:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8048fb0:	eb 3b                	jmp    8048fed <cmd_chk_sparse+0x1fd>
 8048fb2:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048fb5:	8d 50 01             	lea    0x1(%eax),%edx
 8048fb8:	89 55 ec             	mov    %edx,-0x14(%ebp)
 8048fbb:	0f b6 00             	movzbl (%eax),%eax
 8048fbe:	84 c0                	test   %al,%al
 8048fc0:	74 28                	je     8048fea <cmd_chk_sparse+0x1fa>
 8048fc2:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8048fc7:	8b 55 e0             	mov    -0x20(%ebp),%edx
 8048fca:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048fce:	c7 44 24 04 63 00 05 	movl   $0x8050063,0x4(%esp)
 8048fd5:	08 
 8048fd6:	89 04 24             	mov    %eax,(%esp)
 8048fd9:	e8 fa 56 00 00       	call   804e6d8 <fprintf>
 8048fde:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 8048fe5:	e9 d2 01 00 00       	jmp    80491bc <cmd_chk_sparse+0x3cc>
 8048fea:	ff 4d e8             	decl   -0x18(%ebp)
 8048fed:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 8048ff1:	75 bf                	jne    8048fb2 <cmd_chk_sparse+0x1c2>
 8048ff3:	8b 55 cc             	mov    -0x34(%ebp),%edx
 8048ff6:	8b 45 dc             	mov    -0x24(%ebp),%eax
 8048ff9:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 8049000:	00 
 8049001:	89 54 24 10          	mov    %edx,0x10(%esp)
 8049005:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 804900c:	00 
 804900d:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%esp)
 8049014:	00 
 8049015:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049019:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049020:	e8 5f 20 00 00       	call   804b084 <mmap>
 8049025:	89 45 d0             	mov    %eax,-0x30(%ebp)
 8049028:	83 7d d0 ff          	cmpl   $0xffffffff,-0x30(%ebp)
 804902c:	75 1b                	jne    8049049 <cmd_chk_sparse+0x259>
 804902e:	c7 44 24 04 56 fe 04 	movl   $0x804fe56,0x4(%esp)
 8049035:	08 
 8049036:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049039:	89 04 24             	mov    %eax,(%esp)
 804903c:	e8 a9 f0 ff ff       	call   80480ea <check_failed>
 8049041:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049044:	e9 73 01 00 00       	jmp    80491bc <cmd_chk_sparse+0x3cc>
 8049049:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804904c:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804904f:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8049052:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8049055:	eb 17                	jmp    804906e <cmd_chk_sparse+0x27e>
 8049057:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804905a:	8d 50 01             	lea    0x1(%eax),%edx
 804905d:	89 55 f0             	mov    %edx,-0x10(%ebp)
 8049060:	8b 55 ec             	mov    -0x14(%ebp),%edx
 8049063:	8d 4a 01             	lea    0x1(%edx),%ecx
 8049066:	89 4d ec             	mov    %ecx,-0x14(%ebp)
 8049069:	0f b6 12             	movzbl (%edx),%edx
 804906c:	88 10                	mov    %dl,(%eax)
 804906e:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049071:	0f b6 00             	movzbl (%eax),%eax
 8049074:	84 c0                	test   %al,%al
 8049076:	75 df                	jne    8049057 <cmd_chk_sparse+0x267>
 8049078:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804907b:	89 44 24 04          	mov    %eax,0x4(%esp)
 804907f:	8b 45 d0             	mov    -0x30(%ebp),%eax
 8049082:	89 04 24             	mov    %eax,(%esp)
 8049085:	e8 5d 20 00 00       	call   804b0e7 <munmap>
 804908a:	85 c0                	test   %eax,%eax
 804908c:	79 16                	jns    80490a4 <cmd_chk_sparse+0x2b4>
 804908e:	c7 44 24 04 eb fe 04 	movl   $0x804feeb,0x4(%esp)
 8049095:	08 
 8049096:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049099:	89 04 24             	mov    %eax,(%esp)
 804909c:	e8 49 f0 ff ff       	call   80480ea <check_failed>
 80490a1:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80490a4:	8b 45 cc             	mov    -0x34(%ebp),%eax
 80490a7:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80490ae:	00 
 80490af:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 80490b6:	00 
 80490b7:	89 04 24             	mov    %eax,(%esp)
 80490ba:	e8 15 21 00 00       	call   804b1d4 <lseek>
 80490bf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 80490c2:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 80490c6:	74 1b                	je     80490e3 <cmd_chk_sparse+0x2f3>
 80490c8:	c7 44 24 04 ee ff 04 	movl   $0x804ffee,0x4(%esp)
 80490cf:	08 
 80490d0:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80490d3:	89 04 24             	mov    %eax,(%esp)
 80490d6:	e8 0f f0 ff ff       	call   80480ea <check_failed>
 80490db:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80490de:	e9 d9 00 00 00       	jmp    80491bc <cmd_chk_sparse+0x3cc>
 80490e3:	8b 45 d8             	mov    -0x28(%ebp),%eax
 80490e6:	89 04 24             	mov    %eax,(%esp)
 80490e9:	e8 69 2e 00 00       	call   804bf57 <strlen>
 80490ee:	89 c2                	mov    %eax,%edx
 80490f0:	8b 45 cc             	mov    -0x34(%ebp),%eax
 80490f3:	89 54 24 08          	mov    %edx,0x8(%esp)
 80490f7:	8d 95 cc fe ff ff    	lea    -0x134(%ebp),%edx
 80490fd:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049101:	89 04 24             	mov    %eax,(%esp)
 8049104:	e8 1c 21 00 00       	call   804b225 <read>
 8049109:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804910c:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804910f:	89 04 24             	mov    %eax,(%esp)
 8049112:	e8 40 2e 00 00       	call   804bf57 <strlen>
 8049117:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 804911a:	74 1b                	je     8049137 <cmd_chk_sparse+0x347>
 804911c:	c7 44 24 04 fa ff 04 	movl   $0x804fffa,0x4(%esp)
 8049123:	08 
 8049124:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049127:	89 04 24             	mov    %eax,(%esp)
 804912a:	e8 bb ef ff ff       	call   80480ea <check_failed>
 804912f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049132:	e9 85 00 00 00       	jmp    80491bc <cmd_chk_sparse+0x3cc>
 8049137:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804913a:	89 04 24             	mov    %eax,(%esp)
 804913d:	e8 15 2e 00 00       	call   804bf57 <strlen>
 8049142:	c6 84 05 cc fe ff ff 	movb   $0x0,-0x134(%ebp,%eax,1)
 8049149:	00 
 804914a:	8d 85 cc fe ff ff    	lea    -0x134(%ebp),%eax
 8049150:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049154:	8b 45 d8             	mov    -0x28(%ebp),%eax
 8049157:	89 04 24             	mov    %eax,(%esp)
 804915a:	e8 74 2c 00 00       	call   804bdd3 <strcmp>
 804915f:	85 c0                	test   %eax,%eax
 8049161:	74 52                	je     80491b5 <cmd_chk_sparse+0x3c5>
 8049163:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8049168:	8b 55 e0             	mov    -0x20(%ebp),%edx
 804916b:	89 54 24 08          	mov    %edx,0x8(%esp)
 804916f:	c7 44 24 04 7c 00 05 	movl   $0x805007c,0x4(%esp)
 8049176:	08 
 8049177:	89 04 24             	mov    %eax,(%esp)
 804917a:	e8 59 55 00 00       	call   804e6d8 <fprintf>
 804917f:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8049184:	8d 95 cc fe ff ff    	lea    -0x134(%ebp),%edx
 804918a:	89 54 24 10          	mov    %edx,0x10(%esp)
 804918e:	8b 55 d8             	mov    -0x28(%ebp),%edx
 8049191:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049195:	8b 55 e0             	mov    -0x20(%ebp),%edx
 8049198:	89 54 24 08          	mov    %edx,0x8(%esp)
 804919c:	c7 44 24 04 94 00 05 	movl   $0x8050094,0x4(%esp)
 80491a3:	08 
 80491a4:	89 04 24             	mov    %eax,(%esp)
 80491a7:	e8 2c 55 00 00       	call   804e6d8 <fprintf>
 80491ac:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 80491b3:	eb 07                	jmp    80491bc <cmd_chk_sparse+0x3cc>
 80491b5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 80491bc:	8b 45 cc             	mov    -0x34(%ebp),%eax
 80491bf:	89 04 24             	mov    %eax,(%esp)
 80491c2:	e8 00 21 00 00       	call   804b2c7 <close>
 80491c7:	85 c0                	test   %eax,%eax
 80491c9:	79 16                	jns    80491e1 <cmd_chk_sparse+0x3f1>
 80491cb:	c7 44 24 04 f2 fe 04 	movl   $0x804fef2,0x4(%esp)
 80491d2:	08 
 80491d3:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80491d6:	89 04 24             	mov    %eax,(%esp)
 80491d9:	e8 0c ef ff ff       	call   80480ea <check_failed>
 80491de:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80491e1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80491e4:	89 04 24             	mov    %eax,(%esp)
 80491e7:	e8 5c 22 00 00       	call   804b448 <unlink>
 80491ec:	85 c0                	test   %eax,%eax
 80491ee:	79 16                	jns    8049206 <cmd_chk_sparse+0x416>
 80491f0:	c7 44 24 04 68 fd 04 	movl   $0x804fd68,0x4(%esp)
 80491f7:	08 
 80491f8:	8b 45 e0             	mov    -0x20(%ebp),%eax
 80491fb:	89 04 24             	mov    %eax,(%esp)
 80491fe:	e8 e7 ee ff ff       	call   80480ea <check_failed>
 8049203:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049206:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049209:	c9                   	leave  
 804920a:	c3                   	ret    

0804920b <check_run_one>:
 804920b:	55                   	push   %ebp
 804920c:	89 e5                	mov    %esp,%ebp
 804920e:	83 ec 28             	sub    $0x28,%esp
 8049211:	8b 45 08             	mov    0x8(%ebp),%eax
 8049214:	8b 00                	mov    (%eax),%eax
 8049216:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8049219:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8049220:	8b 45 08             	mov    0x8(%ebp),%eax
 8049223:	8b 10                	mov    (%eax),%edx
 8049225:	a1 b8 33 05 08       	mov    0x80533b8,%eax
 804922a:	89 54 24 08          	mov    %edx,0x8(%esp)
 804922e:	c7 44 24 04 b0 00 05 	movl   $0x80500b0,0x4(%esp)
 8049235:	08 
 8049236:	89 04 24             	mov    %eax,(%esp)
 8049239:	e8 9a 54 00 00       	call   804e6d8 <fprintf>
 804923e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049245:	e8 2c 56 00 00       	call   804e876 <fflush>
 804924a:	8b 45 08             	mov    0x8(%ebp),%eax
 804924d:	8b 40 04             	mov    0x4(%eax),%eax
 8049250:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049253:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049257:	8d 55 ec             	lea    -0x14(%ebp),%edx
 804925a:	89 54 24 04          	mov    %edx,0x4(%esp)
 804925e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049265:	ff d0                	call   *%eax
 8049267:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804926a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804926e:	74 07                	je     8049277 <check_run_one+0x6c>
 8049270:	ba ba 00 05 08       	mov    $0x80500ba,%edx
 8049275:	eb 05                	jmp    804927c <check_run_one+0x71>
 8049277:	ba c1 00 05 08       	mov    $0x80500c1,%edx
 804927c:	a1 b8 33 05 08       	mov    0x80533b8,%eax
 8049281:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049285:	c7 44 24 04 c9 00 05 	movl   $0x80500c9,0x4(%esp)
 804928c:	08 
 804928d:	89 04 24             	mov    %eax,(%esp)
 8049290:	e8 43 54 00 00       	call   804e6d8 <fprintf>
 8049295:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049298:	c9                   	leave  
 8049299:	c3                   	ret    

0804929a <cmd_check>:
 804929a:	55                   	push   %ebp
 804929b:	89 e5                	mov    %esp,%ebp
 804929d:	83 ec 28             	sub    $0x28,%esp
 80492a0:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
 80492a4:	0f 8f 87 00 00 00    	jg     8049331 <cmd_check+0x97>
 80492aa:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 80492af:	c7 44 24 04 cd 00 05 	movl   $0x80500cd,0x4(%esp)
 80492b6:	08 
 80492b7:	89 04 24             	mov    %eax,(%esp)
 80492ba:	e8 19 54 00 00       	call   804e6d8 <fprintf>
 80492bf:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 80492c4:	c7 44 24 04 ec 00 05 	movl   $0x80500ec,0x4(%esp)
 80492cb:	08 
 80492cc:	89 04 24             	mov    %eax,(%esp)
 80492cf:	e8 04 54 00 00       	call   804e6d8 <fprintf>
 80492d4:	c7 45 f0 20 32 05 08 	movl   $0x8053220,-0x10(%ebp)
 80492db:	eb 2c                	jmp    8049309 <cmd_check+0x6f>
 80492dd:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80492e0:	8b 48 08             	mov    0x8(%eax),%ecx
 80492e3:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80492e6:	8b 10                	mov    (%eax),%edx
 80492e8:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 80492ed:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 80492f1:	89 54 24 08          	mov    %edx,0x8(%esp)
 80492f5:	c7 44 24 04 15 01 05 	movl   $0x8050115,0x4(%esp)
 80492fc:	08 
 80492fd:	89 04 24             	mov    %eax,(%esp)
 8049300:	e8 d3 53 00 00       	call   804e6d8 <fprintf>
 8049305:	83 45 f0 0c          	addl   $0xc,-0x10(%ebp)
 8049309:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804930c:	8b 00                	mov    (%eax),%eax
 804930e:	85 c0                	test   %eax,%eax
 8049310:	75 cb                	jne    80492dd <cmd_check+0x43>
 8049312:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8049317:	c7 44 24 04 20 01 05 	movl   $0x8050120,0x4(%esp)
 804931e:	08 
 804931f:	89 04 24             	mov    %eax,(%esp)
 8049322:	e8 b1 53 00 00       	call   804e6d8 <fprintf>
 8049327:	b8 01 00 00 00       	mov    $0x1,%eax
 804932c:	e9 13 01 00 00       	jmp    8049444 <cmd_check+0x1aa>
 8049331:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 8049338:	a1 b8 33 05 08       	mov    0x80533b8,%eax
 804933d:	c7 44 24 04 22 01 05 	movl   $0x8050122,0x4(%esp)
 8049344:	08 
 8049345:	89 04 24             	mov    %eax,(%esp)
 8049348:	e8 8b 53 00 00       	call   804e6d8 <fprintf>
 804934d:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
 8049351:	75 4f                	jne    80493a2 <cmd_check+0x108>
 8049353:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049356:	83 c0 04             	add    $0x4,%eax
 8049359:	8b 00                	mov    (%eax),%eax
 804935b:	c7 44 24 04 32 01 05 	movl   $0x8050132,0x4(%esp)
 8049362:	08 
 8049363:	89 04 24             	mov    %eax,(%esp)
 8049366:	e8 68 2a 00 00       	call   804bdd3 <strcmp>
 804936b:	85 c0                	test   %eax,%eax
 804936d:	75 33                	jne    80493a2 <cmd_check+0x108>
 804936f:	c7 45 f0 20 32 05 08 	movl   $0x8053220,-0x10(%ebp)
 8049376:	eb 19                	jmp    8049391 <cmd_check+0xf7>
 8049378:	8b 45 10             	mov    0x10(%ebp),%eax
 804937b:	89 44 24 04          	mov    %eax,0x4(%esp)
 804937f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049382:	89 04 24             	mov    %eax,(%esp)
 8049385:	e8 81 fe ff ff       	call   804920b <check_run_one>
 804938a:	01 45 ec             	add    %eax,-0x14(%ebp)
 804938d:	83 45 f0 0c          	addl   $0xc,-0x10(%ebp)
 8049391:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049394:	8b 00                	mov    (%eax),%eax
 8049396:	85 c0                	test   %eax,%eax
 8049398:	75 de                	jne    8049378 <cmd_check+0xde>
 804939a:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804939d:	e9 a2 00 00 00       	jmp    8049444 <cmd_check+0x1aa>
 80493a2:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 80493a9:	e9 87 00 00 00       	jmp    8049435 <cmd_check+0x19b>
 80493ae:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80493b1:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 80493b8:	8b 45 0c             	mov    0xc(%ebp),%eax
 80493bb:	01 d0                	add    %edx,%eax
 80493bd:	8b 00                	mov    (%eax),%eax
 80493bf:	89 45 e8             	mov    %eax,-0x18(%ebp)
 80493c2:	c7 45 f0 20 32 05 08 	movl   $0x8053220,-0x10(%ebp)
 80493c9:	eb 1c                	jmp    80493e7 <cmd_check+0x14d>
 80493cb:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80493ce:	8b 00                	mov    (%eax),%eax
 80493d0:	8b 55 e8             	mov    -0x18(%ebp),%edx
 80493d3:	89 54 24 04          	mov    %edx,0x4(%esp)
 80493d7:	89 04 24             	mov    %eax,(%esp)
 80493da:	e8 f4 29 00 00       	call   804bdd3 <strcmp>
 80493df:	85 c0                	test   %eax,%eax
 80493e1:	74 0f                	je     80493f2 <cmd_check+0x158>
 80493e3:	83 45 f0 0c          	addl   $0xc,-0x10(%ebp)
 80493e7:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80493ea:	8b 00                	mov    (%eax),%eax
 80493ec:	85 c0                	test   %eax,%eax
 80493ee:	75 db                	jne    80493cb <cmd_check+0x131>
 80493f0:	eb 01                	jmp    80493f3 <cmd_check+0x159>
 80493f2:	90                   	nop
 80493f3:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80493f6:	8b 00                	mov    (%eax),%eax
 80493f8:	85 c0                	test   %eax,%eax
 80493fa:	75 21                	jne    804941d <cmd_check+0x183>
 80493fc:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8049401:	8b 55 e8             	mov    -0x18(%ebp),%edx
 8049404:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049408:	c7 44 24 04 36 01 05 	movl   $0x8050136,0x4(%esp)
 804940f:	08 
 8049410:	89 04 24             	mov    %eax,(%esp)
 8049413:	e8 c0 52 00 00       	call   804e6d8 <fprintf>
 8049418:	ff 45 ec             	incl   -0x14(%ebp)
 804941b:	eb 15                	jmp    8049432 <cmd_check+0x198>
 804941d:	8b 45 10             	mov    0x10(%ebp),%eax
 8049420:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049424:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049427:	89 04 24             	mov    %eax,(%esp)
 804942a:	e8 dc fd ff ff       	call   804920b <check_run_one>
 804942f:	01 45 ec             	add    %eax,-0x14(%ebp)
 8049432:	ff 45 f4             	incl   -0xc(%ebp)
 8049435:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049438:	3b 45 08             	cmp    0x8(%ebp),%eax
 804943b:	0f 8c 6d ff ff ff    	jl     80493ae <cmd_check+0x114>
 8049441:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049444:	c9                   	leave  
 8049445:	c3                   	ret    

08049446 <cmd_env>:
 8049446:	55                   	push   %ebp
 8049447:	89 e5                	mov    %esp,%ebp
 8049449:	83 ec 28             	sub    $0x28,%esp
 804944c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8049453:	a1 e0 34 05 08       	mov    0x80534e0,%eax
 8049458:	85 c0                	test   %eax,%eax
 804945a:	74 3b                	je     8049497 <cmd_env+0x51>
 804945c:	eb 26                	jmp    8049484 <cmd_env+0x3e>
 804945e:	8b 0d e0 34 05 08    	mov    0x80534e0,%ecx
 8049464:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049467:	8d 50 01             	lea    0x1(%eax),%edx
 804946a:	89 55 f4             	mov    %edx,-0xc(%ebp)
 804946d:	c1 e0 02             	shl    $0x2,%eax
 8049470:	01 c8                	add    %ecx,%eax
 8049472:	8b 00                	mov    (%eax),%eax
 8049474:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049478:	c7 04 24 48 01 05 08 	movl   $0x8050148,(%esp)
 804947f:	e8 1d 52 00 00       	call   804e6a1 <printf>
 8049484:	a1 e0 34 05 08       	mov    0x80534e0,%eax
 8049489:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804948c:	c1 e2 02             	shl    $0x2,%edx
 804948f:	01 d0                	add    %edx,%eax
 8049491:	8b 00                	mov    (%eax),%eax
 8049493:	85 c0                	test   %eax,%eax
 8049495:	75 c7                	jne    804945e <cmd_env+0x18>
 8049497:	b8 00 00 00 00       	mov    $0x0,%eax
 804949c:	c9                   	leave  
 804949d:	c3                   	ret    

0804949e <cmd_sync>:
 804949e:	55                   	push   %ebp
 804949f:	89 e5                	mov    %esp,%ebp
 80494a1:	83 ec 08             	sub    $0x8,%esp
 80494a4:	e8 89 1c 00 00       	call   804b132 <sync>
 80494a9:	b8 00 00 00 00       	mov    $0x0,%eax
 80494ae:	c9                   	leave  
 80494af:	c3                   	ret    

080494b0 <do_cp>:
 80494b0:	55                   	push   %ebp
 80494b1:	89 e5                	mov    %esp,%ebp
 80494b3:	83 ec 38             	sub    $0x38,%esp
 80494b6:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
 80494ba:	78 12                	js     80494ce <do_cp+0x1e>
 80494bc:	83 7d 14 02          	cmpl   $0x2,0x14(%ebp)
 80494c0:	7f 0c                	jg     80494ce <do_cp+0x1e>
 80494c2:	8b 45 08             	mov    0x8(%ebp),%eax
 80494c5:	8b 55 14             	mov    0x14(%ebp),%edx
 80494c8:	8b 04 90             	mov    (%eax,%edx,4),%eax
 80494cb:	89 45 14             	mov    %eax,0x14(%ebp)
 80494ce:	83 7d 1c 00          	cmpl   $0x0,0x1c(%ebp)
 80494d2:	78 74                	js     8049548 <do_cp+0x98>
 80494d4:	83 7d 1c 02          	cmpl   $0x2,0x1c(%ebp)
 80494d8:	7f 6e                	jg     8049548 <do_cp+0x98>
 80494da:	8b 45 08             	mov    0x8(%ebp),%eax
 80494dd:	8b 55 1c             	mov    0x1c(%ebp),%edx
 80494e0:	8b 04 90             	mov    (%eax,%edx,4),%eax
 80494e3:	89 45 1c             	mov    %eax,0x1c(%ebp)
 80494e6:	eb 60                	jmp    8049548 <do_cp+0x98>
 80494e8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80494eb:	89 44 24 08          	mov    %eax,0x8(%esp)
 80494ef:	c7 44 24 04 00 39 05 	movl   $0x8053900,0x4(%esp)
 80494f6:	08 
 80494f7:	8b 45 1c             	mov    0x1c(%ebp),%eax
 80494fa:	89 04 24             	mov    %eax,(%esp)
 80494fd:	e8 74 1d 00 00       	call   804b276 <write>
 8049502:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049505:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8049509:	79 3d                	jns    8049548 <do_cp+0x98>
 804950b:	a1 04 4a 05 08       	mov    0x8054a04,%eax
 8049510:	89 04 24             	mov    %eax,(%esp)
 8049513:	e8 cd 2c 00 00       	call   804c1e5 <strerror>
 8049518:	89 c2                	mov    %eax,%edx
 804951a:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804951f:	89 54 24 10          	mov    %edx,0x10(%esp)
 8049523:	8b 55 18             	mov    0x18(%ebp),%edx
 8049526:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804952a:	8b 55 0c             	mov    0xc(%ebp),%edx
 804952d:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049531:	c7 44 24 04 54 01 05 	movl   $0x8050154,0x4(%esp)
 8049538:	08 
 8049539:	89 04 24             	mov    %eax,(%esp)
 804953c:	e8 97 51 00 00       	call   804e6d8 <fprintf>
 8049541:	b8 00 00 00 00       	mov    $0x0,%eax
 8049546:	eb 70                	jmp    80495b8 <do_cp+0x108>
 8049548:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
 804954f:	00 
 8049550:	c7 44 24 04 00 39 05 	movl   $0x8053900,0x4(%esp)
 8049557:	08 
 8049558:	8b 45 14             	mov    0x14(%ebp),%eax
 804955b:	89 04 24             	mov    %eax,(%esp)
 804955e:	e8 c2 1c 00 00       	call   804b225 <read>
 8049563:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049566:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804956a:	0f 8f 78 ff ff ff    	jg     80494e8 <do_cp+0x38>
 8049570:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049574:	79 3d                	jns    80495b3 <do_cp+0x103>
 8049576:	a1 04 4a 05 08       	mov    0x8054a04,%eax
 804957b:	89 04 24             	mov    %eax,(%esp)
 804957e:	e8 62 2c 00 00       	call   804c1e5 <strerror>
 8049583:	89 c2                	mov    %eax,%edx
 8049585:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804958a:	89 54 24 10          	mov    %edx,0x10(%esp)
 804958e:	8b 55 10             	mov    0x10(%ebp),%edx
 8049591:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049595:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049598:	89 54 24 08          	mov    %edx,0x8(%esp)
 804959c:	c7 44 24 04 74 01 05 	movl   $0x8050174,0x4(%esp)
 80495a3:	08 
 80495a4:	89 04 24             	mov    %eax,(%esp)
 80495a7:	e8 2c 51 00 00       	call   804e6d8 <fprintf>
 80495ac:	b8 00 00 00 00       	mov    $0x0,%eax
 80495b1:	eb 05                	jmp    80495b8 <do_cp+0x108>
 80495b3:	b8 01 00 00 00       	mov    $0x1,%eax
 80495b8:	c9                   	leave  
 80495b9:	c3                   	ret    

080495ba <cmd_cp>:
 80495ba:	55                   	push   %ebp
 80495bb:	89 e5                	mov    %esp,%ebp
 80495bd:	83 ec 48             	sub    $0x48,%esp
 80495c0:	83 7d 08 03          	cmpl   $0x3,0x8(%ebp)
 80495c4:	74 1f                	je     80495e5 <cmd_cp+0x2b>
 80495c6:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 80495cb:	c7 44 24 04 94 01 05 	movl   $0x8050194,0x4(%esp)
 80495d2:	08 
 80495d3:	89 04 24             	mov    %eax,(%esp)
 80495d6:	e8 fd 50 00 00       	call   804e6d8 <fprintf>
 80495db:	b8 01 00 00 00       	mov    $0x1,%eax
 80495e0:	e9 23 01 00 00       	jmp    8049708 <cmd_cp+0x14e>
 80495e5:	8b 45 0c             	mov    0xc(%ebp),%eax
 80495e8:	8b 40 04             	mov    0x4(%eax),%eax
 80495eb:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80495ee:	8b 45 0c             	mov    0xc(%ebp),%eax
 80495f1:	8b 40 08             	mov    0x8(%eax),%eax
 80495f4:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80495f7:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 80495fe:	00 
 80495ff:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8049606:	00 
 8049607:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804960a:	89 04 24             	mov    %eax,(%esp)
 804960d:	e8 5e 1b 00 00       	call   804b170 <open>
 8049612:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049615:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 8049619:	79 39                	jns    8049654 <cmd_cp+0x9a>
 804961b:	a1 04 4a 05 08       	mov    0x8054a04,%eax
 8049620:	89 04 24             	mov    %eax,(%esp)
 8049623:	e8 bd 2b 00 00       	call   804c1e5 <strerror>
 8049628:	89 c2                	mov    %eax,%edx
 804962a:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804962f:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049633:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8049636:	89 54 24 08          	mov    %edx,0x8(%esp)
 804963a:	c7 44 24 04 ac 01 05 	movl   $0x80501ac,0x4(%esp)
 8049641:	08 
 8049642:	89 04 24             	mov    %eax,(%esp)
 8049645:	e8 8e 50 00 00       	call   804e6d8 <fprintf>
 804964a:	b8 01 00 00 00       	mov    $0x1,%eax
 804964f:	e9 b4 00 00 00       	jmp    8049708 <cmd_cp+0x14e>
 8049654:	c7 44 24 08 b6 01 00 	movl   $0x1b6,0x8(%esp)
 804965b:	00 
 804965c:	c7 44 24 04 01 03 00 	movl   $0x301,0x4(%esp)
 8049663:	00 
 8049664:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049667:	89 04 24             	mov    %eax,(%esp)
 804966a:	e8 01 1b 00 00       	call   804b170 <open>
 804966f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049672:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 8049676:	79 36                	jns    80496ae <cmd_cp+0xf4>
 8049678:	a1 04 4a 05 08       	mov    0x8054a04,%eax
 804967d:	89 04 24             	mov    %eax,(%esp)
 8049680:	e8 60 2b 00 00       	call   804c1e5 <strerror>
 8049685:	89 c2                	mov    %eax,%edx
 8049687:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804968c:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049690:	8b 55 ec             	mov    -0x14(%ebp),%edx
 8049693:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049697:	c7 44 24 04 ac 01 05 	movl   $0x80501ac,0x4(%esp)
 804969e:	08 
 804969f:	89 04 24             	mov    %eax,(%esp)
 80496a2:	e8 31 50 00 00       	call   804e6d8 <fprintf>
 80496a7:	b8 01 00 00 00       	mov    $0x1,%eax
 80496ac:	eb 5a                	jmp    8049708 <cmd_cp+0x14e>
 80496ae:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 80496b5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80496b8:	89 44 24 14          	mov    %eax,0x14(%esp)
 80496bc:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80496bf:	89 44 24 10          	mov    %eax,0x10(%esp)
 80496c3:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80496c6:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80496ca:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80496cd:	89 44 24 08          	mov    %eax,0x8(%esp)
 80496d1:	c7 44 24 04 1e fc 04 	movl   $0x804fc1e,0x4(%esp)
 80496d8:	08 
 80496d9:	8b 45 10             	mov    0x10(%ebp),%eax
 80496dc:	89 04 24             	mov    %eax,(%esp)
 80496df:	e8 cc fd ff ff       	call   80494b0 <do_cp>
 80496e4:	85 c0                	test   %eax,%eax
 80496e6:	75 07                	jne    80496ef <cmd_cp+0x135>
 80496e8:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 80496ef:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80496f2:	89 04 24             	mov    %eax,(%esp)
 80496f5:	e8 cd 1b 00 00       	call   804b2c7 <close>
 80496fa:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 80496fd:	89 04 24             	mov    %eax,(%esp)
 8049700:	e8 c2 1b 00 00       	call   804b2c7 <close>
 8049705:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049708:	c9                   	leave  
 8049709:	c3                   	ret    

0804970a <cmd_echo>:
 804970a:	55                   	push   %ebp
 804970b:	89 e5                	mov    %esp,%ebp
 804970d:	83 ec 28             	sub    $0x28,%esp
 8049710:	c7 45 f4 02 00 00 00 	movl   $0x2,-0xc(%ebp)
 8049717:	eb 32                	jmp    804974b <cmd_echo+0x41>
 8049719:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804971c:	05 ff ff ff 3f       	add    $0x3fffffff,%eax
 8049721:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049728:	8b 45 0c             	mov    0xc(%ebp),%eax
 804972b:	01 d0                	add    %edx,%eax
 804972d:	8b 10                	mov    (%eax),%edx
 804972f:	a1 b8 33 05 08       	mov    0x80533b8,%eax
 8049734:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049738:	c7 44 24 04 c7 01 05 	movl   $0x80501c7,0x4(%esp)
 804973f:	08 
 8049740:	89 04 24             	mov    %eax,(%esp)
 8049743:	e8 90 4f 00 00       	call   804e6d8 <fprintf>
 8049748:	ff 45 f4             	incl   -0xc(%ebp)
 804974b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804974e:	3b 45 08             	cmp    0x8(%ebp),%eax
 8049751:	7c c6                	jl     8049719 <cmd_echo+0xf>
 8049753:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049756:	05 ff ff ff 3f       	add    $0x3fffffff,%eax
 804975b:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049762:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049765:	01 d0                	add    %edx,%eax
 8049767:	8b 10                	mov    (%eax),%edx
 8049769:	a1 b8 33 05 08       	mov    0x80533b8,%eax
 804976e:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049772:	c7 44 24 04 c9 00 05 	movl   $0x80500c9,0x4(%esp)
 8049779:	08 
 804977a:	89 04 24             	mov    %eax,(%esp)
 804977d:	e8 56 4f 00 00       	call   804e6d8 <fprintf>
 8049782:	b8 00 00 00 00       	mov    $0x0,%eax
 8049787:	c9                   	leave  
 8049788:	c3                   	ret    

08049789 <cmd_cat>:
 8049789:	55                   	push   %ebp
 804978a:	89 e5                	mov    %esp,%ebp
 804978c:	83 ec 38             	sub    $0x38,%esp
 804978f:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
 8049793:	75 40                	jne    80497d5 <cmd_cat+0x4c>
 8049795:	c7 44 24 14 01 00 00 	movl   $0x1,0x14(%esp)
 804979c:	00 
 804979d:	c7 44 24 10 cb 01 05 	movl   $0x80501cb,0x10(%esp)
 80497a4:	08 
 80497a5:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 80497ac:	00 
 80497ad:	c7 44 24 08 d4 01 05 	movl   $0x80501d4,0x8(%esp)
 80497b4:	08 
 80497b5:	c7 44 24 04 b2 fb 04 	movl   $0x804fbb2,0x4(%esp)
 80497bc:	08 
 80497bd:	8b 45 10             	mov    0x10(%ebp),%eax
 80497c0:	89 04 24             	mov    %eax,(%esp)
 80497c3:	e8 e8 fc ff ff       	call   80494b0 <do_cp>
 80497c8:	85 c0                	test   %eax,%eax
 80497ca:	0f 94 c0             	sete   %al
 80497cd:	0f b6 c0             	movzbl %al,%eax
 80497d0:	e9 dc 00 00 00       	jmp    80498b1 <cmd_cat+0x128>
 80497d5:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80497dc:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 80497e3:	e9 ba 00 00 00       	jmp    80498a2 <cmd_cat+0x119>
 80497e8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80497eb:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 80497f2:	8b 45 0c             	mov    0xc(%ebp),%eax
 80497f5:	01 d0                	add    %edx,%eax
 80497f7:	8b 00                	mov    (%eax),%eax
 80497f9:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80497fc:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8049803:	00 
 8049804:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804980b:	00 
 804980c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804980f:	89 04 24             	mov    %eax,(%esp)
 8049812:	e8 59 19 00 00       	call   804b170 <open>
 8049817:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804981a:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804981e:	79 38                	jns    8049858 <cmd_cat+0xcf>
 8049820:	a1 04 4a 05 08       	mov    0x8054a04,%eax
 8049825:	89 04 24             	mov    %eax,(%esp)
 8049828:	e8 b8 29 00 00       	call   804c1e5 <strerror>
 804982d:	89 c2                	mov    %eax,%edx
 804982f:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8049834:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049838:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804983b:	89 54 24 08          	mov    %edx,0x8(%esp)
 804983f:	c7 44 24 04 dc 01 05 	movl   $0x80501dc,0x4(%esp)
 8049846:	08 
 8049847:	89 04 24             	mov    %eax,(%esp)
 804984a:	e8 89 4e 00 00       	call   804e6d8 <fprintf>
 804984f:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 8049856:	eb 47                	jmp    804989f <cmd_cat+0x116>
 8049858:	c7 44 24 14 01 00 00 	movl   $0x1,0x14(%esp)
 804985f:	00 
 8049860:	c7 44 24 10 cb 01 05 	movl   $0x80501cb,0x10(%esp)
 8049867:	08 
 8049868:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804986b:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804986f:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049872:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049876:	c7 44 24 04 b2 fb 04 	movl   $0x804fbb2,0x4(%esp)
 804987d:	08 
 804987e:	8b 45 10             	mov    0x10(%ebp),%eax
 8049881:	89 04 24             	mov    %eax,(%esp)
 8049884:	e8 27 fc ff ff       	call   80494b0 <do_cp>
 8049889:	85 c0                	test   %eax,%eax
 804988b:	75 07                	jne    8049894 <cmd_cat+0x10b>
 804988d:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 8049894:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049897:	89 04 24             	mov    %eax,(%esp)
 804989a:	e8 28 1a 00 00       	call   804b2c7 <close>
 804989f:	ff 45 f4             	incl   -0xc(%ebp)
 80498a2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80498a5:	3b 45 08             	cmp    0x8(%ebp),%eax
 80498a8:	0f 8c 3a ff ff ff    	jl     80497e8 <cmd_cat+0x5f>
 80498ae:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80498b1:	c9                   	leave  
 80498b2:	c3                   	ret    

080498b3 <cmd_mv>:
 80498b3:	55                   	push   %ebp
 80498b4:	89 e5                	mov    %esp,%ebp
 80498b6:	83 ec 38             	sub    $0x38,%esp
 80498b9:	83 7d 08 03          	cmpl   $0x3,0x8(%ebp)
 80498bd:	74 1c                	je     80498db <cmd_mv+0x28>
 80498bf:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 80498c4:	c7 44 24 04 f8 01 05 	movl   $0x80501f8,0x4(%esp)
 80498cb:	08 
 80498cc:	89 04 24             	mov    %eax,(%esp)
 80498cf:	e8 04 4e 00 00       	call   804e6d8 <fprintf>
 80498d4:	b8 01 00 00 00       	mov    $0x1,%eax
 80498d9:	eb 6a                	jmp    8049945 <cmd_mv+0x92>
 80498db:	8b 45 0c             	mov    0xc(%ebp),%eax
 80498de:	8b 40 04             	mov    0x4(%eax),%eax
 80498e1:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80498e4:	8b 45 0c             	mov    0xc(%ebp),%eax
 80498e7:	8b 40 08             	mov    0x8(%eax),%eax
 80498ea:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80498ed:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80498f0:	89 44 24 04          	mov    %eax,0x4(%esp)
 80498f4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80498f7:	89 04 24             	mov    %eax,(%esp)
 80498fa:	e8 0d 1c 00 00       	call   804b50c <rename>
 80498ff:	85 c0                	test   %eax,%eax
 8049901:	79 3d                	jns    8049940 <cmd_mv+0x8d>
 8049903:	a1 04 4a 05 08       	mov    0x8054a04,%eax
 8049908:	89 04 24             	mov    %eax,(%esp)
 804990b:	e8 d5 28 00 00       	call   804c1e5 <strerror>
 8049910:	89 c2                	mov    %eax,%edx
 8049912:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8049917:	89 54 24 10          	mov    %edx,0x10(%esp)
 804991b:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804991e:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049922:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049925:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049929:	c7 44 24 04 10 02 05 	movl   $0x8050210,0x4(%esp)
 8049930:	08 
 8049931:	89 04 24             	mov    %eax,(%esp)
 8049934:	e8 9f 4d 00 00       	call   804e6d8 <fprintf>
 8049939:	b8 01 00 00 00       	mov    $0x1,%eax
 804993e:	eb 05                	jmp    8049945 <cmd_mv+0x92>
 8049940:	b8 00 00 00 00       	mov    $0x0,%eax
 8049945:	c9                   	leave  
 8049946:	c3                   	ret    

08049947 <cmd_rm>:
 8049947:	55                   	push   %ebp
 8049948:	89 e5                	mov    %esp,%ebp
 804994a:	83 ec 28             	sub    $0x28,%esp
 804994d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8049954:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
 8049958:	75 1c                	jne    8049976 <cmd_rm+0x2f>
 804995a:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804995f:	c7 44 24 04 31 02 05 	movl   $0x8050231,0x4(%esp)
 8049966:	08 
 8049967:	89 04 24             	mov    %eax,(%esp)
 804996a:	e8 69 4d 00 00       	call   804e6d8 <fprintf>
 804996f:	b8 01 00 00 00       	mov    $0x1,%eax
 8049974:	eb 70                	jmp    80499e6 <cmd_rm+0x9f>
 8049976:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 804997d:	eb 5c                	jmp    80499db <cmd_rm+0x94>
 804997f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049982:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049989:	8b 45 0c             	mov    0xc(%ebp),%eax
 804998c:	01 d0                	add    %edx,%eax
 804998e:	8b 00                	mov    (%eax),%eax
 8049990:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8049993:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049996:	89 04 24             	mov    %eax,(%esp)
 8049999:	e8 aa 1a 00 00       	call   804b448 <unlink>
 804999e:	85 c0                	test   %eax,%eax
 80499a0:	79 36                	jns    80499d8 <cmd_rm+0x91>
 80499a2:	a1 04 4a 05 08       	mov    0x8054a04,%eax
 80499a7:	89 04 24             	mov    %eax,(%esp)
 80499aa:	e8 36 28 00 00       	call   804c1e5 <strerror>
 80499af:	89 c2                	mov    %eax,%edx
 80499b1:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 80499b6:	89 54 24 0c          	mov    %edx,0xc(%esp)
 80499ba:	8b 55 ec             	mov    -0x14(%ebp),%edx
 80499bd:	89 54 24 08          	mov    %edx,0x8(%esp)
 80499c1:	c7 44 24 04 49 02 05 	movl   $0x8050249,0x4(%esp)
 80499c8:	08 
 80499c9:	89 04 24             	mov    %eax,(%esp)
 80499cc:	e8 07 4d 00 00       	call   804e6d8 <fprintf>
 80499d1:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 80499d8:	ff 45 f4             	incl   -0xc(%ebp)
 80499db:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80499de:	3b 45 08             	cmp    0x8(%ebp),%eax
 80499e1:	7c 9c                	jl     804997f <cmd_rm+0x38>
 80499e3:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80499e6:	c9                   	leave  
 80499e7:	c3                   	ret    

080499e8 <cmd_ln>:
 80499e8:	55                   	push   %ebp
 80499e9:	89 e5                	mov    %esp,%ebp
 80499eb:	83 ec 38             	sub    $0x38,%esp
 80499ee:	83 7d 08 03          	cmpl   $0x3,0x8(%ebp)
 80499f2:	74 1c                	je     8049a10 <cmd_ln+0x28>
 80499f4:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 80499f9:	c7 44 24 04 66 02 05 	movl   $0x8050266,0x4(%esp)
 8049a00:	08 
 8049a01:	89 04 24             	mov    %eax,(%esp)
 8049a04:	e8 cf 4c 00 00       	call   804e6d8 <fprintf>
 8049a09:	b8 01 00 00 00       	mov    $0x1,%eax
 8049a0e:	eb 6a                	jmp    8049a7a <cmd_ln+0x92>
 8049a10:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049a13:	8b 40 04             	mov    0x4(%eax),%eax
 8049a16:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049a19:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049a1c:	8b 40 08             	mov    0x8(%eax),%eax
 8049a1f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049a22:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049a25:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049a29:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049a2c:	89 04 24             	mov    %eax,(%esp)
 8049a2f:	e8 6c 1a 00 00       	call   804b4a0 <link>
 8049a34:	85 c0                	test   %eax,%eax
 8049a36:	79 3d                	jns    8049a75 <cmd_ln+0x8d>
 8049a38:	a1 04 4a 05 08       	mov    0x8054a04,%eax
 8049a3d:	89 04 24             	mov    %eax,(%esp)
 8049a40:	e8 a0 27 00 00       	call   804c1e5 <strerror>
 8049a45:	89 c2                	mov    %eax,%edx
 8049a47:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8049a4c:	89 54 24 10          	mov    %edx,0x10(%esp)
 8049a50:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049a53:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049a57:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8049a5a:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049a5e:	c7 44 24 04 80 02 05 	movl   $0x8050280,0x4(%esp)
 8049a65:	08 
 8049a66:	89 04 24             	mov    %eax,(%esp)
 8049a69:	e8 6a 4c 00 00       	call   804e6d8 <fprintf>
 8049a6e:	b8 01 00 00 00       	mov    $0x1,%eax
 8049a73:	eb 05                	jmp    8049a7a <cmd_ln+0x92>
 8049a75:	b8 00 00 00 00       	mov    $0x0,%eax
 8049a7a:	c9                   	leave  
 8049a7b:	c3                   	ret    

08049a7c <cmd_mkdir>:
 8049a7c:	55                   	push   %ebp
 8049a7d:	89 e5                	mov    %esp,%ebp
 8049a7f:	83 ec 28             	sub    $0x28,%esp
 8049a82:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
 8049a86:	74 1c                	je     8049aa4 <cmd_mkdir+0x28>
 8049a88:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8049a8d:	c7 44 24 04 a0 02 05 	movl   $0x80502a0,0x4(%esp)
 8049a94:	08 
 8049a95:	89 04 24             	mov    %eax,(%esp)
 8049a98:	e8 3b 4c 00 00       	call   804e6d8 <fprintf>
 8049a9d:	b8 01 00 00 00       	mov    $0x1,%eax
 8049aa2:	eb 5b                	jmp    8049aff <cmd_mkdir+0x83>
 8049aa4:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049aa7:	8b 40 04             	mov    0x4(%eax),%eax
 8049aaa:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049aad:	c7 44 24 04 ff 01 00 	movl   $0x1ff,0x4(%esp)
 8049ab4:	00 
 8049ab5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049ab8:	89 04 24             	mov    %eax,(%esp)
 8049abb:	e8 d2 18 00 00       	call   804b392 <mkdir>
 8049ac0:	85 c0                	test   %eax,%eax
 8049ac2:	79 36                	jns    8049afa <cmd_mkdir+0x7e>
 8049ac4:	a1 04 4a 05 08       	mov    0x8054a04,%eax
 8049ac9:	89 04 24             	mov    %eax,(%esp)
 8049acc:	e8 14 27 00 00       	call   804c1e5 <strerror>
 8049ad1:	89 c2                	mov    %eax,%edx
 8049ad3:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8049ad8:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049adc:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049adf:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049ae3:	c7 44 24 04 bc 02 05 	movl   $0x80502bc,0x4(%esp)
 8049aea:	08 
 8049aeb:	89 04 24             	mov    %eax,(%esp)
 8049aee:	e8 e5 4b 00 00       	call   804e6d8 <fprintf>
 8049af3:	b8 01 00 00 00       	mov    $0x1,%eax
 8049af8:	eb 05                	jmp    8049aff <cmd_mkdir+0x83>
 8049afa:	b8 00 00 00 00       	mov    $0x0,%eax
 8049aff:	c9                   	leave  
 8049b00:	c3                   	ret    

08049b01 <cmd_clear>:
 8049b01:	55                   	push   %ebp
 8049b02:	89 e5                	mov    %esp,%ebp
 8049b04:	83 ec 18             	sub    $0x18,%esp
 8049b07:	a1 b8 33 05 08       	mov    0x80533b8,%eax
 8049b0c:	c7 44 24 04 db 02 05 	movl   $0x80502db,0x4(%esp)
 8049b13:	08 
 8049b14:	89 04 24             	mov    %eax,(%esp)
 8049b17:	e8 bc 4b 00 00       	call   804e6d8 <fprintf>
 8049b1c:	b8 00 00 00 00       	mov    $0x0,%eax
 8049b21:	c9                   	leave  
 8049b22:	c3                   	ret    

08049b23 <cmd_rmdir>:
 8049b23:	55                   	push   %ebp
 8049b24:	89 e5                	mov    %esp,%ebp
 8049b26:	83 ec 28             	sub    $0x28,%esp
 8049b29:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
 8049b2d:	74 1c                	je     8049b4b <cmd_rmdir+0x28>
 8049b2f:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8049b34:	c7 44 24 04 e2 02 05 	movl   $0x80502e2,0x4(%esp)
 8049b3b:	08 
 8049b3c:	89 04 24             	mov    %eax,(%esp)
 8049b3f:	e8 94 4b 00 00       	call   804e6d8 <fprintf>
 8049b44:	b8 01 00 00 00       	mov    $0x1,%eax
 8049b49:	eb 53                	jmp    8049b9e <cmd_rmdir+0x7b>
 8049b4b:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b4e:	8b 40 04             	mov    0x4(%eax),%eax
 8049b51:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049b54:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049b57:	89 04 24             	mov    %eax,(%esp)
 8049b5a:	e8 91 18 00 00       	call   804b3f0 <rmdir>
 8049b5f:	85 c0                	test   %eax,%eax
 8049b61:	79 36                	jns    8049b99 <cmd_rmdir+0x76>
 8049b63:	a1 04 4a 05 08       	mov    0x8054a04,%eax
 8049b68:	89 04 24             	mov    %eax,(%esp)
 8049b6b:	e8 75 26 00 00       	call   804c1e5 <strerror>
 8049b70:	89 c2                	mov    %eax,%edx
 8049b72:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8049b77:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049b7b:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049b7e:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049b82:	c7 44 24 04 fc 02 05 	movl   $0x80502fc,0x4(%esp)
 8049b89:	08 
 8049b8a:	89 04 24             	mov    %eax,(%esp)
 8049b8d:	e8 46 4b 00 00       	call   804e6d8 <fprintf>
 8049b92:	b8 01 00 00 00       	mov    $0x1,%eax
 8049b97:	eb 05                	jmp    8049b9e <cmd_rmdir+0x7b>
 8049b99:	b8 00 00 00 00       	mov    $0x0,%eax
 8049b9e:	c9                   	leave  
 8049b9f:	c3                   	ret    

08049ba0 <cmd_exit>:
 8049ba0:	55                   	push   %ebp
 8049ba1:	89 e5                	mov    %esp,%ebp
 8049ba3:	83 ec 18             	sub    $0x18,%esp
 8049ba6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049bad:	e8 e0 12 00 00       	call   804ae92 <exit>
 8049bb2:	b8 01 00 00 00       	mov    $0x1,%eax
 8049bb7:	c9                   	leave  
 8049bb8:	c3                   	ret    

08049bb9 <cmd_help>:
 8049bb9:	55                   	push   %ebp
 8049bba:	89 e5                	mov    %esp,%ebp
 8049bbc:	83 ec 28             	sub    $0x28,%esp
 8049bbf:	a1 b8 33 05 08       	mov    0x80533b8,%eax
 8049bc4:	c7 44 24 04 1b 03 05 	movl   $0x805031b,0x4(%esp)
 8049bcb:	08 
 8049bcc:	89 04 24             	mov    %eax,(%esp)
 8049bcf:	e8 04 4b 00 00       	call   804e6d8 <fprintf>
 8049bd4:	c7 45 f4 20 31 05 08 	movl   $0x8053120,-0xc(%ebp)
 8049bdb:	eb 2c                	jmp    8049c09 <cmd_help+0x50>
 8049bdd:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049be0:	8b 48 08             	mov    0x8(%eax),%ecx
 8049be3:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049be6:	8b 10                	mov    (%eax),%edx
 8049be8:	a1 b8 33 05 08       	mov    0x80533b8,%eax
 8049bed:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 8049bf1:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049bf5:	c7 44 24 04 15 01 05 	movl   $0x8050115,0x4(%esp)
 8049bfc:	08 
 8049bfd:	89 04 24             	mov    %eax,(%esp)
 8049c00:	e8 d3 4a 00 00       	call   804e6d8 <fprintf>
 8049c05:	83 45 f4 0c          	addl   $0xc,-0xc(%ebp)
 8049c09:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049c0c:	8b 00                	mov    (%eax),%eax
 8049c0e:	85 c0                	test   %eax,%eax
 8049c10:	75 cb                	jne    8049bdd <cmd_help+0x24>
 8049c12:	b8 00 00 00 00       	mov    $0x0,%eax
 8049c17:	c9                   	leave  
 8049c18:	c3                   	ret    

08049c19 <cmd_cd>:
 8049c19:	55                   	push   %ebp
 8049c1a:	89 e5                	mov    %esp,%ebp
 8049c1c:	83 ec 28             	sub    $0x28,%esp
 8049c1f:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
 8049c23:	7e 1c                	jle    8049c41 <cmd_cd+0x28>
 8049c25:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8049c2a:	c7 44 24 04 2c 03 05 	movl   $0x805032c,0x4(%esp)
 8049c31:	08 
 8049c32:	89 04 24             	mov    %eax,(%esp)
 8049c35:	e8 9e 4a 00 00       	call   804e6d8 <fprintf>
 8049c3a:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c3f:	eb 62                	jmp    8049ca3 <cmd_cd+0x8a>
 8049c41:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
 8049c45:	75 09                	jne    8049c50 <cmd_cd+0x37>
 8049c47:	c7 45 f4 3d 03 05 08 	movl   $0x805033d,-0xc(%ebp)
 8049c4e:	eb 09                	jmp    8049c59 <cmd_cd+0x40>
 8049c50:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049c53:	8b 40 04             	mov    0x4(%eax),%eax
 8049c56:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049c59:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049c5c:	89 04 24             	mov    %eax,(%esp)
 8049c5f:	e8 14 19 00 00       	call   804b578 <chdir>
 8049c64:	85 c0                	test   %eax,%eax
 8049c66:	79 36                	jns    8049c9e <cmd_cd+0x85>
 8049c68:	a1 04 4a 05 08       	mov    0x8054a04,%eax
 8049c6d:	89 04 24             	mov    %eax,(%esp)
 8049c70:	e8 70 25 00 00       	call   804c1e5 <strerror>
 8049c75:	89 c2                	mov    %eax,%edx
 8049c77:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8049c7c:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049c80:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049c83:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049c87:	c7 44 24 04 40 03 05 	movl   $0x8050340,0x4(%esp)
 8049c8e:	08 
 8049c8f:	89 04 24             	mov    %eax,(%esp)
 8049c92:	e8 41 4a 00 00       	call   804e6d8 <fprintf>
 8049c97:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c9c:	eb 05                	jmp    8049ca3 <cmd_cd+0x8a>
 8049c9e:	b8 00 00 00 00       	mov    $0x0,%eax
 8049ca3:	c9                   	leave  
 8049ca4:	c3                   	ret    

08049ca5 <cmd_repeat>:
 8049ca5:	55                   	push   %ebp
 8049ca6:	89 e5                	mov    %esp,%ebp
 8049ca8:	53                   	push   %ebx
 8049ca9:	81 ec 84 00 00 00    	sub    $0x84,%esp
 8049caf:	83 7d 08 02          	cmpl   $0x2,0x8(%ebp)
 8049cb3:	7f 1f                	jg     8049cd4 <cmd_repeat+0x2f>
 8049cb5:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8049cba:	c7 44 24 04 5c 03 05 	movl   $0x805035c,0x4(%esp)
 8049cc1:	08 
 8049cc2:	89 04 24             	mov    %eax,(%esp)
 8049cc5:	e8 0e 4a 00 00       	call   804e6d8 <fprintf>
 8049cca:	b8 01 00 00 00       	mov    $0x1,%eax
 8049ccf:	e9 d5 01 00 00       	jmp    8049ea9 <cmd_repeat+0x204>
 8049cd4:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049cd7:	83 c0 04             	add    $0x4,%eax
 8049cda:	8b 00                	mov    (%eax),%eax
 8049cdc:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 8049ce3:	00 
 8049ce4:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8049ceb:	00 
 8049cec:	89 04 24             	mov    %eax,(%esp)
 8049cef:	e8 7b 1d 00 00       	call   804ba6f <strtol>
 8049cf4:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049cf7:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049cfb:	0f 8f 92 01 00 00    	jg     8049e93 <cmd_repeat+0x1ee>
 8049d01:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8049d06:	c7 44 24 04 88 03 05 	movl   $0x8050388,0x4(%esp)
 8049d0d:	08 
 8049d0e:	89 04 24             	mov    %eax,(%esp)
 8049d11:	e8 c2 49 00 00       	call   804e6d8 <fprintf>
 8049d16:	b8 01 00 00 00       	mov    $0x1,%eax
 8049d1b:	e9 89 01 00 00       	jmp    8049ea9 <cmd_repeat+0x204>
 8049d20:	8b 45 08             	mov    0x8(%ebp),%eax
 8049d23:	c1 e0 02             	shl    $0x2,%eax
 8049d26:	89 04 24             	mov    %eax,(%esp)
 8049d29:	e8 ed 46 00 00       	call   804e41b <malloc>
 8049d2e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 8049d31:	c7 45 ec 02 00 00 00 	movl   $0x2,-0x14(%ebp)
 8049d38:	eb 6f                	jmp    8049da9 <cmd_repeat+0x104>
 8049d3a:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049d3d:	05 fe ff ff 3f       	add    $0x3ffffffe,%eax
 8049d42:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049d49:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049d4c:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
 8049d4f:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049d52:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049d59:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049d5c:	01 d0                	add    %edx,%eax
 8049d5e:	8b 00                	mov    (%eax),%eax
 8049d60:	89 04 24             	mov    %eax,(%esp)
 8049d63:	e8 ef 21 00 00       	call   804bf57 <strlen>
 8049d68:	40                   	inc    %eax
 8049d69:	89 04 24             	mov    %eax,(%esp)
 8049d6c:	e8 aa 46 00 00       	call   804e41b <malloc>
 8049d71:	89 03                	mov    %eax,(%ebx)
 8049d73:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049d76:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049d7d:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049d80:	01 d0                	add    %edx,%eax
 8049d82:	8b 10                	mov    (%eax),%edx
 8049d84:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049d87:	05 fe ff ff 3f       	add    $0x3ffffffe,%eax
 8049d8c:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
 8049d93:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049d96:	01 c8                	add    %ecx,%eax
 8049d98:	8b 00                	mov    (%eax),%eax
 8049d9a:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049d9e:	89 04 24             	mov    %eax,(%esp)
 8049da1:	e8 71 20 00 00       	call   804be17 <strcpy>
 8049da6:	ff 45 ec             	incl   -0x14(%ebp)
 8049da9:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049dac:	3b 45 08             	cmp    0x8(%ebp),%eax
 8049daf:	7c 89                	jl     8049d3a <cmd_repeat+0x95>
 8049db1:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
 8049db8:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8049dbf:	eb 75                	jmp    8049e36 <cmd_repeat+0x191>
 8049dc1:	8b 45 10             	mov    0x10(%ebp),%eax
 8049dc4:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8049dc7:	8b 04 90             	mov    (%eax,%edx,4),%eax
 8049dca:	89 04 24             	mov    %eax,(%esp)
 8049dcd:	e8 35 15 00 00       	call   804b307 <dup>
 8049dd2:	89 45 e0             	mov    %eax,-0x20(%ebp)
 8049dd5:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 8049dd9:	79 3f                	jns    8049e1a <cmd_repeat+0x175>
 8049ddb:	a1 04 4a 05 08       	mov    0x8054a04,%eax
 8049de0:	89 04 24             	mov    %eax,(%esp)
 8049de3:	e8 fd 23 00 00       	call   804c1e5 <strerror>
 8049de8:	89 c1                	mov    %eax,%ecx
 8049dea:	8b 45 10             	mov    0x10(%ebp),%eax
 8049ded:	8b 55 f0             	mov    -0x10(%ebp),%edx
 8049df0:	8b 14 90             	mov    (%eax,%edx,4),%edx
 8049df3:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8049df8:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 8049dfc:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049e00:	c7 44 24 04 ab 03 05 	movl   $0x80503ab,0x4(%esp)
 8049e07:	08 
 8049e08:	89 04 24             	mov    %eax,(%esp)
 8049e0b:	e8 c8 48 00 00       	call   804e6d8 <fprintf>
 8049e10:	b8 01 00 00 00       	mov    $0x1,%eax
 8049e15:	e9 8f 00 00 00       	jmp    8049ea9 <cmd_repeat+0x204>
 8049e1a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049e1d:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049e21:	8b 45 e0             	mov    -0x20(%ebp),%eax
 8049e24:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049e28:	8d 45 8c             	lea    -0x74(%ebp),%eax
 8049e2b:	89 04 24             	mov    %eax,(%esp)
 8049e2e:	e8 73 07 00 00       	call   804a5a6 <add_redirect>
 8049e33:	ff 45 f0             	incl   -0x10(%ebp)
 8049e36:	83 7d f0 02          	cmpl   $0x2,-0x10(%ebp)
 8049e3a:	7e 85                	jle    8049dc1 <cmd_repeat+0x11c>
 8049e3c:	8b 45 08             	mov    0x8(%ebp),%eax
 8049e3f:	8d 50 fe             	lea    -0x2(%eax),%edx
 8049e42:	8d 45 8c             	lea    -0x74(%ebp),%eax
 8049e45:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049e49:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049e4c:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049e50:	89 14 24             	mov    %edx,(%esp)
 8049e53:	e8 38 04 00 00       	call   804a290 <execute>
 8049e58:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 8049e5f:	eb 1c                	jmp    8049e7d <cmd_repeat+0x1d8>
 8049e61:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049e64:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049e6b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049e6e:	01 d0                	add    %edx,%eax
 8049e70:	8b 00                	mov    (%eax),%eax
 8049e72:	89 04 24             	mov    %eax,(%esp)
 8049e75:	e8 5a 46 00 00       	call   804e4d4 <free>
 8049e7a:	ff 45 e8             	incl   -0x18(%ebp)
 8049e7d:	8b 45 08             	mov    0x8(%ebp),%eax
 8049e80:	83 e8 02             	sub    $0x2,%eax
 8049e83:	3b 45 e8             	cmp    -0x18(%ebp),%eax
 8049e86:	7f d9                	jg     8049e61 <cmd_repeat+0x1bc>
 8049e88:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8049e8b:	89 04 24             	mov    %eax,(%esp)
 8049e8e:	e8 41 46 00 00       	call   804e4d4 <free>
 8049e93:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049e96:	8d 50 ff             	lea    -0x1(%eax),%edx
 8049e99:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8049e9c:	85 c0                	test   %eax,%eax
 8049e9e:	0f 85 7c fe ff ff    	jne    8049d20 <cmd_repeat+0x7b>
 8049ea4:	b8 00 00 00 00       	mov    $0x0,%eax
 8049ea9:	81 c4 84 00 00 00    	add    $0x84,%esp
 8049eaf:	5b                   	pop    %ebx
 8049eb0:	5d                   	pop    %ebp
 8049eb1:	c3                   	ret    

08049eb2 <cmd_parallel>:
 8049eb2:	55                   	push   %ebp
 8049eb3:	89 e5                	mov    %esp,%ebp
 8049eb5:	81 ec 08 02 00 00    	sub    $0x208,%esp
 8049ebb:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 8049ec2:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
 8049ec6:	7f 1f                	jg     8049ee7 <cmd_parallel+0x35>
 8049ec8:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8049ecd:	c7 44 24 04 c8 03 05 	movl   $0x80503c8,0x4(%esp)
 8049ed4:	08 
 8049ed5:	89 04 24             	mov    %eax,(%esp)
 8049ed8:	e8 fb 47 00 00       	call   804e6d8 <fprintf>
 8049edd:	b8 01 00 00 00       	mov    $0x1,%eax
 8049ee2:	e9 50 02 00 00       	jmp    804a137 <cmd_parallel+0x285>
 8049ee7:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 8049eee:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049ef1:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049ef4:	e9 c2 00 00 00       	jmp    8049fbb <cmd_parallel+0x109>
 8049ef9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049efc:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049f03:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049f06:	01 d0                	add    %edx,%eax
 8049f08:	8b 00                	mov    (%eax),%eax
 8049f0a:	c7 44 24 04 01 04 05 	movl   $0x8050401,0x4(%esp)
 8049f11:	08 
 8049f12:	89 04 24             	mov    %eax,(%esp)
 8049f15:	e8 b9 1e 00 00       	call   804bdd3 <strcmp>
 8049f1a:	85 c0                	test   %eax,%eax
 8049f1c:	0f 85 96 00 00 00    	jne    8049fb8 <cmd_parallel+0x106>
 8049f22:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049f25:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 8049f28:	75 1f                	jne    8049f49 <cmd_parallel+0x97>
 8049f2a:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8049f2f:	c7 44 24 04 04 04 05 	movl   $0x8050404,0x4(%esp)
 8049f36:	08 
 8049f37:	89 04 24             	mov    %eax,(%esp)
 8049f3a:	e8 99 47 00 00       	call   804e6d8 <fprintf>
 8049f3f:	b8 01 00 00 00       	mov    $0x1,%eax
 8049f44:	e9 ee 01 00 00       	jmp    804a137 <cmd_parallel+0x285>
 8049f49:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049f4c:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049f53:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049f56:	01 d0                	add    %edx,%eax
 8049f58:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8049f5e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049f61:	2b 45 f0             	sub    -0x10(%ebp),%eax
 8049f64:	89 c2                	mov    %eax,%edx
 8049f66:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049f69:	89 94 85 e4 fe ff ff 	mov    %edx,-0x11c(%ebp,%eax,4)
 8049f70:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049f73:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049f7a:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049f7d:	01 c2                	add    %eax,%edx
 8049f7f:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049f82:	89 94 85 64 ff ff ff 	mov    %edx,-0x9c(%ebp,%eax,4)
 8049f89:	ff 45 ec             	incl   -0x14(%ebp)
 8049f8c:	83 7d ec 20          	cmpl   $0x20,-0x14(%ebp)
 8049f90:	7e 1f                	jle    8049fb1 <cmd_parallel+0xff>
 8049f92:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8049f97:	c7 44 24 04 13 04 05 	movl   $0x8050413,0x4(%esp)
 8049f9e:	08 
 8049f9f:	89 04 24             	mov    %eax,(%esp)
 8049fa2:	e8 31 47 00 00       	call   804e6d8 <fprintf>
 8049fa7:	b8 01 00 00 00       	mov    $0x1,%eax
 8049fac:	e9 86 01 00 00       	jmp    804a137 <cmd_parallel+0x285>
 8049fb1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049fb4:	40                   	inc    %eax
 8049fb5:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049fb8:	ff 45 f4             	incl   -0xc(%ebp)
 8049fbb:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049fbe:	3b 45 08             	cmp    0x8(%ebp),%eax
 8049fc1:	0f 8c 32 ff ff ff    	jl     8049ef9 <cmd_parallel+0x47>
 8049fc7:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049fca:	3b 45 08             	cmp    0x8(%ebp),%eax
 8049fcd:	75 1f                	jne    8049fee <cmd_parallel+0x13c>
 8049fcf:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 8049fd4:	c7 44 24 04 04 04 05 	movl   $0x8050404,0x4(%esp)
 8049fdb:	08 
 8049fdc:	89 04 24             	mov    %eax,(%esp)
 8049fdf:	e8 f4 46 00 00       	call   804e6d8 <fprintf>
 8049fe4:	b8 01 00 00 00       	mov    $0x1,%eax
 8049fe9:	e9 49 01 00 00       	jmp    804a137 <cmd_parallel+0x285>
 8049fee:	8b 45 08             	mov    0x8(%ebp),%eax
 8049ff1:	2b 45 f0             	sub    -0x10(%ebp),%eax
 8049ff4:	89 c2                	mov    %eax,%edx
 8049ff6:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049ff9:	89 94 85 e4 fe ff ff 	mov    %edx,-0x11c(%ebp,%eax,4)
 804a000:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a003:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804a00a:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a00d:	01 c2                	add    %eax,%edx
 804a00f:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804a012:	89 94 85 64 ff ff ff 	mov    %edx,-0x9c(%ebp,%eax,4)
 804a019:	ff 45 ec             	incl   -0x14(%ebp)
 804a01c:	83 7d ec 20          	cmpl   $0x20,-0x14(%ebp)
 804a020:	7e 1f                	jle    804a041 <cmd_parallel+0x18f>
 804a022:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804a027:	c7 44 24 04 13 04 05 	movl   $0x8050413,0x4(%esp)
 804a02e:	08 
 804a02f:	89 04 24             	mov    %eax,(%esp)
 804a032:	e8 a1 46 00 00       	call   804e6d8 <fprintf>
 804a037:	b8 01 00 00 00       	mov    $0x1,%eax
 804a03c:	e9 f6 00 00 00       	jmp    804a137 <cmd_parallel+0x285>
 804a041:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804a048:	e9 b6 00 00 00       	jmp    804a103 <cmd_parallel+0x251>
 804a04d:	e8 84 0d 00 00       	call   804add6 <fork>
 804a052:	89 c2                	mov    %eax,%edx
 804a054:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a057:	89 94 85 64 fe ff ff 	mov    %edx,-0x19c(%ebp,%eax,4)
 804a05e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a061:	8b 84 85 64 fe ff ff 	mov    -0x19c(%ebp,%eax,4),%eax
 804a068:	85 c0                	test   %eax,%eax
 804a06a:	0f 85 90 00 00 00    	jne    804a100 <cmd_parallel+0x24e>
 804a070:	c7 85 0c fe ff ff 00 	movl   $0x0,-0x1f4(%ebp)
 804a077:	00 00 00 
 804a07a:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 804a081:	eb 45                	jmp    804a0c8 <cmd_parallel+0x216>
 804a083:	8b 45 10             	mov    0x10(%ebp),%eax
 804a086:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804a089:	8b 04 90             	mov    (%eax,%edx,4),%eax
 804a08c:	89 04 24             	mov    %eax,(%esp)
 804a08f:	e8 73 12 00 00       	call   804b307 <dup>
 804a094:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804a097:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 804a09b:	79 0c                	jns    804a0a9 <cmd_parallel+0x1f7>
 804a09d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804a0a4:	e8 e9 0d 00 00       	call   804ae92 <exit>
 804a0a9:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804a0ac:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a0b0:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a0b3:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a0b7:	8d 85 0c fe ff ff    	lea    -0x1f4(%ebp),%eax
 804a0bd:	89 04 24             	mov    %eax,(%esp)
 804a0c0:	e8 e1 04 00 00       	call   804a5a6 <add_redirect>
 804a0c5:	ff 45 e8             	incl   -0x18(%ebp)
 804a0c8:	83 7d e8 02          	cmpl   $0x2,-0x18(%ebp)
 804a0cc:	7e b5                	jle    804a083 <cmd_parallel+0x1d1>
 804a0ce:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a0d1:	8b 94 85 64 ff ff ff 	mov    -0x9c(%ebp,%eax,4),%edx
 804a0d8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a0db:	8b 84 85 e4 fe ff ff 	mov    -0x11c(%ebp,%eax,4),%eax
 804a0e2:	8d 8d 0c fe ff ff    	lea    -0x1f4(%ebp),%ecx
 804a0e8:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 804a0ec:	89 54 24 04          	mov    %edx,0x4(%esp)
 804a0f0:	89 04 24             	mov    %eax,(%esp)
 804a0f3:	e8 98 01 00 00       	call   804a290 <execute>
 804a0f8:	89 04 24             	mov    %eax,(%esp)
 804a0fb:	e8 92 0d 00 00       	call   804ae92 <exit>
 804a100:	ff 45 f4             	incl   -0xc(%ebp)
 804a103:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a106:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 804a109:	0f 8c 3e ff ff ff    	jl     804a04d <cmd_parallel+0x19b>
 804a10f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804a116:	eb 11                	jmp    804a129 <cmd_parallel+0x277>
 804a118:	8d 85 60 fe ff ff    	lea    -0x1a0(%ebp),%eax
 804a11e:	89 04 24             	mov    %eax,(%esp)
 804a121:	e8 fb 0d 00 00       	call   804af21 <wait>
 804a126:	ff 45 f4             	incl   -0xc(%ebp)
 804a129:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a12c:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 804a12f:	7c e7                	jl     804a118 <cmd_parallel+0x266>
 804a131:	8b 85 60 fe ff ff    	mov    -0x1a0(%ebp),%eax
 804a137:	c9                   	leave  
 804a138:	c3                   	ret    

0804a139 <do_redirect>:
 804a139:	55                   	push   %ebp
 804a13a:	89 e5                	mov    %esp,%ebp
 804a13c:	83 ec 28             	sub    $0x28,%esp
 804a13f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804a146:	eb 6d                	jmp    804a1b5 <do_redirect+0x7c>
 804a148:	8b 45 08             	mov    0x8(%ebp),%eax
 804a14b:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804a14e:	8b 44 d0 04          	mov    0x4(%eax,%edx,8),%eax
 804a152:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a155:	8b 45 08             	mov    0x8(%ebp),%eax
 804a158:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804a15b:	8b 44 d0 08          	mov    0x8(%eax,%edx,8),%eax
 804a15f:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a162:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804a165:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a169:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a16c:	89 04 24             	mov    %eax,(%esp)
 804a16f:	e8 d3 11 00 00       	call   804b347 <dup2>
 804a174:	85 c0                	test   %eax,%eax
 804a176:	79 2f                	jns    804a1a7 <do_redirect+0x6e>
 804a178:	a1 04 4a 05 08       	mov    0x8054a04,%eax
 804a17d:	89 04 24             	mov    %eax,(%esp)
 804a180:	e8 60 20 00 00       	call   804c1e5 <strerror>
 804a185:	89 c2                	mov    %eax,%edx
 804a187:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804a18c:	89 54 24 08          	mov    %edx,0x8(%esp)
 804a190:	c7 44 24 04 28 04 05 	movl   $0x8050428,0x4(%esp)
 804a197:	08 
 804a198:	89 04 24             	mov    %eax,(%esp)
 804a19b:	e8 38 45 00 00       	call   804e6d8 <fprintf>
 804a1a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a1a5:	eb 1d                	jmp    804a1c4 <do_redirect+0x8b>
 804a1a7:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a1aa:	89 04 24             	mov    %eax,(%esp)
 804a1ad:	e8 15 11 00 00       	call   804b2c7 <close>
 804a1b2:	ff 45 f4             	incl   -0xc(%ebp)
 804a1b5:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1b8:	8b 00                	mov    (%eax),%eax
 804a1ba:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 804a1bd:	7f 89                	jg     804a148 <do_redirect+0xf>
 804a1bf:	b8 00 00 00 00       	mov    $0x0,%eax
 804a1c4:	c9                   	leave  
 804a1c5:	c3                   	ret    

0804a1c6 <cleanup_redirects>:
 804a1c6:	55                   	push   %ebp
 804a1c7:	89 e5                	mov    %esp,%ebp
 804a1c9:	83 ec 28             	sub    $0x28,%esp
 804a1cc:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804a1d3:	eb 15                	jmp    804a1ea <cleanup_redirects+0x24>
 804a1d5:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1d8:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804a1db:	8b 44 d0 04          	mov    0x4(%eax,%edx,8),%eax
 804a1df:	89 04 24             	mov    %eax,(%esp)
 804a1e2:	e8 e0 10 00 00       	call   804b2c7 <close>
 804a1e7:	ff 45 f4             	incl   -0xc(%ebp)
 804a1ea:	8b 45 08             	mov    0x8(%ebp),%eax
 804a1ed:	8b 00                	mov    (%eax),%eax
 804a1ef:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 804a1f2:	7f e1                	jg     804a1d5 <cleanup_redirects+0xf>
 804a1f4:	90                   	nop
 804a1f5:	c9                   	leave  
 804a1f6:	c3                   	ret    

0804a1f7 <build_ioenv>:
 804a1f7:	55                   	push   %ebp
 804a1f8:	89 e5                	mov    %esp,%ebp
 804a1fa:	83 ec 10             	sub    $0x10,%esp
 804a1fd:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 804a204:	eb 0f                	jmp    804a215 <build_ioenv+0x1e>
 804a206:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a209:	8b 55 fc             	mov    -0x4(%ebp),%edx
 804a20c:	8b 4d fc             	mov    -0x4(%ebp),%ecx
 804a20f:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
 804a212:	ff 45 fc             	incl   -0x4(%ebp)
 804a215:	83 7d fc 02          	cmpl   $0x2,-0x4(%ebp)
 804a219:	7e eb                	jle    804a206 <build_ioenv+0xf>
 804a21b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 804a222:	eb 35                	jmp    804a259 <build_ioenv+0x62>
 804a224:	8b 45 08             	mov    0x8(%ebp),%eax
 804a227:	8b 55 fc             	mov    -0x4(%ebp),%edx
 804a22a:	8b 44 d0 04          	mov    0x4(%eax,%edx,8),%eax
 804a22e:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804a231:	8b 45 08             	mov    0x8(%ebp),%eax
 804a234:	8b 55 fc             	mov    -0x4(%ebp),%edx
 804a237:	8b 44 d0 08          	mov    0x8(%eax,%edx,8),%eax
 804a23b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a23e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804a242:	78 12                	js     804a256 <build_ioenv+0x5f>
 804a244:	83 7d f4 02          	cmpl   $0x2,-0xc(%ebp)
 804a248:	7f 0c                	jg     804a256 <build_ioenv+0x5f>
 804a24a:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a24d:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804a250:	8b 4d f8             	mov    -0x8(%ebp),%ecx
 804a253:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
 804a256:	ff 45 fc             	incl   -0x4(%ebp)
 804a259:	8b 45 08             	mov    0x8(%ebp),%eax
 804a25c:	8b 00                	mov    (%eax),%eax
 804a25e:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 804a261:	7f c1                	jg     804a224 <build_ioenv+0x2d>
 804a263:	90                   	nop
 804a264:	c9                   	leave  
 804a265:	c3                   	ret    

0804a266 <destroy_ioenv>:
 804a266:	55                   	push   %ebp
 804a267:	89 e5                	mov    %esp,%ebp
 804a269:	90                   	nop
 804a26a:	5d                   	pop    %ebp
 804a26b:	c3                   	ret    

0804a26c <builtin_exec>:
 804a26c:	55                   	push   %ebp
 804a26d:	89 e5                	mov    %esp,%ebp
 804a26f:	83 ec 18             	sub    $0x18,%esp
 804a272:	8b 45 08             	mov    0x8(%ebp),%eax
 804a275:	8b 40 04             	mov    0x4(%eax),%eax
 804a278:	8b 55 14             	mov    0x14(%ebp),%edx
 804a27b:	89 54 24 08          	mov    %edx,0x8(%esp)
 804a27f:	8b 55 10             	mov    0x10(%ebp),%edx
 804a282:	89 54 24 04          	mov    %edx,0x4(%esp)
 804a286:	8b 55 0c             	mov    0xc(%ebp),%edx
 804a289:	89 14 24             	mov    %edx,(%esp)
 804a28c:	ff d0                	call   *%eax
 804a28e:	c9                   	leave  
 804a28f:	c3                   	ret    

0804a290 <execute>:
 804a290:	55                   	push   %ebp
 804a291:	89 e5                	mov    %esp,%ebp
 804a293:	81 ec 38 01 00 00    	sub    $0x138,%esp
 804a299:	c7 45 f4 20 31 05 08 	movl   $0x8053120,-0xc(%ebp)
 804a2a0:	eb 1e                	jmp    804a2c0 <execute+0x30>
 804a2a2:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a2a5:	8b 10                	mov    (%eax),%edx
 804a2a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a2aa:	8b 00                	mov    (%eax),%eax
 804a2ac:	89 54 24 04          	mov    %edx,0x4(%esp)
 804a2b0:	89 04 24             	mov    %eax,(%esp)
 804a2b3:	e8 1b 1b 00 00       	call   804bdd3 <strcmp>
 804a2b8:	85 c0                	test   %eax,%eax
 804a2ba:	74 0f                	je     804a2cb <execute+0x3b>
 804a2bc:	83 45 f4 0c          	addl   $0xc,-0xc(%ebp)
 804a2c0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a2c3:	8b 00                	mov    (%eax),%eax
 804a2c5:	85 c0                	test   %eax,%eax
 804a2c7:	75 d9                	jne    804a2a2 <execute+0x12>
 804a2c9:	eb 01                	jmp    804a2cc <execute+0x3c>
 804a2cb:	90                   	nop
 804a2cc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a2cf:	8b 00                	mov    (%eax),%eax
 804a2d1:	85 c0                	test   %eax,%eax
 804a2d3:	74 55                	je     804a32a <execute+0x9a>
 804a2d5:	8d 45 dc             	lea    -0x24(%ebp),%eax
 804a2d8:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a2dc:	8b 45 10             	mov    0x10(%ebp),%eax
 804a2df:	89 04 24             	mov    %eax,(%esp)
 804a2e2:	e8 10 ff ff ff       	call   804a1f7 <build_ioenv>
 804a2e7:	8d 45 dc             	lea    -0x24(%ebp),%eax
 804a2ea:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804a2ee:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a2f1:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a2f5:	8b 45 08             	mov    0x8(%ebp),%eax
 804a2f8:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a2fc:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a2ff:	89 04 24             	mov    %eax,(%esp)
 804a302:	e8 65 ff ff ff       	call   804a26c <builtin_exec>
 804a307:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804a30a:	8d 45 dc             	lea    -0x24(%ebp),%eax
 804a30d:	89 04 24             	mov    %eax,(%esp)
 804a310:	e8 51 ff ff ff       	call   804a266 <destroy_ioenv>
 804a315:	8b 45 10             	mov    0x10(%ebp),%eax
 804a318:	89 04 24             	mov    %eax,(%esp)
 804a31b:	e8 a6 fe ff ff       	call   804a1c6 <cleanup_redirects>
 804a320:	b8 00 00 00 00       	mov    $0x0,%eax
 804a325:	e9 57 01 00 00       	jmp    804a481 <execute+0x1f1>
 804a32a:	e8 a7 0a 00 00       	call   804add6 <fork>
 804a32f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a332:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804a336:	0f 85 e7 00 00 00    	jne    804a423 <execute+0x193>
 804a33c:	8b 45 10             	mov    0x10(%ebp),%eax
 804a33f:	89 04 24             	mov    %eax,(%esp)
 804a342:	e8 f2 fd ff ff       	call   804a139 <do_redirect>
 804a347:	85 c0                	test   %eax,%eax
 804a349:	79 0c                	jns    804a357 <execute+0xc7>
 804a34b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804a352:	e8 3b 0b 00 00       	call   804ae92 <exit>
 804a357:	8b 15 e0 34 05 08    	mov    0x80534e0,%edx
 804a35d:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a360:	8b 00                	mov    (%eax),%eax
 804a362:	89 54 24 08          	mov    %edx,0x8(%esp)
 804a366:	8b 55 0c             	mov    0xc(%ebp),%edx
 804a369:	89 54 24 04          	mov    %edx,0x4(%esp)
 804a36d:	89 04 24             	mov    %eax,(%esp)
 804a370:	e8 9b 12 00 00       	call   804b610 <execve>
 804a375:	a1 04 4a 05 08       	mov    0x8054a04,%eax
 804a37a:	83 f8 02             	cmp    $0x2,%eax
 804a37d:	75 65                	jne    804a3e4 <execute+0x154>
 804a37f:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a382:	8b 00                	mov    (%eax),%eax
 804a384:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804a388:	c7 44 24 08 48 04 05 	movl   $0x8050448,0x8(%esp)
 804a38f:	08 
 804a390:	c7 44 24 04 ff 00 00 	movl   $0xff,0x4(%esp)
 804a397:	00 
 804a398:	8d 85 dc fe ff ff    	lea    -0x124(%ebp),%eax
 804a39e:	89 04 24             	mov    %eax,(%esp)
 804a3a1:	e8 ae 43 00 00       	call   804e754 <snprintf>
 804a3a6:	a1 e0 34 05 08       	mov    0x80534e0,%eax
 804a3ab:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a3af:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a3b2:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a3b6:	8d 85 dc fe ff ff    	lea    -0x124(%ebp),%eax
 804a3bc:	89 04 24             	mov    %eax,(%esp)
 804a3bf:	e8 4c 12 00 00       	call   804b610 <execve>
 804a3c4:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a3c7:	8b 10                	mov    (%eax),%edx
 804a3c9:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804a3ce:	89 54 24 08          	mov    %edx,0x8(%esp)
 804a3d2:	c7 44 24 04 54 04 05 	movl   $0x8050454,0x4(%esp)
 804a3d9:	08 
 804a3da:	89 04 24             	mov    %eax,(%esp)
 804a3dd:	e8 f6 42 00 00       	call   804e6d8 <fprintf>
 804a3e2:	eb 31                	jmp    804a415 <execute+0x185>
 804a3e4:	a1 04 4a 05 08       	mov    0x8054a04,%eax
 804a3e9:	89 04 24             	mov    %eax,(%esp)
 804a3ec:	e8 f4 1d 00 00       	call   804c1e5 <strerror>
 804a3f1:	89 c1                	mov    %eax,%ecx
 804a3f3:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a3f6:	8b 10                	mov    (%eax),%edx
 804a3f8:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804a3fd:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 804a401:	89 54 24 08          	mov    %edx,0x8(%esp)
 804a405:	c7 44 24 04 6f 04 05 	movl   $0x805046f,0x4(%esp)
 804a40c:	08 
 804a40d:	89 04 24             	mov    %eax,(%esp)
 804a410:	e8 c3 42 00 00       	call   804e6d8 <fprintf>
 804a415:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804a41c:	e8 71 0a 00 00       	call   804ae92 <exit>
 804a421:	eb 25                	jmp    804a448 <execute+0x1b8>
 804a423:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804a427:	79 1f                	jns    804a448 <execute+0x1b8>
 804a429:	8b 15 04 4a 05 08    	mov    0x8054a04,%edx
 804a42f:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804a434:	89 54 24 08          	mov    %edx,0x8(%esp)
 804a438:	c7 44 24 04 8b 04 05 	movl   $0x805048b,0x4(%esp)
 804a43f:	08 
 804a440:	89 04 24             	mov    %eax,(%esp)
 804a443:	e8 90 42 00 00       	call   804e6d8 <fprintf>
 804a448:	8b 45 10             	mov    0x10(%ebp),%eax
 804a44b:	89 04 24             	mov    %eax,(%esp)
 804a44e:	e8 73 fd ff ff       	call   804a1c6 <cleanup_redirects>
 804a453:	8d 45 e8             	lea    -0x18(%ebp),%eax
 804a456:	89 04 24             	mov    %eax,(%esp)
 804a459:	e8 c3 0a 00 00       	call   804af21 <wait>
 804a45e:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a461:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804a464:	83 f8 0e             	cmp    $0xe,%eax
 804a467:	75 15                	jne    804a47e <execute+0x1ee>
 804a469:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804a46e:	c7 44 24 04 a8 04 05 	movl   $0x80504a8,0x4(%esp)
 804a475:	08 
 804a476:	89 04 24             	mov    %eax,(%esp)
 804a479:	e8 5a 42 00 00       	call   804e6d8 <fprintf>
 804a47e:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804a481:	c9                   	leave  
 804a482:	c3                   	ret    

0804a483 <parse_redirect_dfd>:
 804a483:	55                   	push   %ebp
 804a484:	89 e5                	mov    %esp,%ebp
 804a486:	83 ec 28             	sub    $0x28,%esp
 804a489:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a48c:	8b 00                	mov    (%eax),%eax
 804a48e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a491:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a494:	3b 45 08             	cmp    0x8(%ebp),%eax
 804a497:	75 0a                	jne    804a4a3 <parse_redirect_dfd+0x20>
 804a499:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a49e:	e9 c5 00 00 00       	jmp    804a568 <parse_redirect_dfd+0xe5>
 804a4a3:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a4a6:	c6 00 00             	movb   $0x0,(%eax)
 804a4a9:	ff 4d f4             	decl   -0xc(%ebp)
 804a4ac:	eb 03                	jmp    804a4b1 <parse_redirect_dfd+0x2e>
 804a4ae:	ff 4d f4             	decl   -0xc(%ebp)
 804a4b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a4b4:	3b 45 08             	cmp    0x8(%ebp),%eax
 804a4b7:	74 1a                	je     804a4d3 <parse_redirect_dfd+0x50>
 804a4b9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a4bc:	0f b6 00             	movzbl (%eax),%eax
 804a4bf:	0f b6 c0             	movzbl %al,%eax
 804a4c2:	0f b6 80 20 30 05 08 	movzbl 0x8053020(%eax),%eax
 804a4c9:	0f b6 c0             	movzbl %al,%eax
 804a4cc:	83 e0 20             	and    $0x20,%eax
 804a4cf:	85 c0                	test   %eax,%eax
 804a4d1:	75 db                	jne    804a4ae <parse_redirect_dfd+0x2b>
 804a4d3:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a4d6:	3b 45 08             	cmp    0x8(%ebp),%eax
 804a4d9:	75 0d                	jne    804a4e8 <parse_redirect_dfd+0x65>
 804a4db:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a4e0:	e9 83 00 00 00       	jmp    804a568 <parse_redirect_dfd+0xe5>
 804a4e5:	ff 4d f4             	decl   -0xc(%ebp)
 804a4e8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a4eb:	3b 45 08             	cmp    0x8(%ebp),%eax
 804a4ee:	74 1a                	je     804a50a <parse_redirect_dfd+0x87>
 804a4f0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a4f3:	0f b6 00             	movzbl (%eax),%eax
 804a4f6:	0f b6 c0             	movzbl %al,%eax
 804a4f9:	0f b6 80 20 30 05 08 	movzbl 0x8053020(%eax),%eax
 804a500:	0f b6 c0             	movzbl %al,%eax
 804a503:	83 e0 04             	and    $0x4,%eax
 804a506:	85 c0                	test   %eax,%eax
 804a508:	75 db                	jne    804a4e5 <parse_redirect_dfd+0x62>
 804a50a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a50d:	0f b6 00             	movzbl (%eax),%eax
 804a510:	0f b6 c0             	movzbl %al,%eax
 804a513:	0f b6 80 20 30 05 08 	movzbl 0x8053020(%eax),%eax
 804a51a:	0f b6 c0             	movzbl %al,%eax
 804a51d:	83 e0 20             	and    $0x20,%eax
 804a520:	85 c0                	test   %eax,%eax
 804a522:	75 21                	jne    804a545 <parse_redirect_dfd+0xc2>
 804a524:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a527:	0f b6 00             	movzbl (%eax),%eax
 804a52a:	0f b6 c0             	movzbl %al,%eax
 804a52d:	0f b6 80 20 30 05 08 	movzbl 0x8053020(%eax),%eax
 804a534:	0f b6 c0             	movzbl %al,%eax
 804a537:	83 e0 04             	and    $0x4,%eax
 804a53a:	85 c0                	test   %eax,%eax
 804a53c:	75 07                	jne    804a545 <parse_redirect_dfd+0xc2>
 804a53e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a543:	eb 23                	jmp    804a568 <parse_redirect_dfd+0xe5>
 804a545:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a548:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804a54b:	89 10                	mov    %edx,(%eax)
 804a54d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804a554:	00 
 804a555:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804a55c:	00 
 804a55d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a560:	89 04 24             	mov    %eax,(%esp)
 804a563:	e8 07 15 00 00       	call   804ba6f <strtol>
 804a568:	c9                   	leave  
 804a569:	c3                   	ret    

0804a56a <redirect_default_fd>:
 804a56a:	55                   	push   %ebp
 804a56b:	89 e5                	mov    %esp,%ebp
 804a56d:	83 ec 18             	sub    $0x18,%esp
 804a570:	83 7d 08 3c          	cmpl   $0x3c,0x8(%ebp)
 804a574:	75 07                	jne    804a57d <redirect_default_fd+0x13>
 804a576:	b8 00 00 00 00       	mov    $0x0,%eax
 804a57b:	eb 27                	jmp    804a5a4 <redirect_default_fd+0x3a>
 804a57d:	83 7d 08 3e          	cmpl   $0x3e,0x8(%ebp)
 804a581:	75 07                	jne    804a58a <redirect_default_fd+0x20>
 804a583:	b8 01 00 00 00       	mov    $0x1,%eax
 804a588:	eb 1a                	jmp    804a5a4 <redirect_default_fd+0x3a>
 804a58a:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804a58f:	c7 44 24 04 d3 04 05 	movl   $0x80504d3,0x4(%esp)
 804a596:	08 
 804a597:	89 04 24             	mov    %eax,(%esp)
 804a59a:	e8 39 41 00 00       	call   804e6d8 <fprintf>
 804a59f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a5a4:	c9                   	leave  
 804a5a5:	c3                   	ret    

0804a5a6 <add_redirect>:
 804a5a6:	55                   	push   %ebp
 804a5a7:	89 e5                	mov    %esp,%ebp
 804a5a9:	8b 45 08             	mov    0x8(%ebp),%eax
 804a5ac:	8b 10                	mov    (%eax),%edx
 804a5ae:	8b 45 08             	mov    0x8(%ebp),%eax
 804a5b1:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 804a5b4:	89 4c d0 04          	mov    %ecx,0x4(%eax,%edx,8)
 804a5b8:	8b 45 08             	mov    0x8(%ebp),%eax
 804a5bb:	8b 10                	mov    (%eax),%edx
 804a5bd:	8b 45 08             	mov    0x8(%ebp),%eax
 804a5c0:	8b 4d 10             	mov    0x10(%ebp),%ecx
 804a5c3:	89 4c d0 08          	mov    %ecx,0x8(%eax,%edx,8)
 804a5c7:	8b 45 08             	mov    0x8(%ebp),%eax
 804a5ca:	8b 00                	mov    (%eax),%eax
 804a5cc:	8d 50 01             	lea    0x1(%eax),%edx
 804a5cf:	8b 45 08             	mov    0x8(%ebp),%eax
 804a5d2:	89 10                	mov    %edx,(%eax)
 804a5d4:	90                   	nop
 804a5d5:	5d                   	pop    %ebp
 804a5d6:	c3                   	ret    

0804a5d7 <parse_redirect_dup>:
 804a5d7:	55                   	push   %ebp
 804a5d8:	89 e5                	mov    %esp,%ebp
 804a5da:	83 ec 28             	sub    $0x28,%esp
 804a5dd:	eb 03                	jmp    804a5e2 <parse_redirect_dup+0xb>
 804a5df:	ff 45 18             	incl   0x18(%ebp)
 804a5e2:	8b 45 18             	mov    0x18(%ebp),%eax
 804a5e5:	0f b6 00             	movzbl (%eax),%eax
 804a5e8:	84 c0                	test   %al,%al
 804a5ea:	74 1a                	je     804a606 <parse_redirect_dup+0x2f>
 804a5ec:	8b 45 18             	mov    0x18(%ebp),%eax
 804a5ef:	0f b6 00             	movzbl (%eax),%eax
 804a5f2:	0f b6 c0             	movzbl %al,%eax
 804a5f5:	0f b6 80 20 30 05 08 	movzbl 0x8053020(%eax),%eax
 804a5fc:	0f b6 c0             	movzbl %al,%eax
 804a5ff:	83 e0 20             	and    $0x20,%eax
 804a602:	85 c0                	test   %eax,%eax
 804a604:	75 d9                	jne    804a5df <parse_redirect_dup+0x8>
 804a606:	8b 45 18             	mov    0x18(%ebp),%eax
 804a609:	0f b6 00             	movzbl (%eax),%eax
 804a60c:	84 c0                	test   %al,%al
 804a60e:	75 1f                	jne    804a62f <parse_redirect_dup+0x58>
 804a610:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804a615:	c7 44 24 04 f0 04 05 	movl   $0x80504f0,0x4(%esp)
 804a61c:	08 
 804a61d:	89 04 24             	mov    %eax,(%esp)
 804a620:	e8 b3 40 00 00       	call   804e6d8 <fprintf>
 804a625:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a62a:	e9 2d 01 00 00       	jmp    804a75c <parse_redirect_dup+0x185>
 804a62f:	8b 45 18             	mov    0x18(%ebp),%eax
 804a632:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a635:	8b 45 18             	mov    0x18(%ebp),%eax
 804a638:	0f b6 00             	movzbl (%eax),%eax
 804a63b:	0f b6 c0             	movzbl %al,%eax
 804a63e:	0f b6 80 20 30 05 08 	movzbl 0x8053020(%eax),%eax
 804a645:	0f b6 c0             	movzbl %al,%eax
 804a648:	83 e0 04             	and    $0x4,%eax
 804a64b:	85 c0                	test   %eax,%eax
 804a64d:	75 22                	jne    804a671 <parse_redirect_dup+0x9a>
 804a64f:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804a654:	c7 44 24 04 14 05 05 	movl   $0x8050514,0x4(%esp)
 804a65b:	08 
 804a65c:	89 04 24             	mov    %eax,(%esp)
 804a65f:	e8 74 40 00 00       	call   804e6d8 <fprintf>
 804a664:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a669:	e9 ee 00 00 00       	jmp    804a75c <parse_redirect_dup+0x185>
 804a66e:	ff 45 18             	incl   0x18(%ebp)
 804a671:	8b 45 18             	mov    0x18(%ebp),%eax
 804a674:	0f b6 00             	movzbl (%eax),%eax
 804a677:	84 c0                	test   %al,%al
 804a679:	74 1a                	je     804a695 <parse_redirect_dup+0xbe>
 804a67b:	8b 45 18             	mov    0x18(%ebp),%eax
 804a67e:	0f b6 00             	movzbl (%eax),%eax
 804a681:	0f b6 c0             	movzbl %al,%eax
 804a684:	0f b6 80 20 30 05 08 	movzbl 0x8053020(%eax),%eax
 804a68b:	0f b6 c0             	movzbl %al,%eax
 804a68e:	83 e0 04             	and    $0x4,%eax
 804a691:	85 c0                	test   %eax,%eax
 804a693:	75 d9                	jne    804a66e <parse_redirect_dup+0x97>
 804a695:	8b 45 18             	mov    0x18(%ebp),%eax
 804a698:	0f b6 00             	movzbl (%eax),%eax
 804a69b:	84 c0                	test   %al,%al
 804a69d:	74 39                	je     804a6d8 <parse_redirect_dup+0x101>
 804a69f:	8b 45 18             	mov    0x18(%ebp),%eax
 804a6a2:	0f b6 00             	movzbl (%eax),%eax
 804a6a5:	0f b6 c0             	movzbl %al,%eax
 804a6a8:	0f b6 80 20 30 05 08 	movzbl 0x8053020(%eax),%eax
 804a6af:	0f b6 c0             	movzbl %al,%eax
 804a6b2:	83 e0 20             	and    $0x20,%eax
 804a6b5:	85 c0                	test   %eax,%eax
 804a6b7:	75 1f                	jne    804a6d8 <parse_redirect_dup+0x101>
 804a6b9:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804a6be:	c7 44 24 04 38 05 05 	movl   $0x8050538,0x4(%esp)
 804a6c5:	08 
 804a6c6:	89 04 24             	mov    %eax,(%esp)
 804a6c9:	e8 0a 40 00 00       	call   804e6d8 <fprintf>
 804a6ce:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a6d3:	e9 84 00 00 00       	jmp    804a75c <parse_redirect_dup+0x185>
 804a6d8:	8b 45 18             	mov    0x18(%ebp),%eax
 804a6db:	c6 00 00             	movb   $0x0,(%eax)
 804a6de:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 804a6e5:	00 
 804a6e6:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804a6ed:	00 
 804a6ee:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a6f1:	89 04 24             	mov    %eax,(%esp)
 804a6f4:	e8 76 13 00 00       	call   804ba6f <strtol>
 804a6f9:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a6fc:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a6ff:	89 04 24             	mov    %eax,(%esp)
 804a702:	e8 00 0c 00 00       	call   804b307 <dup>
 804a707:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804a70a:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 804a70e:	79 23                	jns    804a733 <parse_redirect_dup+0x15c>
 804a710:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804a715:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804a718:	89 54 24 08          	mov    %edx,0x8(%esp)
 804a71c:	c7 44 24 04 5c 05 05 	movl   $0x805055c,0x4(%esp)
 804a723:	08 
 804a724:	89 04 24             	mov    %eax,(%esp)
 804a727:	e8 ac 3f 00 00       	call   804e6d8 <fprintf>
 804a72c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a731:	eb 29                	jmp    804a75c <parse_redirect_dup+0x185>
 804a733:	8b 45 10             	mov    0x10(%ebp),%eax
 804a736:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a73a:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804a73d:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a741:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a744:	89 04 24             	mov    %eax,(%esp)
 804a747:	e8 5a fe ff ff       	call   804a5a6 <add_redirect>
 804a74c:	8b 45 18             	mov    0x18(%ebp),%eax
 804a74f:	8d 50 01             	lea    0x1(%eax),%edx
 804a752:	8b 45 1c             	mov    0x1c(%ebp),%eax
 804a755:	89 10                	mov    %edx,(%eax)
 804a757:	b8 00 00 00 00       	mov    $0x0,%eax
 804a75c:	c9                   	leave  
 804a75d:	c3                   	ret    

0804a75e <parse_redirect_norm>:
 804a75e:	55                   	push   %ebp
 804a75f:	89 e5                	mov    %esp,%ebp
 804a761:	83 ec 28             	sub    $0x28,%esp
 804a764:	eb 03                	jmp    804a769 <parse_redirect_norm+0xb>
 804a766:	ff 45 18             	incl   0x18(%ebp)
 804a769:	8b 45 18             	mov    0x18(%ebp),%eax
 804a76c:	0f b6 00             	movzbl (%eax),%eax
 804a76f:	84 c0                	test   %al,%al
 804a771:	74 1a                	je     804a78d <parse_redirect_norm+0x2f>
 804a773:	8b 45 18             	mov    0x18(%ebp),%eax
 804a776:	0f b6 00             	movzbl (%eax),%eax
 804a779:	0f b6 c0             	movzbl %al,%eax
 804a77c:	0f b6 80 20 30 05 08 	movzbl 0x8053020(%eax),%eax
 804a783:	0f b6 c0             	movzbl %al,%eax
 804a786:	83 e0 20             	and    $0x20,%eax
 804a789:	85 c0                	test   %eax,%eax
 804a78b:	75 d9                	jne    804a766 <parse_redirect_norm+0x8>
 804a78d:	8b 45 18             	mov    0x18(%ebp),%eax
 804a790:	0f b6 00             	movzbl (%eax),%eax
 804a793:	84 c0                	test   %al,%al
 804a795:	75 1f                	jne    804a7b6 <parse_redirect_norm+0x58>
 804a797:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804a79c:	c7 44 24 04 f0 04 05 	movl   $0x80504f0,0x4(%esp)
 804a7a3:	08 
 804a7a4:	89 04 24             	mov    %eax,(%esp)
 804a7a7:	e8 2c 3f 00 00       	call   804e6d8 <fprintf>
 804a7ac:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a7b1:	e9 b7 00 00 00       	jmp    804a86d <parse_redirect_norm+0x10f>
 804a7b6:	8b 45 18             	mov    0x18(%ebp),%eax
 804a7b9:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a7bc:	eb 03                	jmp    804a7c1 <parse_redirect_norm+0x63>
 804a7be:	ff 45 18             	incl   0x18(%ebp)
 804a7c1:	8b 45 18             	mov    0x18(%ebp),%eax
 804a7c4:	0f b6 00             	movzbl (%eax),%eax
 804a7c7:	84 c0                	test   %al,%al
 804a7c9:	74 1a                	je     804a7e5 <parse_redirect_norm+0x87>
 804a7cb:	8b 45 18             	mov    0x18(%ebp),%eax
 804a7ce:	0f b6 00             	movzbl (%eax),%eax
 804a7d1:	0f b6 c0             	movzbl %al,%eax
 804a7d4:	0f b6 80 20 30 05 08 	movzbl 0x8053020(%eax),%eax
 804a7db:	0f b6 c0             	movzbl %al,%eax
 804a7de:	83 e0 20             	and    $0x20,%eax
 804a7e1:	85 c0                	test   %eax,%eax
 804a7e3:	74 d9                	je     804a7be <parse_redirect_norm+0x60>
 804a7e5:	8b 45 18             	mov    0x18(%ebp),%eax
 804a7e8:	c6 00 00             	movb   $0x0,(%eax)
 804a7eb:	c7 44 24 08 b6 01 00 	movl   $0x1b6,0x8(%esp)
 804a7f2:	00 
 804a7f3:	8b 45 14             	mov    0x14(%ebp),%eax
 804a7f6:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a7fa:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a7fd:	89 04 24             	mov    %eax,(%esp)
 804a800:	e8 6b 09 00 00       	call   804b170 <open>
 804a805:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804a808:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804a80c:	79 36                	jns    804a844 <parse_redirect_norm+0xe6>
 804a80e:	a1 04 4a 05 08       	mov    0x8054a04,%eax
 804a813:	89 04 24             	mov    %eax,(%esp)
 804a816:	e8 ca 19 00 00       	call   804c1e5 <strerror>
 804a81b:	89 c2                	mov    %eax,%edx
 804a81d:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804a822:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804a826:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804a829:	89 54 24 08          	mov    %edx,0x8(%esp)
 804a82d:	c7 44 24 04 7d 05 05 	movl   $0x805057d,0x4(%esp)
 804a834:	08 
 804a835:	89 04 24             	mov    %eax,(%esp)
 804a838:	e8 9b 3e 00 00       	call   804e6d8 <fprintf>
 804a83d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a842:	eb 29                	jmp    804a86d <parse_redirect_norm+0x10f>
 804a844:	8b 45 10             	mov    0x10(%ebp),%eax
 804a847:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a84b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804a84e:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a852:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a855:	89 04 24             	mov    %eax,(%esp)
 804a858:	e8 49 fd ff ff       	call   804a5a6 <add_redirect>
 804a85d:	8b 45 18             	mov    0x18(%ebp),%eax
 804a860:	8d 50 01             	lea    0x1(%eax),%edx
 804a863:	8b 45 1c             	mov    0x1c(%ebp),%eax
 804a866:	89 10                	mov    %edx,(%eax)
 804a868:	b8 00 00 00 00       	mov    $0x0,%eax
 804a86d:	c9                   	leave  
 804a86e:	c3                   	ret    

0804a86f <parse_redirects>:
 804a86f:	55                   	push   %ebp
 804a870:	89 e5                	mov    %esp,%ebp
 804a872:	83 ec 48             	sub    $0x48,%esp
 804a875:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a878:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804a87e:	8b 45 08             	mov    0x8(%ebp),%eax
 804a881:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804a884:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804a88b:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 804a892:	eb 03                	jmp    804a897 <parse_redirects+0x28>
 804a894:	ff 45 f4             	incl   -0xc(%ebp)
 804a897:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a89a:	0f b6 00             	movzbl (%eax),%eax
 804a89d:	84 c0                	test   %al,%al
 804a89f:	74 14                	je     804a8b5 <parse_redirects+0x46>
 804a8a1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a8a4:	0f b6 00             	movzbl (%eax),%eax
 804a8a7:	3c 3e                	cmp    $0x3e,%al
 804a8a9:	74 0a                	je     804a8b5 <parse_redirects+0x46>
 804a8ab:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a8ae:	0f b6 00             	movzbl (%eax),%eax
 804a8b1:	3c 3c                	cmp    $0x3c,%al
 804a8b3:	75 df                	jne    804a894 <parse_redirects+0x25>
 804a8b5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a8b8:	0f b6 00             	movzbl (%eax),%eax
 804a8bb:	84 c0                	test   %al,%al
 804a8bd:	75 0a                	jne    804a8c9 <parse_redirects+0x5a>
 804a8bf:	b8 00 00 00 00       	mov    $0x0,%eax
 804a8c4:	e9 92 01 00 00       	jmp    804aa5b <parse_redirects+0x1ec>
 804a8c9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a8cc:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804a8cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a8d2:	0f b6 00             	movzbl (%eax),%eax
 804a8d5:	0f be c0             	movsbl %al,%eax
 804a8d8:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804a8db:	8d 45 dc             	lea    -0x24(%ebp),%eax
 804a8de:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a8e2:	8b 45 08             	mov    0x8(%ebp),%eax
 804a8e5:	89 04 24             	mov    %eax,(%esp)
 804a8e8:	e8 96 fb ff ff       	call   804a483 <parse_redirect_dfd>
 804a8ed:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804a8f0:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 804a8f4:	79 0e                	jns    804a904 <parse_redirects+0x95>
 804a8f6:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804a8f9:	89 04 24             	mov    %eax,(%esp)
 804a8fc:	e8 69 fc ff ff       	call   804a56a <redirect_default_fd>
 804a901:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804a904:	ff 45 f4             	incl   -0xc(%ebp)
 804a907:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a90a:	0f b6 00             	movzbl (%eax),%eax
 804a90d:	3c 3e                	cmp    $0x3e,%al
 804a90f:	75 43                	jne    804a954 <parse_redirects+0xe5>
 804a911:	83 7d e0 3e          	cmpl   $0x3e,-0x20(%ebp)
 804a915:	74 33                	je     804a94a <parse_redirects+0xdb>
 804a917:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a91a:	0f b6 00             	movzbl (%eax),%eax
 804a91d:	0f be d0             	movsbl %al,%edx
 804a920:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804a925:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804a929:	8b 55 e0             	mov    -0x20(%ebp),%edx
 804a92c:	89 54 24 08          	mov    %edx,0x8(%esp)
 804a930:	c7 44 24 04 98 05 05 	movl   $0x8050598,0x4(%esp)
 804a937:	08 
 804a938:	89 04 24             	mov    %eax,(%esp)
 804a93b:	e8 98 3d 00 00       	call   804e6d8 <fprintf>
 804a940:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a945:	e9 11 01 00 00       	jmp    804aa5b <parse_redirects+0x1ec>
 804a94a:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
 804a951:	ff 45 f4             	incl   -0xc(%ebp)
 804a954:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a957:	0f b6 00             	movzbl (%eax),%eax
 804a95a:	3c 26                	cmp    $0x26,%al
 804a95c:	75 0a                	jne    804a968 <parse_redirects+0xf9>
 804a95e:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 804a965:	ff 45 f4             	incl   -0xc(%ebp)
 804a968:	83 7d e0 3c          	cmpl   $0x3c,-0x20(%ebp)
 804a96c:	75 09                	jne    804a977 <parse_redirects+0x108>
 804a96e:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 804a975:	eb 4b                	jmp    804a9c2 <parse_redirects+0x153>
 804a977:	83 7d e0 3e          	cmpl   $0x3e,-0x20(%ebp)
 804a97b:	75 1f                	jne    804a99c <parse_redirects+0x12d>
 804a97d:	c7 45 e8 01 01 00 00 	movl   $0x101,-0x18(%ebp)
 804a984:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 804a988:	74 09                	je     804a993 <parse_redirects+0x124>
 804a98a:	81 4d e8 00 04 00 00 	orl    $0x400,-0x18(%ebp)
 804a991:	eb 2f                	jmp    804a9c2 <parse_redirects+0x153>
 804a993:	81 4d e8 00 02 00 00 	orl    $0x200,-0x18(%ebp)
 804a99a:	eb 26                	jmp    804a9c2 <parse_redirects+0x153>
 804a99c:	a1 bc 33 05 08       	mov    0x80533bc,%eax
 804a9a1:	8b 55 e0             	mov    -0x20(%ebp),%edx
 804a9a4:	89 54 24 08          	mov    %edx,0x8(%esp)
 804a9a8:	c7 44 24 04 b1 05 05 	movl   $0x80505b1,0x4(%esp)
 804a9af:	08 
 804a9b0:	89 04 24             	mov    %eax,(%esp)
 804a9b3:	e8 20 3d 00 00       	call   804e6d8 <fprintf>
 804a9b8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a9bd:	e9 99 00 00 00       	jmp    804aa5b <parse_redirects+0x1ec>
 804a9c2:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804a9c6:	74 39                	je     804aa01 <parse_redirects+0x192>
 804a9c8:	8d 45 d8             	lea    -0x28(%ebp),%eax
 804a9cb:	89 44 24 14          	mov    %eax,0x14(%esp)
 804a9cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804a9d2:	89 44 24 10          	mov    %eax,0x10(%esp)
 804a9d6:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804a9d9:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804a9dd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804a9e0:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a9e4:	8b 45 0c             	mov    0xc(%ebp),%eax
 804a9e7:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a9eb:	8b 45 08             	mov    0x8(%ebp),%eax
 804a9ee:	89 04 24             	mov    %eax,(%esp)
 804a9f1:	e8 e1 fb ff ff       	call   804a5d7 <parse_redirect_dup>
 804a9f6:	85 c0                	test   %eax,%eax
 804a9f8:	79 4c                	jns    804aa46 <parse_redirects+0x1d7>
 804a9fa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804a9ff:	eb 5a                	jmp    804aa5b <parse_redirects+0x1ec>
 804aa01:	8d 45 d8             	lea    -0x28(%ebp),%eax
 804aa04:	89 44 24 14          	mov    %eax,0x14(%esp)
 804aa08:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804aa0b:	89 44 24 10          	mov    %eax,0x10(%esp)
 804aa0f:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804aa12:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804aa16:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804aa19:	89 44 24 08          	mov    %eax,0x8(%esp)
 804aa1d:	8b 45 0c             	mov    0xc(%ebp),%eax
 804aa20:	89 44 24 04          	mov    %eax,0x4(%esp)
 804aa24:	8b 45 08             	mov    0x8(%ebp),%eax
 804aa27:	89 04 24             	mov    %eax,(%esp)
 804aa2a:	e8 2f fd ff ff       	call   804a75e <parse_redirect_norm>
 804aa2f:	85 c0                	test   %eax,%eax
 804aa31:	79 13                	jns    804aa46 <parse_redirects+0x1d7>
 804aa33:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804aa38:	eb 21                	jmp    804aa5b <parse_redirects+0x1ec>
 804aa3a:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804aa3d:	8d 50 01             	lea    0x1(%eax),%edx
 804aa40:	89 55 dc             	mov    %edx,-0x24(%ebp)
 804aa43:	c6 00 20             	movb   $0x20,(%eax)
 804aa46:	8b 55 dc             	mov    -0x24(%ebp),%edx
 804aa49:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804aa4c:	39 c2                	cmp    %eax,%edx
 804aa4e:	72 ea                	jb     804aa3a <parse_redirects+0x1cb>
 804aa50:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804aa53:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804aa56:	e9 29 fe ff ff       	jmp    804a884 <parse_redirects+0x15>
 804aa5b:	c9                   	leave  
 804aa5c:	c3                   	ret    

0804aa5d <parse>:
 804aa5d:	55                   	push   %ebp
 804aa5e:	89 e5                	mov    %esp,%ebp
 804aa60:	81 ec 78 04 00 00    	sub    $0x478,%esp
 804aa66:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804aa6d:	8b 45 08             	mov    0x8(%ebp),%eax
 804aa70:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804aa73:	8b 45 08             	mov    0x8(%ebp),%eax
 804aa76:	89 04 24             	mov    %eax,(%esp)
 804aa79:	e8 d9 14 00 00       	call   804bf57 <strlen>
 804aa7e:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804aa81:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804aa84:	8d 50 ff             	lea    -0x1(%eax),%edx
 804aa87:	8b 45 08             	mov    0x8(%ebp),%eax
 804aa8a:	01 d0                	add    %edx,%eax
 804aa8c:	0f b6 00             	movzbl (%eax),%eax
 804aa8f:	3c 0a                	cmp    $0xa,%al
 804aa91:	75 0e                	jne    804aaa1 <parse+0x44>
 804aa93:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804aa96:	8d 50 ff             	lea    -0x1(%eax),%edx
 804aa99:	8b 45 08             	mov    0x8(%ebp),%eax
 804aa9c:	01 d0                	add    %edx,%eax
 804aa9e:	c6 00 00             	movb   $0x0,(%eax)
 804aaa1:	8d 85 98 fb ff ff    	lea    -0x468(%ebp),%eax
 804aaa7:	89 44 24 04          	mov    %eax,0x4(%esp)
 804aaab:	8b 45 08             	mov    0x8(%ebp),%eax
 804aaae:	89 04 24             	mov    %eax,(%esp)
 804aab1:	e8 b9 fd ff ff       	call   804a86f <parse_redirects>
 804aab6:	85 c0                	test   %eax,%eax
 804aab8:	0f 88 c3 00 00 00    	js     804ab81 <parse+0x124>
 804aabe:	eb 03                	jmp    804aac3 <parse+0x66>
 804aac0:	ff 45 f0             	incl   -0x10(%ebp)
 804aac3:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804aac6:	0f b6 00             	movzbl (%eax),%eax
 804aac9:	84 c0                	test   %al,%al
 804aacb:	74 1a                	je     804aae7 <parse+0x8a>
 804aacd:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804aad0:	0f b6 00             	movzbl (%eax),%eax
 804aad3:	0f b6 c0             	movzbl %al,%eax
 804aad6:	0f b6 80 20 30 05 08 	movzbl 0x8053020(%eax),%eax
 804aadd:	0f b6 c0             	movzbl %al,%eax
 804aae0:	83 e0 20             	and    $0x20,%eax
 804aae3:	85 c0                	test   %eax,%eax
 804aae5:	75 d9                	jne    804aac0 <parse+0x63>
 804aae7:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804aaea:	0f b6 00             	movzbl (%eax),%eax
 804aaed:	84 c0                	test   %al,%al
 804aaef:	74 57                	je     804ab48 <parse+0xeb>
 804aaf1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804aaf4:	8d 50 01             	lea    0x1(%eax),%edx
 804aaf7:	89 55 f4             	mov    %edx,-0xc(%ebp)
 804aafa:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804aafd:	89 94 85 ec fb ff ff 	mov    %edx,-0x414(%ebp,%eax,4)
 804ab04:	eb 03                	jmp    804ab09 <parse+0xac>
 804ab06:	ff 45 f0             	incl   -0x10(%ebp)
 804ab09:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804ab0c:	0f b6 00             	movzbl (%eax),%eax
 804ab0f:	84 c0                	test   %al,%al
 804ab11:	74 1a                	je     804ab2d <parse+0xd0>
 804ab13:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804ab16:	0f b6 00             	movzbl (%eax),%eax
 804ab19:	0f b6 c0             	movzbl %al,%eax
 804ab1c:	0f b6 80 20 30 05 08 	movzbl 0x8053020(%eax),%eax
 804ab23:	0f b6 c0             	movzbl %al,%eax
 804ab26:	83 e0 20             	and    $0x20,%eax
 804ab29:	85 c0                	test   %eax,%eax
 804ab2b:	74 d9                	je     804ab06 <parse+0xa9>
 804ab2d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804ab30:	0f b6 00             	movzbl (%eax),%eax
 804ab33:	84 c0                	test   %al,%al
 804ab35:	74 14                	je     804ab4b <parse+0xee>
 804ab37:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804ab3a:	8d 50 01             	lea    0x1(%eax),%edx
 804ab3d:	89 55 f0             	mov    %edx,-0x10(%ebp)
 804ab40:	c6 00 00             	movb   $0x0,(%eax)
 804ab43:	e9 76 ff ff ff       	jmp    804aabe <parse+0x61>
 804ab48:	90                   	nop
 804ab49:	eb 01                	jmp    804ab4c <parse+0xef>
 804ab4b:	90                   	nop
 804ab4c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ab4f:	c7 84 85 ec fb ff ff 	movl   $0x0,-0x414(%ebp,%eax,4)
 804ab56:	00 00 00 00 
 804ab5a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804ab5e:	74 24                	je     804ab84 <parse+0x127>
 804ab60:	8d 85 98 fb ff ff    	lea    -0x468(%ebp),%eax
 804ab66:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ab6a:	8d 85 ec fb ff ff    	lea    -0x414(%ebp),%eax
 804ab70:	89 44 24 04          	mov    %eax,0x4(%esp)
 804ab74:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ab77:	89 04 24             	mov    %eax,(%esp)
 804ab7a:	e8 11 f7 ff ff       	call   804a290 <execute>
 804ab7f:	eb 04                	jmp    804ab85 <parse+0x128>
 804ab81:	90                   	nop
 804ab82:	eb 01                	jmp    804ab85 <parse+0x128>
 804ab84:	90                   	nop
 804ab85:	c9                   	leave  
 804ab86:	c3                   	ret    

0804ab87 <main>:
 804ab87:	55                   	push   %ebp
 804ab88:	89 e5                	mov    %esp,%ebp
 804ab8a:	83 e4 f0             	and    $0xfffffff0,%esp
 804ab8d:	83 ec 60             	sub    $0x60,%esp
 804ab90:	8b 45 10             	mov    0x10(%ebp),%eax
 804ab93:	a3 e0 34 05 08       	mov    %eax,0x80534e0
 804ab98:	c7 44 24 08 cf 05 05 	movl   $0x80505cf,0x8(%esp)
 804ab9f:	08 
 804aba0:	c7 44 24 04 3f 00 00 	movl   $0x3f,0x4(%esp)
 804aba7:	00 
 804aba8:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 804abac:	89 04 24             	mov    %eax,(%esp)
 804abaf:	e8 a0 3b 00 00       	call   804e754 <snprintf>
 804abb4:	a1 b8 33 05 08       	mov    0x80533b8,%eax
 804abb9:	8d 54 24 1c          	lea    0x1c(%esp),%edx
 804abbd:	89 54 24 08          	mov    %edx,0x8(%esp)
 804abc1:	c7 44 24 04 da 05 05 	movl   $0x80505da,0x4(%esp)
 804abc8:	08 
 804abc9:	89 04 24             	mov    %eax,(%esp)
 804abcc:	e8 07 3b 00 00       	call   804e6d8 <fprintf>
 804abd1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804abd8:	e8 99 3c 00 00       	call   804e876 <fflush>
 804abdd:	eb 41                	jmp    804ac20 <main+0x99>
 804abdf:	8b 44 24 5c          	mov    0x5c(%esp),%eax
 804abe3:	05 00 35 05 08       	add    $0x8053500,%eax
 804abe8:	c6 00 00             	movb   $0x0,(%eax)
 804abeb:	c7 04 24 00 35 05 08 	movl   $0x8053500,(%esp)
 804abf2:	e8 66 fe ff ff       	call   804aa5d <parse>
 804abf7:	a1 b8 33 05 08       	mov    0x80533b8,%eax
 804abfc:	8d 54 24 1c          	lea    0x1c(%esp),%edx
 804ac00:	89 54 24 08          	mov    %edx,0x8(%esp)
 804ac04:	c7 44 24 04 da 05 05 	movl   $0x80505da,0x4(%esp)
 804ac0b:	08 
 804ac0c:	89 04 24             	mov    %eax,(%esp)
 804ac0f:	e8 c4 3a 00 00       	call   804e6d8 <fprintf>
 804ac14:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804ac1b:	e8 56 3c 00 00       	call   804e876 <fflush>
 804ac20:	c7 44 24 08 00 04 00 	movl   $0x400,0x8(%esp)
 804ac27:	00 
 804ac28:	c7 44 24 04 00 35 05 	movl   $0x8053500,0x4(%esp)
 804ac2f:	08 
 804ac30:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804ac37:	e8 e9 05 00 00       	call   804b225 <read>
 804ac3c:	89 44 24 5c          	mov    %eax,0x5c(%esp)
 804ac40:	83 7c 24 5c 00       	cmpl   $0x0,0x5c(%esp)
 804ac45:	7f 98                	jg     804abdf <main+0x58>
 804ac47:	a1 b8 33 05 08       	mov    0x80533b8,%eax
 804ac4c:	c7 44 24 04 dd 05 05 	movl   $0x80505dd,0x4(%esp)
 804ac53:	08 
 804ac54:	89 04 24             	mov    %eax,(%esp)
 804ac57:	e8 7c 3a 00 00       	call   804e6d8 <fprintf>
 804ac5c:	b8 00 00 00 00       	mov    $0x0,%eax
 804ac61:	c9                   	leave  
 804ac62:	c3                   	ret    

0804ac63 <__libc_static_entry>:
 804ac63:	83 c4 04             	add    $0x4,%esp
 804ac66:	e8 1c ff ff ff       	call   804ab87 <main>
 804ac6b:	50                   	push   %eax
 804ac6c:	e8 21 02 00 00       	call   804ae92 <exit>

0804ac71 <trap>:
 804ac71:	55                   	push   %ebp
 804ac72:	89 e5                	mov    %esp,%ebp
 804ac74:	83 ec 10             	sub    $0x10,%esp
 804ac77:	e8 7d 0d 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804ac7c:	81 c1 84 83 00 00    	add    $0x8384,%ecx
 804ac82:	8b 45 08             	mov    0x8(%ebp),%eax
 804ac85:	8b 55 0c             	mov    0xc(%ebp),%edx
 804ac88:	cd 2e                	int    $0x2e
 804ac8a:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804ac8d:	b8 27 00 00 00       	mov    $0x27,%eax
 804ac92:	cd 2e                	int    $0x2e
 804ac94:	89 c2                	mov    %eax,%edx
 804ac96:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804ac9c:	89 10                	mov    %edx,(%eax)
 804ac9e:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804aca1:	c9                   	leave  
 804aca2:	c3                   	ret    

0804aca3 <sbrk>:
 804aca3:	55                   	push   %ebp
 804aca4:	89 e5                	mov    %esp,%ebp
 804aca6:	53                   	push   %ebx
 804aca7:	83 ec 24             	sub    $0x24,%esp
 804acaa:	e8 4a 0d 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804acaf:	81 c1 51 83 00 00    	add    $0x8351,%ecx
 804acb5:	8b 81 00 19 00 00    	mov    0x1900(%ecx),%eax
 804acbb:	85 c0                	test   %eax,%eax
 804acbd:	75 44                	jne    804ad03 <sbrk+0x60>
 804acbf:	c7 45 f0 2c 00 00 00 	movl   $0x2c,-0x10(%ebp)
 804acc6:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 804accd:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804acd0:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804acd3:	cd 2e                	int    $0x2e
 804acd5:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804acd8:	b8 27 00 00 00       	mov    $0x27,%eax
 804acdd:	cd 2e                	int    $0x2e
 804acdf:	89 c2                	mov    %eax,%edx
 804ace1:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804ace7:	89 10                	mov    %edx,(%eax)
 804ace9:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804acec:	89 81 00 19 00 00    	mov    %eax,0x1900(%ecx)
 804acf2:	8b 81 00 19 00 00    	mov    0x1900(%ecx),%eax
 804acf8:	85 c0                	test   %eax,%eax
 804acfa:	79 07                	jns    804ad03 <sbrk+0x60>
 804acfc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804ad01:	eb 63                	jmp    804ad66 <sbrk+0xc3>
 804ad03:	8b 81 00 19 00 00    	mov    0x1900(%ecx),%eax
 804ad09:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804ad0c:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804ad10:	79 2e                	jns    804ad40 <sbrk+0x9d>
 804ad12:	8b 45 08             	mov    0x8(%ebp),%eax
 804ad15:	f7 d8                	neg    %eax
 804ad17:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 804ad1a:	76 07                	jbe    804ad23 <sbrk+0x80>
 804ad1c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804ad21:	eb 43                	jmp    804ad66 <sbrk+0xc3>
 804ad23:	8b 55 08             	mov    0x8(%ebp),%edx
 804ad26:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ad29:	01 d0                	add    %edx,%eax
 804ad2b:	89 04 24             	mov    %eax,(%esp)
 804ad2e:	89 cb                	mov    %ecx,%ebx
 804ad30:	e8 37 00 00 00       	call   804ad6c <brk>
 804ad35:	85 c0                	test   %eax,%eax
 804ad37:	79 2a                	jns    804ad63 <sbrk+0xc0>
 804ad39:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804ad3e:	eb 26                	jmp    804ad66 <sbrk+0xc3>
 804ad40:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804ad44:	7e 1d                	jle    804ad63 <sbrk+0xc0>
 804ad46:	8b 55 08             	mov    0x8(%ebp),%edx
 804ad49:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ad4c:	01 d0                	add    %edx,%eax
 804ad4e:	89 04 24             	mov    %eax,(%esp)
 804ad51:	89 cb                	mov    %ecx,%ebx
 804ad53:	e8 14 00 00 00       	call   804ad6c <brk>
 804ad58:	85 c0                	test   %eax,%eax
 804ad5a:	79 07                	jns    804ad63 <sbrk+0xc0>
 804ad5c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804ad61:	eb 03                	jmp    804ad66 <sbrk+0xc3>
 804ad63:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ad66:	83 c4 24             	add    $0x24,%esp
 804ad69:	5b                   	pop    %ebx
 804ad6a:	5d                   	pop    %ebp
 804ad6b:	c3                   	ret    

0804ad6c <brk>:
 804ad6c:	55                   	push   %ebp
 804ad6d:	89 e5                	mov    %esp,%ebp
 804ad6f:	83 ec 10             	sub    $0x10,%esp
 804ad72:	e8 82 0c 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804ad77:	81 c1 89 82 00 00    	add    $0x8289,%ecx
 804ad7d:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804ad81:	75 07                	jne    804ad8a <brk+0x1e>
 804ad83:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804ad88:	eb 4a                	jmp    804add4 <brk+0x68>
 804ad8a:	8b 45 08             	mov    0x8(%ebp),%eax
 804ad8d:	c7 45 f8 2c 00 00 00 	movl   $0x2c,-0x8(%ebp)
 804ad94:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804ad97:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804ad9a:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804ad9d:	cd 2e                	int    $0x2e
 804ad9f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804ada2:	b8 27 00 00 00       	mov    $0x27,%eax
 804ada7:	cd 2e                	int    $0x2e
 804ada9:	89 c2                	mov    %eax,%edx
 804adab:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804adb1:	89 10                	mov    %edx,(%eax)
 804adb3:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804adb6:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804adb9:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%ebp)
 804adbd:	75 07                	jne    804adc6 <brk+0x5a>
 804adbf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804adc4:	eb 0e                	jmp    804add4 <brk+0x68>
 804adc6:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804adc9:	89 81 00 19 00 00    	mov    %eax,0x1900(%ecx)
 804adcf:	b8 00 00 00 00       	mov    $0x0,%eax
 804add4:	c9                   	leave  
 804add5:	c3                   	ret    

0804add6 <fork>:
 804add6:	55                   	push   %ebp
 804add7:	89 e5                	mov    %esp,%ebp
 804add9:	83 ec 10             	sub    $0x10,%esp
 804addc:	e8 18 0c 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804ade1:	81 c1 1f 82 00 00    	add    $0x821f,%ecx
 804ade7:	c7 45 fc 02 00 00 00 	movl   $0x2,-0x4(%ebp)
 804adee:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 804adf5:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804adf8:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804adfb:	cd 2e                	int    $0x2e
 804adfd:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804ae00:	b8 27 00 00 00       	mov    $0x27,%eax
 804ae05:	cd 2e                	int    $0x2e
 804ae07:	89 c2                	mov    %eax,%edx
 804ae09:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804ae0f:	89 10                	mov    %edx,(%eax)
 804ae11:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ae14:	90                   	nop
 804ae15:	c9                   	leave  
 804ae16:	c3                   	ret    

0804ae17 <atexit>:
 804ae17:	55                   	push   %ebp
 804ae18:	89 e5                	mov    %esp,%ebp
 804ae1a:	e8 d6 0b 00 00       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804ae1f:	05 e1 81 00 00       	add    $0x81e1,%eax
 804ae24:	8b 90 a0 19 00 00    	mov    0x19a0(%eax),%edx
 804ae2a:	83 fa 1f             	cmp    $0x1f,%edx
 804ae2d:	7f 20                	jg     804ae4f <atexit+0x38>
 804ae2f:	8b 90 a0 19 00 00    	mov    0x19a0(%eax),%edx
 804ae35:	8d 4a 01             	lea    0x1(%edx),%ecx
 804ae38:	89 88 a0 19 00 00    	mov    %ecx,0x19a0(%eax)
 804ae3e:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804ae41:	89 8c 90 20 19 00 00 	mov    %ecx,0x1920(%eax,%edx,4)
 804ae48:	b8 00 00 00 00       	mov    $0x0,%eax
 804ae4d:	eb 05                	jmp    804ae54 <atexit+0x3d>
 804ae4f:	b8 01 00 00 00       	mov    $0x1,%eax
 804ae54:	5d                   	pop    %ebp
 804ae55:	c3                   	ret    

0804ae56 <_exit>:
 804ae56:	55                   	push   %ebp
 804ae57:	89 e5                	mov    %esp,%ebp
 804ae59:	83 ec 10             	sub    $0x10,%esp
 804ae5c:	e8 98 0b 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804ae61:	81 c1 9f 81 00 00    	add    $0x819f,%ecx
 804ae67:	8b 45 08             	mov    0x8(%ebp),%eax
 804ae6a:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
 804ae71:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804ae74:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804ae77:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804ae7a:	cd 2e                	int    $0x2e
 804ae7c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804ae7f:	b8 27 00 00 00       	mov    $0x27,%eax
 804ae84:	cd 2e                	int    $0x2e
 804ae86:	89 c2                	mov    %eax,%edx
 804ae88:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804ae8e:	89 10                	mov    %edx,(%eax)
 804ae90:	eb fe                	jmp    804ae90 <_exit+0x3a>

0804ae92 <exit>:
 804ae92:	55                   	push   %ebp
 804ae93:	89 e5                	mov    %esp,%ebp
 804ae95:	53                   	push   %ebx
 804ae96:	83 ec 14             	sub    $0x14,%esp
 804ae99:	e8 5f 0b 00 00       	call   804b9fd <__x86.get_pc_thunk.bx>
 804ae9e:	81 c3 62 81 00 00    	add    $0x8162,%ebx
 804aea4:	eb 0f                	jmp    804aeb5 <exit+0x23>
 804aea6:	8b 83 a0 19 00 00    	mov    0x19a0(%ebx),%eax
 804aeac:	8b 84 83 20 19 00 00 	mov    0x1920(%ebx,%eax,4),%eax
 804aeb3:	ff d0                	call   *%eax
 804aeb5:	8b 83 a0 19 00 00    	mov    0x19a0(%ebx),%eax
 804aebb:	8d 50 ff             	lea    -0x1(%eax),%edx
 804aebe:	89 93 a0 19 00 00    	mov    %edx,0x19a0(%ebx)
 804aec4:	85 c0                	test   %eax,%eax
 804aec6:	75 de                	jne    804aea6 <exit+0x14>
 804aec8:	8b 45 08             	mov    0x8(%ebp),%eax
 804aecb:	89 04 24             	mov    %eax,(%esp)
 804aece:	e8 83 ff ff ff       	call   804ae56 <_exit>
 804aed3:	8b 45 08             	mov    0x8(%ebp),%eax
 804aed6:	89 04 24             	mov    %eax,(%esp)
 804aed9:	e8 b4 ff ff ff       	call   804ae92 <exit>
 804aede:	90                   	nop
 804aedf:	83 c4 14             	add    $0x14,%esp
 804aee2:	5b                   	pop    %ebx
 804aee3:	5d                   	pop    %ebp
 804aee4:	c3                   	ret    

0804aee5 <yield>:
 804aee5:	55                   	push   %ebp
 804aee6:	89 e5                	mov    %esp,%ebp
 804aee8:	53                   	push   %ebx
 804aee9:	83 ec 14             	sub    $0x14,%esp
 804aeec:	e8 0c 0b 00 00       	call   804b9fd <__x86.get_pc_thunk.bx>
 804aef1:	81 c3 0f 81 00 00    	add    $0x810f,%ebx
 804aef7:	e8 da fe ff ff       	call   804add6 <fork>
 804aefc:	85 c0                	test   %eax,%eax
 804aefe:	74 0e                	je     804af0e <yield+0x29>
 804af00:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804af07:	e8 15 00 00 00       	call   804af21 <wait>
 804af0c:	eb 0c                	jmp    804af1a <yield+0x35>
 804af0e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804af15:	e8 78 ff ff ff       	call   804ae92 <exit>
 804af1a:	90                   	nop
 804af1b:	83 c4 14             	add    $0x14,%esp
 804af1e:	5b                   	pop    %ebx
 804af1f:	5d                   	pop    %ebp
 804af20:	c3                   	ret    

0804af21 <wait>:
 804af21:	55                   	push   %ebp
 804af22:	89 e5                	mov    %esp,%ebp
 804af24:	83 ec 20             	sub    $0x20,%esp
 804af27:	e8 cd 0a 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804af2c:	81 c1 d4 80 00 00    	add    $0x80d4,%ecx
 804af32:	c7 45 e8 ff ff ff ff 	movl   $0xffffffff,-0x18(%ebp)
 804af39:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 804af40:	8b 45 08             	mov    0x8(%ebp),%eax
 804af43:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804af46:	8d 45 e8             	lea    -0x18(%ebp),%eax
 804af49:	c7 45 fc 07 00 00 00 	movl   $0x7,-0x4(%ebp)
 804af50:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804af53:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804af56:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804af59:	cd 2e                	int    $0x2e
 804af5b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804af5e:	b8 27 00 00 00       	mov    $0x27,%eax
 804af63:	cd 2e                	int    $0x2e
 804af65:	89 c2                	mov    %eax,%edx
 804af67:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804af6d:	89 10                	mov    %edx,(%eax)
 804af6f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804af72:	c9                   	leave  
 804af73:	c3                   	ret    

0804af74 <waitpid>:
 804af74:	55                   	push   %ebp
 804af75:	89 e5                	mov    %esp,%ebp
 804af77:	83 ec 20             	sub    $0x20,%esp
 804af7a:	e8 7a 0a 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804af7f:	81 c1 81 80 00 00    	add    $0x8081,%ecx
 804af85:	8b 45 08             	mov    0x8(%ebp),%eax
 804af88:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804af8b:	8b 45 0c             	mov    0xc(%ebp),%eax
 804af8e:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804af91:	8b 45 10             	mov    0x10(%ebp),%eax
 804af94:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804af97:	8d 45 e8             	lea    -0x18(%ebp),%eax
 804af9a:	c7 45 fc 07 00 00 00 	movl   $0x7,-0x4(%ebp)
 804afa1:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804afa4:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804afa7:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804afaa:	cd 2e                	int    $0x2e
 804afac:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804afaf:	b8 27 00 00 00       	mov    $0x27,%eax
 804afb4:	cd 2e                	int    $0x2e
 804afb6:	89 c2                	mov    %eax,%edx
 804afb8:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804afbe:	89 10                	mov    %edx,(%eax)
 804afc0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804afc3:	c9                   	leave  
 804afc4:	c3                   	ret    

0804afc5 <thr_exit>:
 804afc5:	55                   	push   %ebp
 804afc6:	89 e5                	mov    %esp,%ebp
 804afc8:	83 ec 10             	sub    $0x10,%esp
 804afcb:	e8 29 0a 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804afd0:	81 c1 30 80 00 00    	add    $0x8030,%ecx
 804afd6:	8b 45 08             	mov    0x8(%ebp),%eax
 804afd9:	c7 45 fc 1f 00 00 00 	movl   $0x1f,-0x4(%ebp)
 804afe0:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804afe3:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804afe6:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804afe9:	cd 2e                	int    $0x2e
 804afeb:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804afee:	b8 27 00 00 00       	mov    $0x27,%eax
 804aff3:	cd 2e                	int    $0x2e
 804aff5:	89 c2                	mov    %eax,%edx
 804aff7:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804affd:	89 10                	mov    %edx,(%eax)
 804afff:	90                   	nop
 804b000:	c9                   	leave  
 804b001:	c3                   	ret    

0804b002 <getpid>:
 804b002:	55                   	push   %ebp
 804b003:	89 e5                	mov    %esp,%ebp
 804b005:	83 ec 10             	sub    $0x10,%esp
 804b008:	e8 ec 09 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804b00d:	81 c1 f3 7f 00 00    	add    $0x7ff3,%ecx
 804b013:	c7 45 fc 23 00 00 00 	movl   $0x23,-0x4(%ebp)
 804b01a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 804b021:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804b024:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804b027:	cd 2e                	int    $0x2e
 804b029:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b02c:	b8 27 00 00 00       	mov    $0x27,%eax
 804b031:	cd 2e                	int    $0x2e
 804b033:	89 c2                	mov    %eax,%edx
 804b035:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b03b:	89 10                	mov    %edx,(%eax)
 804b03d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b040:	90                   	nop
 804b041:	c9                   	leave  
 804b042:	c3                   	ret    

0804b043 <halt>:
 804b043:	55                   	push   %ebp
 804b044:	89 e5                	mov    %esp,%ebp
 804b046:	83 ec 10             	sub    $0x10,%esp
 804b049:	e8 ab 09 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804b04e:	81 c1 b2 7f 00 00    	add    $0x7fb2,%ecx
 804b054:	c7 45 fc 28 00 00 00 	movl   $0x28,-0x4(%ebp)
 804b05b:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 804b062:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804b065:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804b068:	cd 2e                	int    $0x2e
 804b06a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b06d:	b8 27 00 00 00       	mov    $0x27,%eax
 804b072:	cd 2e                	int    $0x2e
 804b074:	89 c2                	mov    %eax,%edx
 804b076:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b07c:	89 10                	mov    %edx,(%eax)
 804b07e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b081:	90                   	nop
 804b082:	c9                   	leave  
 804b083:	c3                   	ret    

0804b084 <mmap>:
 804b084:	55                   	push   %ebp
 804b085:	89 e5                	mov    %esp,%ebp
 804b087:	83 ec 30             	sub    $0x30,%esp
 804b08a:	e8 6a 09 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804b08f:	81 c1 71 7f 00 00    	add    $0x7f71,%ecx
 804b095:	8b 45 08             	mov    0x8(%ebp),%eax
 804b098:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804b09b:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b09e:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804b0a1:	8b 45 10             	mov    0x10(%ebp),%eax
 804b0a4:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804b0a7:	8b 45 14             	mov    0x14(%ebp),%eax
 804b0aa:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b0ad:	8b 45 18             	mov    0x18(%ebp),%eax
 804b0b0:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b0b3:	8b 45 1c             	mov    0x1c(%ebp),%eax
 804b0b6:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b0b9:	8d 45 dc             	lea    -0x24(%ebp),%eax
 804b0bc:	c7 45 fc 18 00 00 00 	movl   $0x18,-0x4(%ebp)
 804b0c3:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804b0c6:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804b0c9:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804b0cc:	cd 2e                	int    $0x2e
 804b0ce:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b0d1:	b8 27 00 00 00       	mov    $0x27,%eax
 804b0d6:	cd 2e                	int    $0x2e
 804b0d8:	89 c2                	mov    %eax,%edx
 804b0da:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b0e0:	89 10                	mov    %edx,(%eax)
 804b0e2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b0e5:	c9                   	leave  
 804b0e6:	c3                   	ret    

0804b0e7 <munmap>:
 804b0e7:	55                   	push   %ebp
 804b0e8:	89 e5                	mov    %esp,%ebp
 804b0ea:	83 ec 20             	sub    $0x20,%esp
 804b0ed:	e8 07 09 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804b0f2:	81 c1 0e 7f 00 00    	add    $0x7f0e,%ecx
 804b0f8:	8b 45 08             	mov    0x8(%ebp),%eax
 804b0fb:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b0fe:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b101:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b104:	8d 45 ec             	lea    -0x14(%ebp),%eax
 804b107:	c7 45 fc 1a 00 00 00 	movl   $0x1a,-0x4(%ebp)
 804b10e:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804b111:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804b114:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804b117:	cd 2e                	int    $0x2e
 804b119:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b11c:	b8 27 00 00 00       	mov    $0x27,%eax
 804b121:	cd 2e                	int    $0x2e
 804b123:	89 c2                	mov    %eax,%edx
 804b125:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b12b:	89 10                	mov    %edx,(%eax)
 804b12d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b130:	c9                   	leave  
 804b131:	c3                   	ret    

0804b132 <sync>:
 804b132:	55                   	push   %ebp
 804b133:	89 e5                	mov    %esp,%ebp
 804b135:	83 ec 10             	sub    $0x10,%esp
 804b138:	e8 bc 08 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804b13d:	81 c1 c3 7e 00 00    	add    $0x7ec3,%ecx
 804b143:	c7 45 fc 0f 00 00 00 	movl   $0xf,-0x4(%ebp)
 804b14a:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 804b151:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804b154:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804b157:	cd 2e                	int    $0x2e
 804b159:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b15c:	b8 27 00 00 00       	mov    $0x27,%eax
 804b161:	cd 2e                	int    $0x2e
 804b163:	89 c2                	mov    %eax,%edx
 804b165:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b16b:	89 10                	mov    %edx,(%eax)
 804b16d:	90                   	nop
 804b16e:	c9                   	leave  
 804b16f:	c3                   	ret    

0804b170 <open>:
 804b170:	55                   	push   %ebp
 804b171:	89 e5                	mov    %esp,%ebp
 804b173:	53                   	push   %ebx
 804b174:	83 ec 34             	sub    $0x34,%esp
 804b177:	e8 81 08 00 00       	call   804b9fd <__x86.get_pc_thunk.bx>
 804b17c:	81 c3 84 7e 00 00    	add    $0x7e84,%ebx
 804b182:	8b 45 08             	mov    0x8(%ebp),%eax
 804b185:	89 04 24             	mov    %eax,(%esp)
 804b188:	e8 ca 0d 00 00       	call   804bf57 <strlen>
 804b18d:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804b190:	8b 45 08             	mov    0x8(%ebp),%eax
 804b193:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804b196:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b199:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804b19c:	8b 45 10             	mov    0x10(%ebp),%eax
 804b19f:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b1a2:	8d 45 dc             	lea    -0x24(%ebp),%eax
 804b1a5:	c7 45 f4 05 00 00 00 	movl   $0x5,-0xc(%ebp)
 804b1ac:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b1af:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b1b2:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804b1b5:	cd 2e                	int    $0x2e
 804b1b7:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b1ba:	b8 27 00 00 00       	mov    $0x27,%eax
 804b1bf:	cd 2e                	int    $0x2e
 804b1c1:	89 c2                	mov    %eax,%edx
 804b1c3:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b1c9:	89 10                	mov    %edx,(%eax)
 804b1cb:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804b1ce:	83 c4 34             	add    $0x34,%esp
 804b1d1:	5b                   	pop    %ebx
 804b1d2:	5d                   	pop    %ebp
 804b1d3:	c3                   	ret    

0804b1d4 <lseek>:
 804b1d4:	55                   	push   %ebp
 804b1d5:	89 e5                	mov    %esp,%ebp
 804b1d7:	83 ec 20             	sub    $0x20,%esp
 804b1da:	e8 1a 08 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804b1df:	81 c1 21 7e 00 00    	add    $0x7e21,%ecx
 804b1e5:	8b 45 08             	mov    0x8(%ebp),%eax
 804b1e8:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b1eb:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b1ee:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b1f1:	8b 45 10             	mov    0x10(%ebp),%eax
 804b1f4:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b1f7:	8d 45 e8             	lea    -0x18(%ebp),%eax
 804b1fa:	c7 45 fc 0e 00 00 00 	movl   $0xe,-0x4(%ebp)
 804b201:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804b204:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804b207:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804b20a:	cd 2e                	int    $0x2e
 804b20c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b20f:	b8 27 00 00 00       	mov    $0x27,%eax
 804b214:	cd 2e                	int    $0x2e
 804b216:	89 c2                	mov    %eax,%edx
 804b218:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b21e:	89 10                	mov    %edx,(%eax)
 804b220:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b223:	c9                   	leave  
 804b224:	c3                   	ret    

0804b225 <read>:
 804b225:	55                   	push   %ebp
 804b226:	89 e5                	mov    %esp,%ebp
 804b228:	83 ec 20             	sub    $0x20,%esp
 804b22b:	e8 c9 07 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804b230:	81 c1 d0 7d 00 00    	add    $0x7dd0,%ecx
 804b236:	8b 45 08             	mov    0x8(%ebp),%eax
 804b239:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b23c:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b23f:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b242:	8b 45 10             	mov    0x10(%ebp),%eax
 804b245:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b248:	8d 45 e8             	lea    -0x18(%ebp),%eax
 804b24b:	c7 45 fc 03 00 00 00 	movl   $0x3,-0x4(%ebp)
 804b252:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804b255:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804b258:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804b25b:	cd 2e                	int    $0x2e
 804b25d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b260:	b8 27 00 00 00       	mov    $0x27,%eax
 804b265:	cd 2e                	int    $0x2e
 804b267:	89 c2                	mov    %eax,%edx
 804b269:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b26f:	89 10                	mov    %edx,(%eax)
 804b271:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b274:	c9                   	leave  
 804b275:	c3                   	ret    

0804b276 <write>:
 804b276:	55                   	push   %ebp
 804b277:	89 e5                	mov    %esp,%ebp
 804b279:	83 ec 20             	sub    $0x20,%esp
 804b27c:	e8 78 07 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804b281:	81 c1 7f 7d 00 00    	add    $0x7d7f,%ecx
 804b287:	8b 45 08             	mov    0x8(%ebp),%eax
 804b28a:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b28d:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b290:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b293:	8b 45 10             	mov    0x10(%ebp),%eax
 804b296:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b299:	8d 45 e8             	lea    -0x18(%ebp),%eax
 804b29c:	c7 45 fc 04 00 00 00 	movl   $0x4,-0x4(%ebp)
 804b2a3:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804b2a6:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804b2a9:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804b2ac:	cd 2e                	int    $0x2e
 804b2ae:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b2b1:	b8 27 00 00 00       	mov    $0x27,%eax
 804b2b6:	cd 2e                	int    $0x2e
 804b2b8:	89 c2                	mov    %eax,%edx
 804b2ba:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b2c0:	89 10                	mov    %edx,(%eax)
 804b2c2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b2c5:	c9                   	leave  
 804b2c6:	c3                   	ret    

0804b2c7 <close>:
 804b2c7:	55                   	push   %ebp
 804b2c8:	89 e5                	mov    %esp,%ebp
 804b2ca:	83 ec 10             	sub    $0x10,%esp
 804b2cd:	e8 27 07 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804b2d2:	81 c1 2e 7d 00 00    	add    $0x7d2e,%ecx
 804b2d8:	8b 45 08             	mov    0x8(%ebp),%eax
 804b2db:	c7 45 fc 06 00 00 00 	movl   $0x6,-0x4(%ebp)
 804b2e2:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804b2e5:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804b2e8:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804b2eb:	cd 2e                	int    $0x2e
 804b2ed:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b2f0:	b8 27 00 00 00       	mov    $0x27,%eax
 804b2f5:	cd 2e                	int    $0x2e
 804b2f7:	89 c2                	mov    %eax,%edx
 804b2f9:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b2ff:	89 10                	mov    %edx,(%eax)
 804b301:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b304:	90                   	nop
 804b305:	c9                   	leave  
 804b306:	c3                   	ret    

0804b307 <dup>:
 804b307:	55                   	push   %ebp
 804b308:	89 e5                	mov    %esp,%ebp
 804b30a:	83 ec 10             	sub    $0x10,%esp
 804b30d:	e8 e7 06 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804b312:	81 c1 ee 7c 00 00    	add    $0x7cee,%ecx
 804b318:	8b 45 08             	mov    0x8(%ebp),%eax
 804b31b:	c7 45 fc 11 00 00 00 	movl   $0x11,-0x4(%ebp)
 804b322:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804b325:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804b328:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804b32b:	cd 2e                	int    $0x2e
 804b32d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b330:	b8 27 00 00 00       	mov    $0x27,%eax
 804b335:	cd 2e                	int    $0x2e
 804b337:	89 c2                	mov    %eax,%edx
 804b339:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b33f:	89 10                	mov    %edx,(%eax)
 804b341:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b344:	90                   	nop
 804b345:	c9                   	leave  
 804b346:	c3                   	ret    

0804b347 <dup2>:
 804b347:	55                   	push   %ebp
 804b348:	89 e5                	mov    %esp,%ebp
 804b34a:	83 ec 20             	sub    $0x20,%esp
 804b34d:	e8 a7 06 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804b352:	81 c1 ae 7c 00 00    	add    $0x7cae,%ecx
 804b358:	8b 45 08             	mov    0x8(%ebp),%eax
 804b35b:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b35e:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b361:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b364:	8d 45 ec             	lea    -0x14(%ebp),%eax
 804b367:	c7 45 fc 2b 00 00 00 	movl   $0x2b,-0x4(%ebp)
 804b36e:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804b371:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804b374:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804b377:	cd 2e                	int    $0x2e
 804b379:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b37c:	b8 27 00 00 00       	mov    $0x27,%eax
 804b381:	cd 2e                	int    $0x2e
 804b383:	89 c2                	mov    %eax,%edx
 804b385:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b38b:	89 10                	mov    %edx,(%eax)
 804b38d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b390:	c9                   	leave  
 804b391:	c3                   	ret    

0804b392 <mkdir>:
 804b392:	55                   	push   %ebp
 804b393:	89 e5                	mov    %esp,%ebp
 804b395:	53                   	push   %ebx
 804b396:	83 ec 34             	sub    $0x34,%esp
 804b399:	e8 5f 06 00 00       	call   804b9fd <__x86.get_pc_thunk.bx>
 804b39e:	81 c3 62 7c 00 00    	add    $0x7c62,%ebx
 804b3a4:	8b 45 08             	mov    0x8(%ebp),%eax
 804b3a7:	89 04 24             	mov    %eax,(%esp)
 804b3aa:	e8 a8 0b 00 00       	call   804bf57 <strlen>
 804b3af:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804b3b2:	8b 45 08             	mov    0x8(%ebp),%eax
 804b3b5:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804b3b8:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b3bb:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b3be:	8d 45 e0             	lea    -0x20(%ebp),%eax
 804b3c1:	c7 45 f4 16 00 00 00 	movl   $0x16,-0xc(%ebp)
 804b3c8:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b3cb:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b3ce:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804b3d1:	cd 2e                	int    $0x2e
 804b3d3:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b3d6:	b8 27 00 00 00       	mov    $0x27,%eax
 804b3db:	cd 2e                	int    $0x2e
 804b3dd:	89 c2                	mov    %eax,%edx
 804b3df:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b3e5:	89 10                	mov    %edx,(%eax)
 804b3e7:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804b3ea:	83 c4 34             	add    $0x34,%esp
 804b3ed:	5b                   	pop    %ebx
 804b3ee:	5d                   	pop    %ebp
 804b3ef:	c3                   	ret    

0804b3f0 <rmdir>:
 804b3f0:	55                   	push   %ebp
 804b3f1:	89 e5                	mov    %esp,%ebp
 804b3f3:	53                   	push   %ebx
 804b3f4:	83 ec 34             	sub    $0x34,%esp
 804b3f7:	e8 01 06 00 00       	call   804b9fd <__x86.get_pc_thunk.bx>
 804b3fc:	81 c3 04 7c 00 00    	add    $0x7c04,%ebx
 804b402:	8b 45 08             	mov    0x8(%ebp),%eax
 804b405:	89 04 24             	mov    %eax,(%esp)
 804b408:	e8 4a 0b 00 00       	call   804bf57 <strlen>
 804b40d:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b410:	8b 45 08             	mov    0x8(%ebp),%eax
 804b413:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804b416:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804b419:	c7 45 f4 15 00 00 00 	movl   $0x15,-0xc(%ebp)
 804b420:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b423:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b426:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804b429:	cd 2e                	int    $0x2e
 804b42b:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b42e:	b8 27 00 00 00       	mov    $0x27,%eax
 804b433:	cd 2e                	int    $0x2e
 804b435:	89 c2                	mov    %eax,%edx
 804b437:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b43d:	89 10                	mov    %edx,(%eax)
 804b43f:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804b442:	83 c4 34             	add    $0x34,%esp
 804b445:	5b                   	pop    %ebx
 804b446:	5d                   	pop    %ebp
 804b447:	c3                   	ret    

0804b448 <unlink>:
 804b448:	55                   	push   %ebp
 804b449:	89 e5                	mov    %esp,%ebp
 804b44b:	53                   	push   %ebx
 804b44c:	83 ec 34             	sub    $0x34,%esp
 804b44f:	e8 a9 05 00 00       	call   804b9fd <__x86.get_pc_thunk.bx>
 804b454:	81 c3 ac 7b 00 00    	add    $0x7bac,%ebx
 804b45a:	8b 45 08             	mov    0x8(%ebp),%eax
 804b45d:	89 04 24             	mov    %eax,(%esp)
 804b460:	e8 f2 0a 00 00       	call   804bf57 <strlen>
 804b465:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b468:	8b 45 08             	mov    0x8(%ebp),%eax
 804b46b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804b46e:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804b471:	c7 45 f4 09 00 00 00 	movl   $0x9,-0xc(%ebp)
 804b478:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b47b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b47e:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804b481:	cd 2e                	int    $0x2e
 804b483:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b486:	b8 27 00 00 00       	mov    $0x27,%eax
 804b48b:	cd 2e                	int    $0x2e
 804b48d:	89 c2                	mov    %eax,%edx
 804b48f:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b495:	89 10                	mov    %edx,(%eax)
 804b497:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804b49a:	83 c4 34             	add    $0x34,%esp
 804b49d:	5b                   	pop    %ebx
 804b49e:	5d                   	pop    %ebp
 804b49f:	c3                   	ret    

0804b4a0 <link>:
 804b4a0:	55                   	push   %ebp
 804b4a1:	89 e5                	mov    %esp,%ebp
 804b4a3:	53                   	push   %ebx
 804b4a4:	83 ec 34             	sub    $0x34,%esp
 804b4a7:	e8 51 05 00 00       	call   804b9fd <__x86.get_pc_thunk.bx>
 804b4ac:	81 c3 54 7b 00 00    	add    $0x7b54,%ebx
 804b4b2:	8b 45 08             	mov    0x8(%ebp),%eax
 804b4b5:	89 04 24             	mov    %eax,(%esp)
 804b4b8:	e8 9a 0a 00 00       	call   804bf57 <strlen>
 804b4bd:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b4c0:	8b 45 08             	mov    0x8(%ebp),%eax
 804b4c3:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804b4c6:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b4c9:	89 04 24             	mov    %eax,(%esp)
 804b4cc:	e8 86 0a 00 00       	call   804bf57 <strlen>
 804b4d1:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804b4d4:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b4d7:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804b4da:	8d 45 dc             	lea    -0x24(%ebp),%eax
 804b4dd:	c7 45 f4 08 00 00 00 	movl   $0x8,-0xc(%ebp)
 804b4e4:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b4e7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b4ea:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804b4ed:	cd 2e                	int    $0x2e
 804b4ef:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b4f2:	b8 27 00 00 00       	mov    $0x27,%eax
 804b4f7:	cd 2e                	int    $0x2e
 804b4f9:	89 c2                	mov    %eax,%edx
 804b4fb:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b501:	89 10                	mov    %edx,(%eax)
 804b503:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804b506:	83 c4 34             	add    $0x34,%esp
 804b509:	5b                   	pop    %ebx
 804b50a:	5d                   	pop    %ebp
 804b50b:	c3                   	ret    

0804b50c <rename>:
 804b50c:	55                   	push   %ebp
 804b50d:	89 e5                	mov    %esp,%ebp
 804b50f:	53                   	push   %ebx
 804b510:	83 ec 34             	sub    $0x34,%esp
 804b513:	e8 e5 04 00 00       	call   804b9fd <__x86.get_pc_thunk.bx>
 804b518:	81 c3 e8 7a 00 00    	add    $0x7ae8,%ebx
 804b51e:	8b 45 08             	mov    0x8(%ebp),%eax
 804b521:	89 04 24             	mov    %eax,(%esp)
 804b524:	e8 2e 0a 00 00       	call   804bf57 <strlen>
 804b529:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804b52c:	8b 45 08             	mov    0x8(%ebp),%eax
 804b52f:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804b532:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b535:	89 04 24             	mov    %eax,(%esp)
 804b538:	e8 1a 0a 00 00       	call   804bf57 <strlen>
 804b53d:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b540:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b543:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804b546:	8d 45 dc             	lea    -0x24(%ebp),%eax
 804b549:	c7 45 f4 1b 00 00 00 	movl   $0x1b,-0xc(%ebp)
 804b550:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b553:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b556:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804b559:	cd 2e                	int    $0x2e
 804b55b:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b55e:	b8 27 00 00 00       	mov    $0x27,%eax
 804b563:	cd 2e                	int    $0x2e
 804b565:	89 c2                	mov    %eax,%edx
 804b567:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b56d:	89 10                	mov    %edx,(%eax)
 804b56f:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804b572:	83 c4 34             	add    $0x34,%esp
 804b575:	5b                   	pop    %ebx
 804b576:	5d                   	pop    %ebp
 804b577:	c3                   	ret    

0804b578 <chdir>:
 804b578:	55                   	push   %ebp
 804b579:	89 e5                	mov    %esp,%ebp
 804b57b:	53                   	push   %ebx
 804b57c:	83 ec 34             	sub    $0x34,%esp
 804b57f:	e8 79 04 00 00       	call   804b9fd <__x86.get_pc_thunk.bx>
 804b584:	81 c3 7c 7a 00 00    	add    $0x7a7c,%ebx
 804b58a:	8b 45 08             	mov    0x8(%ebp),%eax
 804b58d:	89 04 24             	mov    %eax,(%esp)
 804b590:	e8 c2 09 00 00       	call   804bf57 <strlen>
 804b595:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b598:	8b 45 08             	mov    0x8(%ebp),%eax
 804b59b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804b59e:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804b5a1:	c7 45 f4 0b 00 00 00 	movl   $0xb,-0xc(%ebp)
 804b5a8:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b5ab:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b5ae:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804b5b1:	cd 2e                	int    $0x2e
 804b5b3:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b5b6:	b8 27 00 00 00       	mov    $0x27,%eax
 804b5bb:	cd 2e                	int    $0x2e
 804b5bd:	89 c2                	mov    %eax,%edx
 804b5bf:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b5c5:	89 10                	mov    %edx,(%eax)
 804b5c7:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804b5ca:	83 c4 34             	add    $0x34,%esp
 804b5cd:	5b                   	pop    %ebx
 804b5ce:	5d                   	pop    %ebp
 804b5cf:	c3                   	ret    

0804b5d0 <get_free_mem>:
 804b5d0:	55                   	push   %ebp
 804b5d1:	89 e5                	mov    %esp,%ebp
 804b5d3:	83 ec 10             	sub    $0x10,%esp
 804b5d6:	e8 1e 04 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804b5db:	81 c1 25 7a 00 00    	add    $0x7a25,%ecx
 804b5e1:	c7 45 fc 29 00 00 00 	movl   $0x29,-0x4(%ebp)
 804b5e8:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 804b5ef:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804b5f2:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804b5f5:	cd 2e                	int    $0x2e
 804b5f7:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b5fa:	b8 27 00 00 00       	mov    $0x27,%eax
 804b5ff:	cd 2e                	int    $0x2e
 804b601:	89 c2                	mov    %eax,%edx
 804b603:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b609:	89 10                	mov    %edx,(%eax)
 804b60b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b60e:	c9                   	leave  
 804b60f:	c3                   	ret    

0804b610 <execve>:
 804b610:	55                   	push   %ebp
 804b611:	89 e5                	mov    %esp,%ebp
 804b613:	56                   	push   %esi
 804b614:	53                   	push   %ebx
 804b615:	83 ec 40             	sub    $0x40,%esp
 804b618:	e8 e0 03 00 00       	call   804b9fd <__x86.get_pc_thunk.bx>
 804b61d:	81 c3 e3 79 00 00    	add    $0x79e3,%ebx
 804b623:	8b 45 08             	mov    0x8(%ebp),%eax
 804b626:	89 04 24             	mov    %eax,(%esp)
 804b629:	e8 29 09 00 00       	call   804bf57 <strlen>
 804b62e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804b631:	8b 45 08             	mov    0x8(%ebp),%eax
 804b634:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804b637:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804b63e:	eb 03                	jmp    804b643 <execve+0x33>
 804b640:	ff 45 f4             	incl   -0xc(%ebp)
 804b643:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b646:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804b64d:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b650:	01 d0                	add    %edx,%eax
 804b652:	8b 00                	mov    (%eax),%eax
 804b654:	85 c0                	test   %eax,%eax
 804b656:	75 e8                	jne    804b640 <execve+0x30>
 804b658:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b65b:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804b65e:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804b661:	40                   	inc    %eax
 804b662:	c1 e0 03             	shl    $0x3,%eax
 804b665:	89 04 24             	mov    %eax,(%esp)
 804b668:	e8 ae 2d 00 00       	call   804e41b <malloc>
 804b66d:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804b670:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804b677:	eb 49                	jmp    804b6c2 <execve+0xb2>
 804b679:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804b67c:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804b67f:	c1 e2 03             	shl    $0x3,%edx
 804b682:	8d 34 10             	lea    (%eax,%edx,1),%esi
 804b685:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b688:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804b68f:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b692:	01 d0                	add    %edx,%eax
 804b694:	8b 00                	mov    (%eax),%eax
 804b696:	89 04 24             	mov    %eax,(%esp)
 804b699:	e8 b9 08 00 00       	call   804bf57 <strlen>
 804b69e:	89 46 04             	mov    %eax,0x4(%esi)
 804b6a1:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804b6a4:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804b6a7:	c1 e2 03             	shl    $0x3,%edx
 804b6aa:	01 c2                	add    %eax,%edx
 804b6ac:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b6af:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
 804b6b6:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b6b9:	01 c8                	add    %ecx,%eax
 804b6bb:	8b 00                	mov    (%eax),%eax
 804b6bd:	89 02                	mov    %eax,(%edx)
 804b6bf:	ff 45 f4             	incl   -0xc(%ebp)
 804b6c2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b6c5:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804b6cc:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b6cf:	01 d0                	add    %edx,%eax
 804b6d1:	8b 00                	mov    (%eax),%eax
 804b6d3:	85 c0                	test   %eax,%eax
 804b6d5:	75 a2                	jne    804b679 <execve+0x69>
 804b6d7:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804b6da:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804b6dd:	c1 e2 03             	shl    $0x3,%edx
 804b6e0:	01 d0                	add    %edx,%eax
 804b6e2:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804b6e9:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804b6ec:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804b6ef:	c1 e2 03             	shl    $0x3,%edx
 804b6f2:	01 d0                	add    %edx,%eax
 804b6f4:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804b6fa:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804b701:	eb 03                	jmp    804b706 <execve+0xf6>
 804b703:	ff 45 f4             	incl   -0xc(%ebp)
 804b706:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b709:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804b710:	8b 45 10             	mov    0x10(%ebp),%eax
 804b713:	01 d0                	add    %edx,%eax
 804b715:	8b 00                	mov    (%eax),%eax
 804b717:	85 c0                	test   %eax,%eax
 804b719:	75 e8                	jne    804b703 <execve+0xf3>
 804b71b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b71e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804b721:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804b724:	40                   	inc    %eax
 804b725:	c1 e0 03             	shl    $0x3,%eax
 804b728:	89 04 24             	mov    %eax,(%esp)
 804b72b:	e8 eb 2c 00 00       	call   804e41b <malloc>
 804b730:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804b733:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804b73a:	eb 49                	jmp    804b785 <execve+0x175>
 804b73c:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804b73f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804b742:	c1 e2 03             	shl    $0x3,%edx
 804b745:	8d 34 10             	lea    (%eax,%edx,1),%esi
 804b748:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b74b:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804b752:	8b 45 10             	mov    0x10(%ebp),%eax
 804b755:	01 d0                	add    %edx,%eax
 804b757:	8b 00                	mov    (%eax),%eax
 804b759:	89 04 24             	mov    %eax,(%esp)
 804b75c:	e8 f6 07 00 00       	call   804bf57 <strlen>
 804b761:	89 46 04             	mov    %eax,0x4(%esi)
 804b764:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804b767:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804b76a:	c1 e2 03             	shl    $0x3,%edx
 804b76d:	01 c2                	add    %eax,%edx
 804b76f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b772:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
 804b779:	8b 45 10             	mov    0x10(%ebp),%eax
 804b77c:	01 c8                	add    %ecx,%eax
 804b77e:	8b 00                	mov    (%eax),%eax
 804b780:	89 02                	mov    %eax,(%edx)
 804b782:	ff 45 f4             	incl   -0xc(%ebp)
 804b785:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b788:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804b78f:	8b 45 10             	mov    0x10(%ebp),%eax
 804b792:	01 d0                	add    %edx,%eax
 804b794:	8b 00                	mov    (%eax),%eax
 804b796:	85 c0                	test   %eax,%eax
 804b798:	75 a2                	jne    804b73c <execve+0x12c>
 804b79a:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804b79d:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804b7a0:	c1 e2 03             	shl    $0x3,%edx
 804b7a3:	01 d0                	add    %edx,%eax
 804b7a5:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804b7ac:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804b7af:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804b7b2:	c1 e2 03             	shl    $0x3,%edx
 804b7b5:	01 d0                	add    %edx,%eax
 804b7b7:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804b7bd:	8d 45 d0             	lea    -0x30(%ebp),%eax
 804b7c0:	c7 45 f0 0a 00 00 00 	movl   $0xa,-0x10(%ebp)
 804b7c7:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b7ca:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804b7cd:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804b7d0:	cd 2e                	int    $0x2e
 804b7d2:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b7d5:	b8 27 00 00 00       	mov    $0x27,%eax
 804b7da:	cd 2e                	int    $0x2e
 804b7dc:	89 c2                	mov    %eax,%edx
 804b7de:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b7e4:	89 10                	mov    %edx,(%eax)
 804b7e6:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804b7e9:	83 c4 40             	add    $0x40,%esp
 804b7ec:	5b                   	pop    %ebx
 804b7ed:	5e                   	pop    %esi
 804b7ee:	5d                   	pop    %ebp
 804b7ef:	c3                   	ret    

0804b7f0 <thr_set_errno>:
 804b7f0:	55                   	push   %ebp
 804b7f1:	89 e5                	mov    %esp,%ebp
 804b7f3:	83 ec 10             	sub    $0x10,%esp
 804b7f6:	e8 fe 01 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804b7fb:	81 c1 05 78 00 00    	add    $0x7805,%ecx
 804b801:	8b 45 08             	mov    0x8(%ebp),%eax
 804b804:	c7 45 fc 2a 00 00 00 	movl   $0x2a,-0x4(%ebp)
 804b80b:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804b80e:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804b811:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804b814:	cd 2e                	int    $0x2e
 804b816:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b819:	b8 27 00 00 00       	mov    $0x27,%eax
 804b81e:	cd 2e                	int    $0x2e
 804b820:	89 c2                	mov    %eax,%edx
 804b822:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b828:	89 10                	mov    %edx,(%eax)
 804b82a:	90                   	nop
 804b82b:	c9                   	leave  
 804b82c:	c3                   	ret    

0804b82d <thr_errno>:
 804b82d:	55                   	push   %ebp
 804b82e:	89 e5                	mov    %esp,%ebp
 804b830:	83 ec 10             	sub    $0x10,%esp
 804b833:	e8 c1 01 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804b838:	81 c1 c8 77 00 00    	add    $0x77c8,%ecx
 804b83e:	c7 45 fc 27 00 00 00 	movl   $0x27,-0x4(%ebp)
 804b845:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 804b84c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804b84f:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804b852:	cd 2e                	int    $0x2e
 804b854:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b857:	b8 27 00 00 00       	mov    $0x27,%eax
 804b85c:	cd 2e                	int    $0x2e
 804b85e:	89 c2                	mov    %eax,%edx
 804b860:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b866:	89 10                	mov    %edx,(%eax)
 804b868:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b86b:	90                   	nop
 804b86c:	c9                   	leave  
 804b86d:	c3                   	ret    

0804b86e <getdents>:
 804b86e:	55                   	push   %ebp
 804b86f:	89 e5                	mov    %esp,%ebp
 804b871:	83 ec 20             	sub    $0x20,%esp
 804b874:	e8 80 01 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804b879:	81 c1 87 77 00 00    	add    $0x7787,%ecx
 804b87f:	8b 45 08             	mov    0x8(%ebp),%eax
 804b882:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b885:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b888:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b88b:	8b 45 10             	mov    0x10(%ebp),%eax
 804b88e:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b891:	8d 45 e8             	lea    -0x18(%ebp),%eax
 804b894:	c7 45 fc 17 00 00 00 	movl   $0x17,-0x4(%ebp)
 804b89b:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804b89e:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804b8a1:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804b8a4:	cd 2e                	int    $0x2e
 804b8a6:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b8a9:	b8 27 00 00 00       	mov    $0x27,%eax
 804b8ae:	cd 2e                	int    $0x2e
 804b8b0:	89 c2                	mov    %eax,%edx
 804b8b2:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b8b8:	89 10                	mov    %edx,(%eax)
 804b8ba:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b8bd:	c9                   	leave  
 804b8be:	c3                   	ret    

0804b8bf <stat>:
 804b8bf:	55                   	push   %ebp
 804b8c0:	89 e5                	mov    %esp,%ebp
 804b8c2:	53                   	push   %ebx
 804b8c3:	83 ec 34             	sub    $0x34,%esp
 804b8c6:	e8 32 01 00 00       	call   804b9fd <__x86.get_pc_thunk.bx>
 804b8cb:	81 c3 35 77 00 00    	add    $0x7735,%ebx
 804b8d1:	8b 45 08             	mov    0x8(%ebp),%eax
 804b8d4:	89 04 24             	mov    %eax,(%esp)
 804b8d7:	e8 7b 06 00 00       	call   804bf57 <strlen>
 804b8dc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804b8df:	8b 45 08             	mov    0x8(%ebp),%eax
 804b8e2:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804b8e5:	8b 45 0c             	mov    0xc(%ebp),%eax
 804b8e8:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b8eb:	8d 45 e0             	lea    -0x20(%ebp),%eax
 804b8ee:	c7 45 f4 2f 00 00 00 	movl   $0x2f,-0xc(%ebp)
 804b8f5:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b8f8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b8fb:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804b8fe:	cd 2e                	int    $0x2e
 804b900:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b903:	b8 27 00 00 00       	mov    $0x27,%eax
 804b908:	cd 2e                	int    $0x2e
 804b90a:	89 c2                	mov    %eax,%edx
 804b90c:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b912:	89 10                	mov    %edx,(%eax)
 804b914:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804b917:	83 c4 34             	add    $0x34,%esp
 804b91a:	5b                   	pop    %ebx
 804b91b:	5d                   	pop    %ebp
 804b91c:	c3                   	ret    

0804b91d <pipe>:
 804b91d:	55                   	push   %ebp
 804b91e:	89 e5                	mov    %esp,%ebp
 804b920:	83 ec 10             	sub    $0x10,%esp
 804b923:	e8 d1 00 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804b928:	81 c1 d8 76 00 00    	add    $0x76d8,%ecx
 804b92e:	8b 45 08             	mov    0x8(%ebp),%eax
 804b931:	c7 45 fc 12 00 00 00 	movl   $0x12,-0x4(%ebp)
 804b938:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804b93b:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804b93e:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804b941:	cd 2e                	int    $0x2e
 804b943:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b946:	b8 27 00 00 00       	mov    $0x27,%eax
 804b94b:	cd 2e                	int    $0x2e
 804b94d:	89 c2                	mov    %eax,%edx
 804b94f:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b955:	89 10                	mov    %edx,(%eax)
 804b957:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b95a:	90                   	nop
 804b95b:	c9                   	leave  
 804b95c:	c3                   	ret    

0804b95d <uname>:
 804b95d:	55                   	push   %ebp
 804b95e:	89 e5                	mov    %esp,%ebp
 804b960:	83 ec 10             	sub    $0x10,%esp
 804b963:	e8 91 00 00 00       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804b968:	81 c1 98 76 00 00    	add    $0x7698,%ecx
 804b96e:	8b 45 08             	mov    0x8(%ebp),%eax
 804b971:	c7 45 fc 1c 00 00 00 	movl   $0x1c,-0x4(%ebp)
 804b978:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804b97b:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804b97e:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804b981:	cd 2e                	int    $0x2e
 804b983:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804b986:	b8 27 00 00 00       	mov    $0x27,%eax
 804b98b:	cd 2e                	int    $0x2e
 804b98d:	89 c2                	mov    %eax,%edx
 804b98f:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b995:	89 10                	mov    %edx,(%eax)
 804b997:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b99a:	90                   	nop
 804b99b:	c9                   	leave  
 804b99c:	c3                   	ret    

0804b99d <debug>:
 804b99d:	55                   	push   %ebp
 804b99e:	89 e5                	mov    %esp,%ebp
 804b9a0:	53                   	push   %ebx
 804b9a1:	83 ec 34             	sub    $0x34,%esp
 804b9a4:	e8 54 00 00 00       	call   804b9fd <__x86.get_pc_thunk.bx>
 804b9a9:	81 c3 57 76 00 00    	add    $0x7657,%ebx
 804b9af:	8b 45 08             	mov    0x8(%ebp),%eax
 804b9b2:	89 04 24             	mov    %eax,(%esp)
 804b9b5:	e8 9d 05 00 00       	call   804bf57 <strlen>
 804b9ba:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804b9bd:	8b 45 08             	mov    0x8(%ebp),%eax
 804b9c0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804b9c3:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 804b9c6:	c7 45 f4 29 23 00 00 	movl   $0x2329,-0xc(%ebp)
 804b9cd:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804b9d0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804b9d3:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804b9d6:	cd 2e                	int    $0x2e
 804b9d8:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804b9db:	b8 27 00 00 00       	mov    $0x27,%eax
 804b9e0:	cd 2e                	int    $0x2e
 804b9e2:	89 c2                	mov    %eax,%edx
 804b9e4:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804b9ea:	89 10                	mov    %edx,(%eax)
 804b9ec:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804b9ef:	83 c4 34             	add    $0x34,%esp
 804b9f2:	5b                   	pop    %ebx
 804b9f3:	5d                   	pop    %ebp
 804b9f4:	c3                   	ret    

0804b9f5 <__x86.get_pc_thunk.ax>:
 804b9f5:	8b 04 24             	mov    (%esp),%eax
 804b9f8:	c3                   	ret    

0804b9f9 <__x86.get_pc_thunk.cx>:
 804b9f9:	8b 0c 24             	mov    (%esp),%ecx
 804b9fc:	c3                   	ret    

0804b9fd <__x86.get_pc_thunk.bx>:
 804b9fd:	8b 1c 24             	mov    (%esp),%ebx
 804ba00:	c3                   	ret    

0804ba01 <__tolower>:
 804ba01:	55                   	push   %ebp
 804ba02:	89 e5                	mov    %esp,%ebp
 804ba04:	83 ec 04             	sub    $0x4,%esp
 804ba07:	e8 da 02 00 00       	call   804bce6 <__x86.get_pc_thunk.dx>
 804ba0c:	81 c2 f4 75 00 00    	add    $0x75f4,%edx
 804ba12:	8b 45 08             	mov    0x8(%ebp),%eax
 804ba15:	88 45 fc             	mov    %al,-0x4(%ebp)
 804ba18:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
 804ba1c:	0f b6 84 02 a0 02 00 	movzbl 0x2a0(%edx,%eax,1),%eax
 804ba23:	00 
 804ba24:	0f b6 c0             	movzbl %al,%eax
 804ba27:	83 e0 01             	and    $0x1,%eax
 804ba2a:	85 c0                	test   %eax,%eax
 804ba2c:	74 04                	je     804ba32 <__tolower+0x31>
 804ba2e:	80 45 fc 20          	addb   $0x20,-0x4(%ebp)
 804ba32:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
 804ba36:	c9                   	leave  
 804ba37:	c3                   	ret    

0804ba38 <__toupper>:
 804ba38:	55                   	push   %ebp
 804ba39:	89 e5                	mov    %esp,%ebp
 804ba3b:	83 ec 04             	sub    $0x4,%esp
 804ba3e:	e8 a3 02 00 00       	call   804bce6 <__x86.get_pc_thunk.dx>
 804ba43:	81 c2 bd 75 00 00    	add    $0x75bd,%edx
 804ba49:	8b 45 08             	mov    0x8(%ebp),%eax
 804ba4c:	88 45 fc             	mov    %al,-0x4(%ebp)
 804ba4f:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
 804ba53:	0f b6 84 02 a0 02 00 	movzbl 0x2a0(%edx,%eax,1),%eax
 804ba5a:	00 
 804ba5b:	0f b6 c0             	movzbl %al,%eax
 804ba5e:	83 e0 02             	and    $0x2,%eax
 804ba61:	85 c0                	test   %eax,%eax
 804ba63:	74 04                	je     804ba69 <__toupper+0x31>
 804ba65:	80 6d fc 20          	subb   $0x20,-0x4(%ebp)
 804ba69:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
 804ba6d:	c9                   	leave  
 804ba6e:	c3                   	ret    

0804ba6f <strtol>:
 804ba6f:	55                   	push   %ebp
 804ba70:	89 e5                	mov    %esp,%ebp
 804ba72:	53                   	push   %ebx
 804ba73:	83 ec 20             	sub    $0x20,%esp
 804ba76:	e8 7e ff ff ff       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804ba7b:	81 c1 85 75 00 00    	add    $0x7585,%ecx
 804ba81:	8b 45 08             	mov    0x8(%ebp),%eax
 804ba84:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804ba87:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804ba8a:	8d 50 01             	lea    0x1(%eax),%edx
 804ba8d:	89 55 f8             	mov    %edx,-0x8(%ebp)
 804ba90:	0f b6 00             	movzbl (%eax),%eax
 804ba93:	88 45 f3             	mov    %al,-0xd(%ebp)
 804ba96:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
 804ba9a:	0f b6 c0             	movzbl %al,%eax
 804ba9d:	0f b6 84 01 a0 02 00 	movzbl 0x2a0(%ecx,%eax,1),%eax
 804baa4:	00 
 804baa5:	0f b6 c0             	movzbl %al,%eax
 804baa8:	83 e0 20             	and    $0x20,%eax
 804baab:	85 c0                	test   %eax,%eax
 804baad:	75 d8                	jne    804ba87 <strtol+0x18>
 804baaf:	80 7d f3 2d          	cmpb   $0x2d,-0xd(%ebp)
 804bab3:	75 18                	jne    804bacd <strtol+0x5e>
 804bab5:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
 804babc:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804babf:	8d 50 01             	lea    0x1(%eax),%edx
 804bac2:	89 55 f8             	mov    %edx,-0x8(%ebp)
 804bac5:	0f b6 00             	movzbl (%eax),%eax
 804bac8:	88 45 f3             	mov    %al,-0xd(%ebp)
 804bacb:	eb 1c                	jmp    804bae9 <strtol+0x7a>
 804bacd:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 804bad4:	80 7d f3 2b          	cmpb   $0x2b,-0xd(%ebp)
 804bad8:	75 0f                	jne    804bae9 <strtol+0x7a>
 804bada:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804badd:	8d 50 01             	lea    0x1(%eax),%edx
 804bae0:	89 55 f8             	mov    %edx,-0x8(%ebp)
 804bae3:	0f b6 00             	movzbl (%eax),%eax
 804bae6:	88 45 f3             	mov    %al,-0xd(%ebp)
 804bae9:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 804baed:	74 06                	je     804baf5 <strtol+0x86>
 804baef:	83 7d 10 10          	cmpl   $0x10,0x10(%ebp)
 804baf3:	75 71                	jne    804bb66 <strtol+0xf7>
 804baf5:	80 7d f3 30          	cmpb   $0x30,-0xd(%ebp)
 804baf9:	75 6b                	jne    804bb66 <strtol+0xf7>
 804bafb:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804bafe:	0f b6 00             	movzbl (%eax),%eax
 804bb01:	3c 78                	cmp    $0x78,%al
 804bb03:	74 0a                	je     804bb0f <strtol+0xa0>
 804bb05:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804bb08:	0f b6 00             	movzbl (%eax),%eax
 804bb0b:	3c 58                	cmp    $0x58,%al
 804bb0d:	75 57                	jne    804bb66 <strtol+0xf7>
 804bb0f:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804bb12:	40                   	inc    %eax
 804bb13:	0f b6 00             	movzbl (%eax),%eax
 804bb16:	3c 2f                	cmp    $0x2f,%al
 804bb18:	7e 0b                	jle    804bb25 <strtol+0xb6>
 804bb1a:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804bb1d:	40                   	inc    %eax
 804bb1e:	0f b6 00             	movzbl (%eax),%eax
 804bb21:	3c 39                	cmp    $0x39,%al
 804bb23:	7e 2c                	jle    804bb51 <strtol+0xe2>
 804bb25:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804bb28:	40                   	inc    %eax
 804bb29:	0f b6 00             	movzbl (%eax),%eax
 804bb2c:	3c 40                	cmp    $0x40,%al
 804bb2e:	7e 0b                	jle    804bb3b <strtol+0xcc>
 804bb30:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804bb33:	40                   	inc    %eax
 804bb34:	0f b6 00             	movzbl (%eax),%eax
 804bb37:	3c 46                	cmp    $0x46,%al
 804bb39:	7e 16                	jle    804bb51 <strtol+0xe2>
 804bb3b:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804bb3e:	40                   	inc    %eax
 804bb3f:	0f b6 00             	movzbl (%eax),%eax
 804bb42:	3c 60                	cmp    $0x60,%al
 804bb44:	7e 20                	jle    804bb66 <strtol+0xf7>
 804bb46:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804bb49:	40                   	inc    %eax
 804bb4a:	0f b6 00             	movzbl (%eax),%eax
 804bb4d:	3c 66                	cmp    $0x66,%al
 804bb4f:	7f 15                	jg     804bb66 <strtol+0xf7>
 804bb51:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804bb54:	0f b6 40 01          	movzbl 0x1(%eax),%eax
 804bb58:	88 45 f3             	mov    %al,-0xd(%ebp)
 804bb5b:	83 45 f8 02          	addl   $0x2,-0x8(%ebp)
 804bb5f:	c7 45 10 10 00 00 00 	movl   $0x10,0x10(%ebp)
 804bb66:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 804bb6a:	75 15                	jne    804bb81 <strtol+0x112>
 804bb6c:	80 7d f3 30          	cmpb   $0x30,-0xd(%ebp)
 804bb70:	75 07                	jne    804bb79 <strtol+0x10a>
 804bb72:	b8 08 00 00 00       	mov    $0x8,%eax
 804bb77:	eb 05                	jmp    804bb7e <strtol+0x10f>
 804bb79:	b8 0a 00 00 00       	mov    $0xa,%eax
 804bb7e:	89 45 10             	mov    %eax,0x10(%ebp)
 804bb81:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 804bb88:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804bb8f:	83 7d 10 01          	cmpl   $0x1,0x10(%ebp)
 804bb93:	0f 8e 13 01 00 00    	jle    804bcac <strtol+0x23d>
 804bb99:	83 7d 10 24          	cmpl   $0x24,0x10(%ebp)
 804bb9d:	0f 8f 09 01 00 00    	jg     804bcac <strtol+0x23d>
 804bba3:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 804bba7:	74 07                	je     804bbb0 <strtol+0x141>
 804bba9:	b8 00 00 00 80       	mov    $0x80000000,%eax
 804bbae:	eb 05                	jmp    804bbb5 <strtol+0x146>
 804bbb0:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
 804bbb5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804bbb8:	8b 5d 10             	mov    0x10(%ebp),%ebx
 804bbbb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804bbbe:	ba 00 00 00 00       	mov    $0x0,%edx
 804bbc3:	f7 f3                	div    %ebx
 804bbc5:	89 d0                	mov    %edx,%eax
 804bbc7:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804bbca:	8b 5d 10             	mov    0x10(%ebp),%ebx
 804bbcd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804bbd0:	ba 00 00 00 00       	mov    $0x0,%edx
 804bbd5:	f7 f3                	div    %ebx
 804bbd7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804bbda:	80 7d f3 2f          	cmpb   $0x2f,-0xd(%ebp)
 804bbde:	7e 11                	jle    804bbf1 <strtol+0x182>
 804bbe0:	80 7d f3 39          	cmpb   $0x39,-0xd(%ebp)
 804bbe4:	7f 0b                	jg     804bbf1 <strtol+0x182>
 804bbe6:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
 804bbea:	2c 30                	sub    $0x30,%al
 804bbec:	88 45 f3             	mov    %al,-0xd(%ebp)
 804bbef:	eb 2c                	jmp    804bc1d <strtol+0x1ae>
 804bbf1:	80 7d f3 40          	cmpb   $0x40,-0xd(%ebp)
 804bbf5:	7e 11                	jle    804bc08 <strtol+0x199>
 804bbf7:	80 7d f3 5a          	cmpb   $0x5a,-0xd(%ebp)
 804bbfb:	7f 0b                	jg     804bc08 <strtol+0x199>
 804bbfd:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
 804bc01:	2c 37                	sub    $0x37,%al
 804bc03:	88 45 f3             	mov    %al,-0xd(%ebp)
 804bc06:	eb 15                	jmp    804bc1d <strtol+0x1ae>
 804bc08:	80 7d f3 60          	cmpb   $0x60,-0xd(%ebp)
 804bc0c:	7e 6f                	jle    804bc7d <strtol+0x20e>
 804bc0e:	80 7d f3 7a          	cmpb   $0x7a,-0xd(%ebp)
 804bc12:	7f 69                	jg     804bc7d <strtol+0x20e>
 804bc14:	0f b6 45 f3          	movzbl -0xd(%ebp),%eax
 804bc18:	2c 57                	sub    $0x57,%al
 804bc1a:	88 45 f3             	mov    %al,-0xd(%ebp)
 804bc1d:	0f be 45 f3          	movsbl -0xd(%ebp),%eax
 804bc21:	3b 45 10             	cmp    0x10(%ebp),%eax
 804bc24:	7d 56                	jge    804bc7c <strtol+0x20d>
 804bc26:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804bc2a:	78 19                	js     804bc45 <strtol+0x1d6>
 804bc2c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bc2f:	3b 45 e4             	cmp    -0x1c(%ebp),%eax
 804bc32:	77 11                	ja     804bc45 <strtol+0x1d6>
 804bc34:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bc37:	3b 45 e4             	cmp    -0x1c(%ebp),%eax
 804bc3a:	75 12                	jne    804bc4e <strtol+0x1df>
 804bc3c:	0f be 45 f3          	movsbl -0xd(%ebp),%eax
 804bc40:	3b 45 e0             	cmp    -0x20(%ebp),%eax
 804bc43:	7e 09                	jle    804bc4e <strtol+0x1df>
 804bc45:	c7 45 e8 ff ff ff ff 	movl   $0xffffffff,-0x18(%ebp)
 804bc4c:	eb 1a                	jmp    804bc68 <strtol+0x1f9>
 804bc4e:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
 804bc55:	8b 45 10             	mov    0x10(%ebp),%eax
 804bc58:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804bc5b:	0f af c2             	imul   %edx,%eax
 804bc5e:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804bc61:	0f be 45 f3          	movsbl -0xd(%ebp),%eax
 804bc65:	01 45 f4             	add    %eax,-0xc(%ebp)
 804bc68:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804bc6b:	8d 50 01             	lea    0x1(%eax),%edx
 804bc6e:	89 55 f8             	mov    %edx,-0x8(%ebp)
 804bc71:	0f b6 00             	movzbl (%eax),%eax
 804bc74:	88 45 f3             	mov    %al,-0xd(%ebp)
 804bc77:	e9 5e ff ff ff       	jmp    804bbda <strtol+0x16b>
 804bc7c:	90                   	nop
 804bc7d:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804bc81:	79 23                	jns    804bca6 <strtol+0x237>
 804bc83:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 804bc87:	74 07                	je     804bc90 <strtol+0x221>
 804bc89:	b8 00 00 00 80       	mov    $0x80000000,%eax
 804bc8e:	eb 05                	jmp    804bc95 <strtol+0x226>
 804bc90:	b8 ff ff ff 7f       	mov    $0x7fffffff,%eax
 804bc95:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804bc98:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804bc9e:	c7 00 22 00 00 00    	movl   $0x22,(%eax)
 804bca4:	eb 1d                	jmp    804bcc3 <strtol+0x254>
 804bca6:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804bcaa:	75 0e                	jne    804bcba <strtol+0x24b>
 804bcac:	8d 05 04 4a 05 08    	lea    0x8054a04,%eax
 804bcb2:	c7 00 16 00 00 00    	movl   $0x16,(%eax)
 804bcb8:	eb 09                	jmp    804bcc3 <strtol+0x254>
 804bcba:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 804bcbe:	74 03                	je     804bcc3 <strtol+0x254>
 804bcc0:	f7 5d f4             	negl   -0xc(%ebp)
 804bcc3:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 804bcc7:	74 14                	je     804bcdd <strtol+0x26e>
 804bcc9:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804bccd:	74 06                	je     804bcd5 <strtol+0x266>
 804bccf:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804bcd2:	48                   	dec    %eax
 804bcd3:	eb 03                	jmp    804bcd8 <strtol+0x269>
 804bcd5:	8b 45 08             	mov    0x8(%ebp),%eax
 804bcd8:	8b 55 0c             	mov    0xc(%ebp),%edx
 804bcdb:	89 02                	mov    %eax,(%edx)
 804bcdd:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804bce0:	83 c4 20             	add    $0x20,%esp
 804bce3:	5b                   	pop    %ebx
 804bce4:	5d                   	pop    %ebp
 804bce5:	c3                   	ret    

0804bce6 <__x86.get_pc_thunk.dx>:
 804bce6:	8b 14 24             	mov    (%esp),%edx
 804bce9:	c3                   	ret    

0804bcea <memcmp>:
 804bcea:	55                   	push   %ebp
 804bceb:	89 e5                	mov    %esp,%ebp
 804bced:	83 ec 10             	sub    $0x10,%esp
 804bcf0:	e8 00 fd ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804bcf5:	05 0b 73 00 00       	add    $0x730b,%eax
 804bcfa:	c6 45 f7 00          	movb   $0x0,-0x9(%ebp)
 804bcfe:	8b 45 08             	mov    0x8(%ebp),%eax
 804bd01:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804bd04:	8b 45 0c             	mov    0xc(%ebp),%eax
 804bd07:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804bd0a:	eb 22                	jmp    804bd2e <memcmp+0x44>
 804bd0c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804bd0f:	0f b6 10             	movzbl (%eax),%edx
 804bd12:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804bd15:	0f b6 00             	movzbl (%eax),%eax
 804bd18:	28 c2                	sub    %al,%dl
 804bd1a:	88 d0                	mov    %dl,%al
 804bd1c:	88 45 f7             	mov    %al,-0x9(%ebp)
 804bd1f:	80 7d f7 00          	cmpb   $0x0,-0x9(%ebp)
 804bd23:	75 11                	jne    804bd36 <memcmp+0x4c>
 804bd25:	ff 45 fc             	incl   -0x4(%ebp)
 804bd28:	ff 45 f8             	incl   -0x8(%ebp)
 804bd2b:	ff 4d 10             	decl   0x10(%ebp)
 804bd2e:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 804bd32:	75 d8                	jne    804bd0c <memcmp+0x22>
 804bd34:	eb 01                	jmp    804bd37 <memcmp+0x4d>
 804bd36:	90                   	nop
 804bd37:	0f be 45 f7          	movsbl -0x9(%ebp),%eax
 804bd3b:	c9                   	leave  
 804bd3c:	c3                   	ret    

0804bd3d <memcpy>:
 804bd3d:	55                   	push   %ebp
 804bd3e:	89 e5                	mov    %esp,%ebp
 804bd40:	83 ec 10             	sub    $0x10,%esp
 804bd43:	e8 ad fc ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804bd48:	05 b8 72 00 00       	add    $0x72b8,%eax
 804bd4d:	8b 45 08             	mov    0x8(%ebp),%eax
 804bd50:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804bd53:	8b 45 0c             	mov    0xc(%ebp),%eax
 804bd56:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804bd59:	eb 17                	jmp    804bd72 <memcpy+0x35>
 804bd5b:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804bd5e:	8d 50 01             	lea    0x1(%eax),%edx
 804bd61:	89 55 fc             	mov    %edx,-0x4(%ebp)
 804bd64:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804bd67:	8d 4a 01             	lea    0x1(%edx),%ecx
 804bd6a:	89 4d f8             	mov    %ecx,-0x8(%ebp)
 804bd6d:	0f b6 12             	movzbl (%edx),%edx
 804bd70:	88 10                	mov    %dl,(%eax)
 804bd72:	8b 45 10             	mov    0x10(%ebp),%eax
 804bd75:	8d 50 ff             	lea    -0x1(%eax),%edx
 804bd78:	89 55 10             	mov    %edx,0x10(%ebp)
 804bd7b:	85 c0                	test   %eax,%eax
 804bd7d:	75 dc                	jne    804bd5b <memcpy+0x1e>
 804bd7f:	8b 45 08             	mov    0x8(%ebp),%eax
 804bd82:	c9                   	leave  
 804bd83:	c3                   	ret    

0804bd84 <strncmp>:
 804bd84:	55                   	push   %ebp
 804bd85:	89 e5                	mov    %esp,%ebp
 804bd87:	53                   	push   %ebx
 804bd88:	e8 68 fc ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804bd8d:	05 73 72 00 00       	add    $0x7273,%eax
 804bd92:	b3 00                	mov    $0x0,%bl
 804bd94:	eb 31                	jmp    804bdc7 <strncmp+0x43>
 804bd96:	8b 45 08             	mov    0x8(%ebp),%eax
 804bd99:	0f b6 00             	movzbl (%eax),%eax
 804bd9c:	88 c1                	mov    %al,%cl
 804bd9e:	8b 45 0c             	mov    0xc(%ebp),%eax
 804bda1:	8d 50 01             	lea    0x1(%eax),%edx
 804bda4:	89 55 0c             	mov    %edx,0xc(%ebp)
 804bda7:	0f b6 00             	movzbl (%eax),%eax
 804bdaa:	28 c1                	sub    %al,%cl
 804bdac:	88 c8                	mov    %cl,%al
 804bdae:	88 c3                	mov    %al,%bl
 804bdb0:	84 db                	test   %bl,%bl
 804bdb2:	75 19                	jne    804bdcd <strncmp+0x49>
 804bdb4:	8b 45 08             	mov    0x8(%ebp),%eax
 804bdb7:	8d 50 01             	lea    0x1(%eax),%edx
 804bdba:	89 55 08             	mov    %edx,0x8(%ebp)
 804bdbd:	0f b6 00             	movzbl (%eax),%eax
 804bdc0:	84 c0                	test   %al,%al
 804bdc2:	74 09                	je     804bdcd <strncmp+0x49>
 804bdc4:	ff 4d 10             	decl   0x10(%ebp)
 804bdc7:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
 804bdcb:	75 c9                	jne    804bd96 <strncmp+0x12>
 804bdcd:	0f be c3             	movsbl %bl,%eax
 804bdd0:	5b                   	pop    %ebx
 804bdd1:	5d                   	pop    %ebp
 804bdd2:	c3                   	ret    

0804bdd3 <strcmp>:
 804bdd3:	55                   	push   %ebp
 804bdd4:	89 e5                	mov    %esp,%ebp
 804bdd6:	53                   	push   %ebx
 804bdd7:	e8 19 fc ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804bddc:	05 24 72 00 00       	add    $0x7224,%eax
 804bde1:	8b 45 08             	mov    0x8(%ebp),%eax
 804bde4:	0f b6 00             	movzbl (%eax),%eax
 804bde7:	88 c1                	mov    %al,%cl
 804bde9:	8b 45 0c             	mov    0xc(%ebp),%eax
 804bdec:	8d 50 01             	lea    0x1(%eax),%edx
 804bdef:	89 55 0c             	mov    %edx,0xc(%ebp)
 804bdf2:	0f b6 00             	movzbl (%eax),%eax
 804bdf5:	28 c1                	sub    %al,%cl
 804bdf7:	88 c8                	mov    %cl,%al
 804bdf9:	88 c3                	mov    %al,%bl
 804bdfb:	84 db                	test   %bl,%bl
 804bdfd:	75 12                	jne    804be11 <strcmp+0x3e>
 804bdff:	8b 45 08             	mov    0x8(%ebp),%eax
 804be02:	8d 50 01             	lea    0x1(%eax),%edx
 804be05:	89 55 08             	mov    %edx,0x8(%ebp)
 804be08:	0f b6 00             	movzbl (%eax),%eax
 804be0b:	84 c0                	test   %al,%al
 804be0d:	74 02                	je     804be11 <strcmp+0x3e>
 804be0f:	eb d0                	jmp    804bde1 <strcmp+0xe>
 804be11:	0f be c3             	movsbl %bl,%eax
 804be14:	5b                   	pop    %ebx
 804be15:	5d                   	pop    %ebp
 804be16:	c3                   	ret    

0804be17 <strcpy>:
 804be17:	55                   	push   %ebp
 804be18:	89 e5                	mov    %esp,%ebp
 804be1a:	83 ec 10             	sub    $0x10,%esp
 804be1d:	e8 d3 fb ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804be22:	05 de 71 00 00       	add    $0x71de,%eax
 804be27:	8b 45 08             	mov    0x8(%ebp),%eax
 804be2a:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804be2d:	90                   	nop
 804be2e:	8b 45 08             	mov    0x8(%ebp),%eax
 804be31:	8d 50 01             	lea    0x1(%eax),%edx
 804be34:	89 55 08             	mov    %edx,0x8(%ebp)
 804be37:	8b 55 0c             	mov    0xc(%ebp),%edx
 804be3a:	8d 4a 01             	lea    0x1(%edx),%ecx
 804be3d:	89 4d 0c             	mov    %ecx,0xc(%ebp)
 804be40:	0f b6 12             	movzbl (%edx),%edx
 804be43:	88 10                	mov    %dl,(%eax)
 804be45:	0f b6 00             	movzbl (%eax),%eax
 804be48:	84 c0                	test   %al,%al
 804be4a:	75 e2                	jne    804be2e <strcpy+0x17>
 804be4c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804be4f:	c9                   	leave  
 804be50:	c3                   	ret    

0804be51 <strncpy>:
 804be51:	55                   	push   %ebp
 804be52:	89 e5                	mov    %esp,%ebp
 804be54:	83 ec 10             	sub    $0x10,%esp
 804be57:	e8 99 fb ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804be5c:	05 a4 71 00 00       	add    $0x71a4,%eax
 804be61:	8b 45 08             	mov    0x8(%ebp),%eax
 804be64:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804be67:	90                   	nop
 804be68:	8b 45 10             	mov    0x10(%ebp),%eax
 804be6b:	8d 50 ff             	lea    -0x1(%eax),%edx
 804be6e:	89 55 10             	mov    %edx,0x10(%ebp)
 804be71:	85 c0                	test   %eax,%eax
 804be73:	74 1e                	je     804be93 <strncpy+0x42>
 804be75:	8b 45 08             	mov    0x8(%ebp),%eax
 804be78:	8d 50 01             	lea    0x1(%eax),%edx
 804be7b:	89 55 08             	mov    %edx,0x8(%ebp)
 804be7e:	8b 55 0c             	mov    0xc(%ebp),%edx
 804be81:	8d 4a 01             	lea    0x1(%edx),%ecx
 804be84:	89 4d 0c             	mov    %ecx,0xc(%ebp)
 804be87:	0f b6 12             	movzbl (%edx),%edx
 804be8a:	88 10                	mov    %dl,(%eax)
 804be8c:	0f b6 00             	movzbl (%eax),%eax
 804be8f:	84 c0                	test   %al,%al
 804be91:	75 d5                	jne    804be68 <strncpy+0x17>
 804be93:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804be96:	c9                   	leave  
 804be97:	c3                   	ret    

0804be98 <memset>:
 804be98:	55                   	push   %ebp
 804be99:	89 e5                	mov    %esp,%ebp
 804be9b:	83 ec 10             	sub    $0x10,%esp
 804be9e:	e8 52 fb ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804bea3:	05 5d 71 00 00       	add    $0x715d,%eax
 804bea8:	8b 45 08             	mov    0x8(%ebp),%eax
 804beab:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804beae:	eb 0e                	jmp    804bebe <memset+0x26>
 804beb0:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804beb3:	8d 50 01             	lea    0x1(%eax),%edx
 804beb6:	89 55 fc             	mov    %edx,-0x4(%ebp)
 804beb9:	8b 55 0c             	mov    0xc(%ebp),%edx
 804bebc:	88 10                	mov    %dl,(%eax)
 804bebe:	8b 45 10             	mov    0x10(%ebp),%eax
 804bec1:	8d 50 ff             	lea    -0x1(%eax),%edx
 804bec4:	89 55 10             	mov    %edx,0x10(%ebp)
 804bec7:	85 c0                	test   %eax,%eax
 804bec9:	75 e5                	jne    804beb0 <memset+0x18>
 804becb:	8b 45 08             	mov    0x8(%ebp),%eax
 804bece:	c9                   	leave  
 804becf:	c3                   	ret    

0804bed0 <strnlen>:
 804bed0:	55                   	push   %ebp
 804bed1:	89 e5                	mov    %esp,%ebp
 804bed3:	83 ec 10             	sub    $0x10,%esp
 804bed6:	e8 1a fb ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804bedb:	05 25 71 00 00       	add    $0x7125,%eax
 804bee0:	8b 45 08             	mov    0x8(%ebp),%eax
 804bee3:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804bee6:	eb 03                	jmp    804beeb <strnlen+0x1b>
 804bee8:	ff 45 fc             	incl   -0x4(%ebp)
 804beeb:	8b 45 0c             	mov    0xc(%ebp),%eax
 804beee:	8d 50 ff             	lea    -0x1(%eax),%edx
 804bef1:	89 55 0c             	mov    %edx,0xc(%ebp)
 804bef4:	85 c0                	test   %eax,%eax
 804bef6:	74 0a                	je     804bf02 <strnlen+0x32>
 804bef8:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804befb:	0f b6 00             	movzbl (%eax),%eax
 804befe:	84 c0                	test   %al,%al
 804bf00:	75 e6                	jne    804bee8 <strnlen+0x18>
 804bf02:	8b 55 fc             	mov    -0x4(%ebp),%edx
 804bf05:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf08:	29 c2                	sub    %eax,%edx
 804bf0a:	89 d0                	mov    %edx,%eax
 804bf0c:	c9                   	leave  
 804bf0d:	c3                   	ret    

0804bf0e <strcat>:
 804bf0e:	55                   	push   %ebp
 804bf0f:	89 e5                	mov    %esp,%ebp
 804bf11:	83 ec 10             	sub    $0x10,%esp
 804bf14:	e8 dc fa ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804bf19:	05 e7 70 00 00       	add    $0x70e7,%eax
 804bf1e:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf21:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804bf24:	eb 03                	jmp    804bf29 <strcat+0x1b>
 804bf26:	ff 45 08             	incl   0x8(%ebp)
 804bf29:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf2c:	0f b6 00             	movzbl (%eax),%eax
 804bf2f:	84 c0                	test   %al,%al
 804bf31:	75 f3                	jne    804bf26 <strcat+0x18>
 804bf33:	90                   	nop
 804bf34:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf37:	8d 50 01             	lea    0x1(%eax),%edx
 804bf3a:	89 55 08             	mov    %edx,0x8(%ebp)
 804bf3d:	8b 55 0c             	mov    0xc(%ebp),%edx
 804bf40:	8d 4a 01             	lea    0x1(%edx),%ecx
 804bf43:	89 4d 0c             	mov    %ecx,0xc(%ebp)
 804bf46:	0f b6 12             	movzbl (%edx),%edx
 804bf49:	88 10                	mov    %dl,(%eax)
 804bf4b:	0f b6 00             	movzbl (%eax),%eax
 804bf4e:	84 c0                	test   %al,%al
 804bf50:	75 e2                	jne    804bf34 <strcat+0x26>
 804bf52:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804bf55:	c9                   	leave  
 804bf56:	c3                   	ret    

0804bf57 <strlen>:
 804bf57:	55                   	push   %ebp
 804bf58:	89 e5                	mov    %esp,%ebp
 804bf5a:	83 ec 10             	sub    $0x10,%esp
 804bf5d:	e8 93 fa ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804bf62:	05 9e 70 00 00       	add    $0x709e,%eax
 804bf67:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf6a:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804bf6d:	eb 03                	jmp    804bf72 <strlen+0x1b>
 804bf6f:	ff 45 fc             	incl   -0x4(%ebp)
 804bf72:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804bf75:	0f b6 00             	movzbl (%eax),%eax
 804bf78:	84 c0                	test   %al,%al
 804bf7a:	75 f3                	jne    804bf6f <strlen+0x18>
 804bf7c:	8b 55 fc             	mov    -0x4(%ebp),%edx
 804bf7f:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf82:	29 c2                	sub    %eax,%edx
 804bf84:	89 d0                	mov    %edx,%eax
 804bf86:	c9                   	leave  
 804bf87:	c3                   	ret    

0804bf88 <strchr>:
 804bf88:	55                   	push   %ebp
 804bf89:	89 e5                	mov    %esp,%ebp
 804bf8b:	e8 65 fa ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804bf90:	05 70 70 00 00       	add    $0x7070,%eax
 804bf95:	eb 14                	jmp    804bfab <strchr+0x23>
 804bf97:	8b 45 08             	mov    0x8(%ebp),%eax
 804bf9a:	0f b6 00             	movzbl (%eax),%eax
 804bf9d:	84 c0                	test   %al,%al
 804bf9f:	75 07                	jne    804bfa8 <strchr+0x20>
 804bfa1:	b8 00 00 00 00       	mov    $0x0,%eax
 804bfa6:	eb 13                	jmp    804bfbb <strchr+0x33>
 804bfa8:	ff 45 08             	incl   0x8(%ebp)
 804bfab:	8b 45 08             	mov    0x8(%ebp),%eax
 804bfae:	0f b6 00             	movzbl (%eax),%eax
 804bfb1:	8b 55 0c             	mov    0xc(%ebp),%edx
 804bfb4:	38 d0                	cmp    %dl,%al
 804bfb6:	75 df                	jne    804bf97 <strchr+0xf>
 804bfb8:	8b 45 08             	mov    0x8(%ebp),%eax
 804bfbb:	5d                   	pop    %ebp
 804bfbc:	c3                   	ret    

0804bfbd <strrchr>:
 804bfbd:	55                   	push   %ebp
 804bfbe:	89 e5                	mov    %esp,%ebp
 804bfc0:	83 ec 10             	sub    $0x10,%esp
 804bfc3:	e8 2d fa ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804bfc8:	05 38 70 00 00       	add    $0x7038,%eax
 804bfcd:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 804bfd4:	eb 16                	jmp    804bfec <strrchr+0x2f>
 804bfd6:	8b 45 08             	mov    0x8(%ebp),%eax
 804bfd9:	0f b6 00             	movzbl (%eax),%eax
 804bfdc:	8b 55 0c             	mov    0xc(%ebp),%edx
 804bfdf:	38 d0                	cmp    %dl,%al
 804bfe1:	75 06                	jne    804bfe9 <strrchr+0x2c>
 804bfe3:	8b 45 08             	mov    0x8(%ebp),%eax
 804bfe6:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804bfe9:	ff 45 08             	incl   0x8(%ebp)
 804bfec:	8b 45 08             	mov    0x8(%ebp),%eax
 804bfef:	0f b6 00             	movzbl (%eax),%eax
 804bff2:	84 c0                	test   %al,%al
 804bff4:	75 e0                	jne    804bfd6 <strrchr+0x19>
 804bff6:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804bff9:	c9                   	leave  
 804bffa:	c3                   	ret    

0804bffb <strstr>:
 804bffb:	55                   	push   %ebp
 804bffc:	89 e5                	mov    %esp,%ebp
 804bffe:	53                   	push   %ebx
 804bfff:	83 ec 24             	sub    $0x24,%esp
 804c002:	e8 f6 f9 ff ff       	call   804b9fd <__x86.get_pc_thunk.bx>
 804c007:	81 c3 f9 6f 00 00    	add    $0x6ff9,%ebx
 804c00d:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c010:	89 04 24             	mov    %eax,(%esp)
 804c013:	e8 3f ff ff ff       	call   804bf57 <strlen>
 804c018:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c01b:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804c01f:	75 05                	jne    804c026 <strstr+0x2b>
 804c021:	8b 45 08             	mov    0x8(%ebp),%eax
 804c024:	eb 45                	jmp    804c06b <strstr+0x70>
 804c026:	8b 45 08             	mov    0x8(%ebp),%eax
 804c029:	89 04 24             	mov    %eax,(%esp)
 804c02c:	e8 26 ff ff ff       	call   804bf57 <strlen>
 804c031:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c034:	eb 28                	jmp    804c05e <strstr+0x63>
 804c036:	ff 4d f4             	decl   -0xc(%ebp)
 804c039:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c03c:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c040:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c043:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c047:	8b 45 08             	mov    0x8(%ebp),%eax
 804c04a:	89 04 24             	mov    %eax,(%esp)
 804c04d:	e8 98 fc ff ff       	call   804bcea <memcmp>
 804c052:	85 c0                	test   %eax,%eax
 804c054:	75 05                	jne    804c05b <strstr+0x60>
 804c056:	8b 45 08             	mov    0x8(%ebp),%eax
 804c059:	eb 10                	jmp    804c06b <strstr+0x70>
 804c05b:	ff 45 08             	incl   0x8(%ebp)
 804c05e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804c061:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 804c064:	7d d0                	jge    804c036 <strstr+0x3b>
 804c066:	b8 00 00 00 00       	mov    $0x0,%eax
 804c06b:	83 c4 24             	add    $0x24,%esp
 804c06e:	5b                   	pop    %ebx
 804c06f:	5d                   	pop    %ebp
 804c070:	c3                   	ret    

0804c071 <strdup>:
 804c071:	55                   	push   %ebp
 804c072:	89 e5                	mov    %esp,%ebp
 804c074:	e8 7c f9 ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804c079:	05 87 6f 00 00       	add    $0x6f87,%eax
 804c07e:	b8 00 00 00 00       	mov    $0x0,%eax
 804c083:	5d                   	pop    %ebp
 804c084:	c3                   	ret    

0804c085 <strpbrk>:
 804c085:	55                   	push   %ebp
 804c086:	89 e5                	mov    %esp,%ebp
 804c088:	83 ec 10             	sub    $0x10,%esp
 804c08b:	e8 65 f9 ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804c090:	05 70 6f 00 00       	add    $0x6f70,%eax
 804c095:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c098:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804c09b:	eb 03                	jmp    804c0a0 <strpbrk+0x1b>
 804c09d:	ff 45 fc             	incl   -0x4(%ebp)
 804c0a0:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804c0a3:	0f b6 00             	movzbl (%eax),%eax
 804c0a6:	84 c0                	test   %al,%al
 804c0a8:	74 10                	je     804c0ba <strpbrk+0x35>
 804c0aa:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804c0ad:	0f b6 10             	movzbl (%eax),%edx
 804c0b0:	8b 45 08             	mov    0x8(%ebp),%eax
 804c0b3:	0f b6 00             	movzbl (%eax),%eax
 804c0b6:	38 c2                	cmp    %al,%dl
 804c0b8:	75 e3                	jne    804c09d <strpbrk+0x18>
 804c0ba:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804c0bd:	0f b6 00             	movzbl (%eax),%eax
 804c0c0:	84 c0                	test   %al,%al
 804c0c2:	74 05                	je     804c0c9 <strpbrk+0x44>
 804c0c4:	8b 45 08             	mov    0x8(%ebp),%eax
 804c0c7:	eb 15                	jmp    804c0de <strpbrk+0x59>
 804c0c9:	8b 45 08             	mov    0x8(%ebp),%eax
 804c0cc:	8d 50 01             	lea    0x1(%eax),%edx
 804c0cf:	89 55 08             	mov    %edx,0x8(%ebp)
 804c0d2:	0f b6 00             	movzbl (%eax),%eax
 804c0d5:	84 c0                	test   %al,%al
 804c0d7:	75 bc                	jne    804c095 <strpbrk+0x10>
 804c0d9:	b8 00 00 00 00       	mov    $0x0,%eax
 804c0de:	c9                   	leave  
 804c0df:	c3                   	ret    

0804c0e0 <strspn>:
 804c0e0:	55                   	push   %ebp
 804c0e1:	89 e5                	mov    %esp,%ebp
 804c0e3:	83 ec 10             	sub    $0x10,%esp
 804c0e6:	e8 0a f9 ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804c0eb:	05 15 6f 00 00       	add    $0x6f15,%eax
 804c0f0:	8b 45 08             	mov    0x8(%ebp),%eax
 804c0f3:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804c0f6:	eb 32                	jmp    804c12a <strspn+0x4a>
 804c0f8:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c0fb:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804c0fe:	eb 03                	jmp    804c103 <strspn+0x23>
 804c100:	ff 45 fc             	incl   -0x4(%ebp)
 804c103:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804c106:	0f b6 00             	movzbl (%eax),%eax
 804c109:	84 c0                	test   %al,%al
 804c10b:	74 10                	je     804c11d <strspn+0x3d>
 804c10d:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804c110:	0f b6 10             	movzbl (%eax),%edx
 804c113:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804c116:	0f b6 00             	movzbl (%eax),%eax
 804c119:	38 c2                	cmp    %al,%dl
 804c11b:	75 e3                	jne    804c100 <strspn+0x20>
 804c11d:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804c120:	0f b6 00             	movzbl (%eax),%eax
 804c123:	84 c0                	test   %al,%al
 804c125:	74 0f                	je     804c136 <strspn+0x56>
 804c127:	ff 45 f8             	incl   -0x8(%ebp)
 804c12a:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804c12d:	0f b6 00             	movzbl (%eax),%eax
 804c130:	84 c0                	test   %al,%al
 804c132:	75 c4                	jne    804c0f8 <strspn+0x18>
 804c134:	eb 01                	jmp    804c137 <strspn+0x57>
 804c136:	90                   	nop
 804c137:	8b 55 f8             	mov    -0x8(%ebp),%edx
 804c13a:	8b 45 08             	mov    0x8(%ebp),%eax
 804c13d:	29 c2                	sub    %eax,%edx
 804c13f:	89 d0                	mov    %edx,%eax
 804c141:	c9                   	leave  
 804c142:	c3                   	ret    

0804c143 <strtok>:
 804c143:	55                   	push   %ebp
 804c144:	89 e5                	mov    %esp,%ebp
 804c146:	53                   	push   %ebx
 804c147:	83 ec 24             	sub    $0x24,%esp
 804c14a:	e8 ae f8 ff ff       	call   804b9fd <__x86.get_pc_thunk.bx>
 804c14f:	81 c3 b1 6e 00 00    	add    $0x6eb1,%ebx
 804c155:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804c159:	75 08                	jne    804c163 <strtok+0x20>
 804c15b:	8b 83 a4 19 00 00    	mov    0x19a4(%ebx),%eax
 804c161:	eb 03                	jmp    804c166 <strtok+0x23>
 804c163:	8b 45 08             	mov    0x8(%ebp),%eax
 804c166:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c169:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804c16d:	75 07                	jne    804c176 <strtok+0x33>
 804c16f:	b8 00 00 00 00       	mov    $0x0,%eax
 804c174:	eb 69                	jmp    804c1df <strtok+0x9c>
 804c176:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c179:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c17d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804c180:	89 04 24             	mov    %eax,(%esp)
 804c183:	e8 58 ff ff ff       	call   804c0e0 <strspn>
 804c188:	89 c2                	mov    %eax,%edx
 804c18a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804c18d:	01 d0                	add    %edx,%eax
 804c18f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c192:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c195:	0f b6 00             	movzbl (%eax),%eax
 804c198:	84 c0                	test   %al,%al
 804c19a:	75 07                	jne    804c1a3 <strtok+0x60>
 804c19c:	b8 00 00 00 00       	mov    $0x0,%eax
 804c1a1:	eb 3c                	jmp    804c1df <strtok+0x9c>
 804c1a3:	8b 45 0c             	mov    0xc(%ebp),%eax
 804c1a6:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c1aa:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c1ad:	89 04 24             	mov    %eax,(%esp)
 804c1b0:	e8 d0 fe ff ff       	call   804c085 <strpbrk>
 804c1b5:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804c1b8:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 804c1bc:	75 0c                	jne    804c1ca <strtok+0x87>
 804c1be:	c7 83 a4 19 00 00 00 	movl   $0x0,0x19a4(%ebx)
 804c1c5:	00 00 00 
 804c1c8:	eb 12                	jmp    804c1dc <strtok+0x99>
 804c1ca:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804c1cd:	c6 00 00             	movb   $0x0,(%eax)
 804c1d0:	ff 45 ec             	incl   -0x14(%ebp)
 804c1d3:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804c1d6:	89 83 a4 19 00 00    	mov    %eax,0x19a4(%ebx)
 804c1dc:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c1df:	83 c4 24             	add    $0x24,%esp
 804c1e2:	5b                   	pop    %ebx
 804c1e3:	5d                   	pop    %ebp
 804c1e4:	c3                   	ret    

0804c1e5 <strerror>:
 804c1e5:	55                   	push   %ebp
 804c1e6:	89 e5                	mov    %esp,%ebp
 804c1e8:	e8 08 f8 ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804c1ed:	05 13 6e 00 00       	add    $0x6e13,%eax
 804c1f2:	81 7d 08 83 00 00 00 	cmpl   $0x83,0x8(%ebp)
 804c1f9:	0f 87 e8 04 00 00    	ja     804c6e7 <.L90>
 804c1ff:	8b 55 08             	mov    0x8(%ebp),%edx
 804c202:	c1 e2 02             	shl    $0x2,%edx
 804c205:	8b 94 02 a0 e0 ff ff 	mov    -0x1f60(%edx,%eax,1),%edx
 804c20c:	01 c2                	add    %eax,%edx
 804c20e:	ff e2                	jmp    *%edx

0804c210 <.L91>:
 804c210:	8d 80 e4 d5 ff ff    	lea    -0x2a1c(%eax),%eax
 804c216:	e9 d1 04 00 00       	jmp    804c6ec <.L90+0x5>

0804c21b <.L93>:
 804c21b:	8d 80 f3 d5 ff ff    	lea    -0x2a0d(%eax),%eax
 804c221:	e9 c6 04 00 00       	jmp    804c6ec <.L90+0x5>

0804c226 <.L94>:
 804c226:	8d 80 0d d6 ff ff    	lea    -0x29f3(%eax),%eax
 804c22c:	e9 bb 04 00 00       	jmp    804c6ec <.L90+0x5>

0804c231 <.L95>:
 804c231:	8d 80 1d d6 ff ff    	lea    -0x29e3(%eax),%eax
 804c237:	e9 b0 04 00 00       	jmp    804c6ec <.L90+0x5>

0804c23c <.L96>:
 804c23c:	8d 80 35 d6 ff ff    	lea    -0x29cb(%eax),%eax
 804c242:	e9 a5 04 00 00       	jmp    804c6ec <.L90+0x5>

0804c247 <.L97>:
 804c247:	8d 80 3f d6 ff ff    	lea    -0x29c1(%eax),%eax
 804c24d:	e9 9a 04 00 00       	jmp    804c6ec <.L90+0x5>

0804c252 <.L98>:
 804c252:	8d 80 59 d6 ff ff    	lea    -0x29a7(%eax),%eax
 804c258:	e9 8f 04 00 00       	jmp    804c6ec <.L90+0x5>

0804c25d <.L99>:
 804c25d:	8d 80 6b d6 ff ff    	lea    -0x2995(%eax),%eax
 804c263:	e9 84 04 00 00       	jmp    804c6ec <.L90+0x5>

0804c268 <.L100>:
 804c268:	8d 80 7d d6 ff ff    	lea    -0x2983(%eax),%eax
 804c26e:	e9 79 04 00 00       	jmp    804c6ec <.L90+0x5>

0804c273 <.L101>:
 804c273:	8d 80 8d d6 ff ff    	lea    -0x2973(%eax),%eax
 804c279:	e9 6e 04 00 00       	jmp    804c6ec <.L90+0x5>

0804c27e <.L102>:
 804c27e:	8d 80 9c d6 ff ff    	lea    -0x2964(%eax),%eax
 804c284:	e9 63 04 00 00       	jmp    804c6ec <.L90+0x5>

0804c289 <.L103>:
 804c289:	8d 80 bd d6 ff ff    	lea    -0x2943(%eax),%eax
 804c28f:	e9 58 04 00 00       	jmp    804c6ec <.L90+0x5>

0804c294 <.L104>:
 804c294:	8d 80 cd d6 ff ff    	lea    -0x2933(%eax),%eax
 804c29a:	e9 4d 04 00 00       	jmp    804c6ec <.L90+0x5>

0804c29f <.L105>:
 804c29f:	8d 80 df d6 ff ff    	lea    -0x2921(%eax),%eax
 804c2a5:	e9 42 04 00 00       	jmp    804c6ec <.L90+0x5>

0804c2aa <.L106>:
 804c2aa:	8d 80 eb d6 ff ff    	lea    -0x2915(%eax),%eax
 804c2b0:	e9 37 04 00 00       	jmp    804c6ec <.L90+0x5>

0804c2b5 <.L107>:
 804c2b5:	8d 80 01 d7 ff ff    	lea    -0x28ff(%eax),%eax
 804c2bb:	e9 2c 04 00 00       	jmp    804c6ec <.L90+0x5>

0804c2c0 <.L108>:
 804c2c0:	8d 80 13 d7 ff ff    	lea    -0x28ed(%eax),%eax
 804c2c6:	e9 21 04 00 00       	jmp    804c6ec <.L90+0x5>

0804c2cb <.L109>:
 804c2cb:	8d 80 1f d7 ff ff    	lea    -0x28e1(%eax),%eax
 804c2d1:	e9 16 04 00 00       	jmp    804c6ec <.L90+0x5>

0804c2d6 <.L110>:
 804c2d6:	8d 80 31 d7 ff ff    	lea    -0x28cf(%eax),%eax
 804c2dc:	e9 0b 04 00 00       	jmp    804c6ec <.L90+0x5>

0804c2e1 <.L111>:
 804c2e1:	8d 80 40 d7 ff ff    	lea    -0x28c0(%eax),%eax
 804c2e7:	e9 00 04 00 00       	jmp    804c6ec <.L90+0x5>

0804c2ec <.L112>:
 804c2ec:	8d 80 50 d7 ff ff    	lea    -0x28b0(%eax),%eax
 804c2f2:	e9 f5 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c2f7 <.L113>:
 804c2f7:	8d 80 5f d7 ff ff    	lea    -0x28a1(%eax),%eax
 804c2fd:	e9 ea 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c302 <.L114>:
 804c302:	8d 80 70 d7 ff ff    	lea    -0x2890(%eax),%eax
 804c308:	e9 df 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c30d <.L115>:
 804c30d:	8d 80 84 d7 ff ff    	lea    -0x287c(%eax),%eax
 804c313:	e9 d4 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c318 <.L116>:
 804c318:	8d 80 98 d7 ff ff    	lea    -0x2868(%eax),%eax
 804c31e:	e9 c9 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c323 <.L117>:
 804c323:	8d 80 b7 d7 ff ff    	lea    -0x2849(%eax),%eax
 804c329:	e9 be 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c32e <.L118>:
 804c32e:	8d 80 c6 d7 ff ff    	lea    -0x283a(%eax),%eax
 804c334:	e9 b3 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c339 <.L119>:
 804c339:	8d 80 d5 d7 ff ff    	lea    -0x282b(%eax),%eax
 804c33f:	e9 a8 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c344 <.L120>:
 804c344:	8d 80 ed d7 ff ff    	lea    -0x2813(%eax),%eax
 804c34a:	e9 9d 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c34f <.L121>:
 804c34f:	8d 80 fa d7 ff ff    	lea    -0x2806(%eax),%eax
 804c355:	e9 92 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c35a <.L122>:
 804c35a:	8d 80 10 d8 ff ff    	lea    -0x27f0(%eax),%eax
 804c360:	e9 87 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c365 <.L123>:
 804c365:	8d 80 1f d8 ff ff    	lea    -0x27e1(%eax),%eax
 804c36b:	e9 7c 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c370 <.L124>:
 804c370:	8d 80 2c d8 ff ff    	lea    -0x27d4(%eax),%eax
 804c376:	e9 71 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c37b <.L125>:
 804c37b:	8d 80 4b d8 ff ff    	lea    -0x27b5(%eax),%eax
 804c381:	e9 66 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c386 <.L132>:
 804c386:	8d 80 69 d8 ff ff    	lea    -0x2797(%eax),%eax
 804c38c:	e9 5b 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c391 <.L133>:
 804c391:	8d 80 84 d8 ff ff    	lea    -0x277c(%eax),%eax
 804c397:	e9 50 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c39c <.L134>:
 804c39c:	8d 80 97 d8 ff ff    	lea    -0x2769(%eax),%eax
 804c3a2:	e9 45 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c3a7 <.L135>:
 804c3a7:	8d 80 b3 d8 ff ff    	lea    -0x274d(%eax),%eax
 804c3ad:	e9 3a 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c3b2 <.L136>:
 804c3b2:	8d 80 cc d8 ff ff    	lea    -0x2734(%eax),%eax
 804c3b8:	e9 2f 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c3bd <.L137>:
 804c3bd:	8d 80 db d8 ff ff    	lea    -0x2725(%eax),%eax
 804c3c3:	e9 24 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c3c8 <.L138>:
 804c3c8:	8d 80 e9 d8 ff ff    	lea    -0x2717(%eax),%eax
 804c3ce:	e9 19 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c3d3 <.L139>:
 804c3d3:	8d 80 02 d9 ff ff    	lea    -0x26fe(%eax),%eax
 804c3d9:	e9 0e 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c3de <.L140>:
 804c3de:	8d 80 1f d9 ff ff    	lea    -0x26e1(%eax),%eax
 804c3e4:	e9 03 03 00 00       	jmp    804c6ec <.L90+0x5>

0804c3e9 <.L141>:
 804c3e9:	8d 80 3a d9 ff ff    	lea    -0x26c6(%eax),%eax
 804c3ef:	e9 f8 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c3f4 <.L126>:
 804c3f4:	8d 80 49 d9 ff ff    	lea    -0x26b7(%eax),%eax
 804c3fa:	e9 ed 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c3ff <.L128>:
 804c3ff:	8d 80 5d d9 ff ff    	lea    -0x26a3(%eax),%eax
 804c405:	e9 e2 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c40a <.L206>:
 804c40a:	8d 80 78 d9 ff ff    	lea    -0x2688(%eax),%eax
 804c410:	e9 d7 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c415 <.L183>:
 804c415:	8d 80 8b d9 ff ff    	lea    -0x2675(%eax),%eax
 804c41b:	e9 cc 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c420 <.L205>:
 804c420:	8d 80 a3 d9 ff ff    	lea    -0x265d(%eax),%eax
 804c426:	e9 c1 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c42b <.L142>:
 804c42b:	8d 80 b7 d9 ff ff    	lea    -0x2649(%eax),%eax
 804c431:	e9 b6 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c436 <.L143>:
 804c436:	8d 80 c8 d9 ff ff    	lea    -0x2638(%eax),%eax
 804c43c:	e9 ab 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c441 <.L144>:
 804c441:	8d 80 e3 d9 ff ff    	lea    -0x261d(%eax),%eax
 804c447:	e9 a0 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c44c <.L145>:
 804c44c:	8d 80 f1 d9 ff ff    	lea    -0x260f(%eax),%eax
 804c452:	e9 95 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c457 <.L146>:
 804c457:	8d 80 fa d9 ff ff    	lea    -0x2606(%eax),%eax
 804c45d:	e9 8a 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c462 <.L147>:
 804c462:	8d 80 0f da ff ff    	lea    -0x25f1(%eax),%eax
 804c468:	e9 7f 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c46d <.L148>:
 804c46d:	8d 80 1c da ff ff    	lea    -0x25e4(%eax),%eax
 804c473:	e9 74 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c478 <.L207>:
 804c478:	8d 80 2e da ff ff    	lea    -0x25d2(%eax),%eax
 804c47e:	e9 69 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c483 <.L208>:
 804c483:	8d 80 49 da ff ff    	lea    -0x25b7(%eax),%eax
 804c489:	e9 5e 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c48e <.L149>:
 804c48e:	8d 80 61 da ff ff    	lea    -0x259f(%eax),%eax
 804c494:	e9 53 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c499 <.L150>:
 804c499:	8d 80 75 da ff ff    	lea    -0x258b(%eax),%eax
 804c49f:	e9 48 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c4a4 <.L151>:
 804c4a4:	8d 80 8f da ff ff    	lea    -0x2571(%eax),%eax
 804c4aa:	e9 3d 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c4af <.L152>:
 804c4af:	8d 80 9d da ff ff    	lea    -0x2563(%eax),%eax
 804c4b5:	e9 32 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c4ba <.L153>:
 804c4ba:	8d 80 b6 da ff ff    	lea    -0x254a(%eax),%eax
 804c4c0:	e9 27 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c4c5 <.L154>:
 804c4c5:	8d 80 d4 da ff ff    	lea    -0x252c(%eax),%eax
 804c4cb:	e9 1c 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c4d0 <.L155>:
 804c4d0:	8d 80 ea da ff ff    	lea    -0x2516(%eax),%eax
 804c4d6:	e9 11 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c4db <.L156>:
 804c4db:	8d 80 ff da ff ff    	lea    -0x2501(%eax),%eax
 804c4e1:	e9 06 02 00 00       	jmp    804c6ec <.L90+0x5>

0804c4e6 <.L157>:
 804c4e6:	8d 80 19 db ff ff    	lea    -0x24e7(%eax),%eax
 804c4ec:	e9 fb 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c4f1 <.L158>:
 804c4f1:	8d 80 29 db ff ff    	lea    -0x24d7(%eax),%eax
 804c4f7:	e9 f0 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c4fc <.L159>:
 804c4fc:	8d 80 37 db ff ff    	lea    -0x24c9(%eax),%eax
 804c502:	e9 e5 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c507 <.L160>:
 804c507:	8d 80 53 db ff ff    	lea    -0x24ad(%eax),%eax
 804c50d:	e9 da 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c512 <.L161>:
 804c512:	8d 80 62 db ff ff    	lea    -0x249e(%eax),%eax
 804c518:	e9 cf 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c51d <.L162>:
 804c51d:	8d 80 78 db ff ff    	lea    -0x2488(%eax),%eax
 804c523:	e9 c4 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c528 <.L127>:
 804c528:	8d 80 9a db ff ff    	lea    -0x2466(%eax),%eax
 804c52e:	e9 b9 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c533 <.L163>:
 804c533:	8d 80 b0 db ff ff    	lea    -0x2450(%eax),%eax
 804c539:	e9 ae 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c53e <.L164>:
 804c53e:	8d 80 da db ff ff    	lea    -0x2426(%eax),%eax
 804c544:	e9 a3 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c549 <.L165>:
 804c549:	8d 80 f8 db ff ff    	lea    -0x2408(%eax),%eax
 804c54f:	e9 98 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c554 <.L166>:
 804c554:	8d 80 18 dc ff ff    	lea    -0x23e8(%eax),%eax
 804c55a:	e9 8d 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c55f <.L167>:
 804c55f:	8d 80 30 dc ff ff    	lea    -0x23d0(%eax),%eax
 804c565:	e9 82 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c56a <.L168>:
 804c56a:	8d 80 54 dc ff ff    	lea    -0x23ac(%eax),%eax
 804c570:	e9 77 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c575 <.L169>:
 804c575:	8d 80 78 dc ff ff    	lea    -0x2388(%eax),%eax
 804c57b:	e9 6c 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c580 <.L170>:
 804c580:	8d 80 9c dc ff ff    	lea    -0x2364(%eax),%eax
 804c586:	e9 61 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c58b <.L171>:
 804c58b:	8d 80 c4 dc ff ff    	lea    -0x233c(%eax),%eax
 804c591:	e9 56 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c596 <.L172>:
 804c596:	8d 80 e9 dc ff ff    	lea    -0x2317(%eax),%eax
 804c59c:	e9 4b 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c5a1 <.L129>:
 804c5a1:	8d 80 00 dd ff ff    	lea    -0x2300(%eax),%eax
 804c5a7:	e9 40 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c5ac <.L131>:
 804c5ac:	8d 80 22 dd ff ff    	lea    -0x22de(%eax),%eax
 804c5b2:	e9 35 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c5b7 <.L173>:
 804c5b7:	8d 80 35 dd ff ff    	lea    -0x22cb(%eax),%eax
 804c5bd:	e9 2a 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c5c2 <.L174>:
 804c5c2:	8d 80 50 dd ff ff    	lea    -0x22b0(%eax),%eax
 804c5c8:	e9 1f 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c5cd <.L130>:
 804c5cd:	8d 80 79 dd ff ff    	lea    -0x2287(%eax),%eax
 804c5d3:	e9 14 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c5d8 <.L175>:
 804c5d8:	8d 80 8d dd ff ff    	lea    -0x2273(%eax),%eax
 804c5de:	e9 09 01 00 00       	jmp    804c6ec <.L90+0x5>

0804c5e3 <.L176>:
 804c5e3:	8d 80 a8 dd ff ff    	lea    -0x2258(%eax),%eax
 804c5e9:	e9 fe 00 00 00       	jmp    804c6ec <.L90+0x5>

0804c5ee <.L177>:
 804c5ee:	8d 80 c7 dd ff ff    	lea    -0x2239(%eax),%eax
 804c5f4:	e9 f3 00 00 00       	jmp    804c6ec <.L90+0x5>

0804c5f9 <.L178>:
 804c5f9:	8d 80 e4 dd ff ff    	lea    -0x221c(%eax),%eax
 804c5ff:	e9 e8 00 00 00       	jmp    804c6ec <.L90+0x5>

0804c604 <.L179>:
 804c604:	8d 80 f8 dd ff ff    	lea    -0x2208(%eax),%eax
 804c60a:	e9 dd 00 00 00       	jmp    804c6ec <.L90+0x5>

0804c60f <.L180>:
 804c60f:	8d 80 17 de ff ff    	lea    -0x21e9(%eax),%eax
 804c615:	e9 d2 00 00 00       	jmp    804c6ec <.L90+0x5>

0804c61a <.L181>:
 804c61a:	8d 80 2e de ff ff    	lea    -0x21d2(%eax),%eax
 804c620:	e9 c7 00 00 00       	jmp    804c6ec <.L90+0x5>

0804c625 <.L182>:
 804c625:	8d 80 45 de ff ff    	lea    -0x21bb(%eax),%eax
 804c62b:	e9 bc 00 00 00       	jmp    804c6ec <.L90+0x5>

0804c630 <.L184>:
 804c630:	8d 80 5f de ff ff    	lea    -0x21a1(%eax),%eax
 804c636:	e9 b1 00 00 00       	jmp    804c6ec <.L90+0x5>

0804c63b <.L185>:
 804c63b:	8d 80 80 de ff ff    	lea    -0x2180(%eax),%eax
 804c641:	e9 a6 00 00 00       	jmp    804c6ec <.L90+0x5>

0804c646 <.L186>:
 804c646:	8d 80 b0 de ff ff    	lea    -0x2150(%eax),%eax
 804c64c:	e9 9b 00 00 00       	jmp    804c6ec <.L90+0x5>

0804c651 <.L187>:
 804c651:	8d 80 c8 de ff ff    	lea    -0x2138(%eax),%eax
 804c657:	e9 90 00 00 00       	jmp    804c6ec <.L90+0x5>

0804c65c <.L188>:
 804c65c:	8d 80 e7 de ff ff    	lea    -0x2119(%eax),%eax
 804c662:	e9 85 00 00 00       	jmp    804c6ec <.L90+0x5>

0804c667 <.L189>:
 804c667:	8d 80 f7 de ff ff    	lea    -0x2109(%eax),%eax
 804c66d:	eb 7d                	jmp    804c6ec <.L90+0x5>

0804c66f <.L190>:
 804c66f:	8d 80 10 df ff ff    	lea    -0x20f0(%eax),%eax
 804c675:	eb 75                	jmp    804c6ec <.L90+0x5>

0804c677 <.L191>:
 804c677:	8d 80 3c df ff ff    	lea    -0x20c4(%eax),%eax
 804c67d:	eb 6d                	jmp    804c6ec <.L90+0x5>

0804c67f <.L192>:
 804c67f:	8d 80 5d df ff ff    	lea    -0x20a3(%eax),%eax
 804c685:	eb 65                	jmp    804c6ec <.L90+0x5>

0804c687 <.L193>:
 804c687:	8d 80 76 df ff ff    	lea    -0x208a(%eax),%eax
 804c68d:	eb 5d                	jmp    804c6ec <.L90+0x5>

0804c68f <.L194>:
 804c68f:	8d 80 90 df ff ff    	lea    -0x2070(%eax),%eax
 804c695:	eb 55                	jmp    804c6ec <.L90+0x5>

0804c697 <.L195>:
 804c697:	8d 80 ac df ff ff    	lea    -0x2054(%eax),%eax
 804c69d:	eb 4d                	jmp    804c6ec <.L90+0x5>

0804c69f <.L196>:
 804c69f:	8d 80 c4 df ff ff    	lea    -0x203c(%eax),%eax
 804c6a5:	eb 45                	jmp    804c6ec <.L90+0x5>

0804c6a7 <.L197>:
 804c6a7:	8d 80 e8 df ff ff    	lea    -0x2018(%eax),%eax
 804c6ad:	eb 3d                	jmp    804c6ec <.L90+0x5>

0804c6af <.L198>:
 804c6af:	8d 80 0a e0 ff ff    	lea    -0x1ff6(%eax),%eax
 804c6b5:	eb 35                	jmp    804c6ec <.L90+0x5>

0804c6b7 <.L199>:
 804c6b7:	8d 80 1f e0 ff ff    	lea    -0x1fe1(%eax),%eax
 804c6bd:	eb 2d                	jmp    804c6ec <.L90+0x5>

0804c6bf <.L200>:
 804c6bf:	8d 80 32 e0 ff ff    	lea    -0x1fce(%eax),%eax
 804c6c5:	eb 25                	jmp    804c6ec <.L90+0x5>

0804c6c7 <.L201>:
 804c6c7:	8d 80 3f e0 ff ff    	lea    -0x1fc1(%eax),%eax
 804c6cd:	eb 1d                	jmp    804c6ec <.L90+0x5>

0804c6cf <.L202>:
 804c6cf:	8d 80 50 e0 ff ff    	lea    -0x1fb0(%eax),%eax
 804c6d5:	eb 15                	jmp    804c6ec <.L90+0x5>

0804c6d7 <.L203>:
 804c6d7:	8d 80 6e e0 ff ff    	lea    -0x1f92(%eax),%eax
 804c6dd:	eb 0d                	jmp    804c6ec <.L90+0x5>

0804c6df <.L204>:
 804c6df:	8d 80 88 e0 ff ff    	lea    -0x1f78(%eax),%eax
 804c6e5:	eb 05                	jmp    804c6ec <.L90+0x5>

0804c6e7 <.L90>:
 804c6e7:	b8 00 00 00 00       	mov    $0x0,%eax
 804c6ec:	5d                   	pop    %ebp
 804c6ed:	c3                   	ret    

0804c6ee <wrterror>:
 804c6ee:	55                   	push   %ebp
 804c6ef:	89 e5                	mov    %esp,%ebp
 804c6f1:	53                   	push   %ebx
 804c6f2:	83 ec 24             	sub    $0x24,%esp
 804c6f5:	e8 03 f3 ff ff       	call   804b9fd <__x86.get_pc_thunk.bx>
 804c6fa:	81 c3 06 69 00 00    	add    $0x6906,%ebx
 804c700:	8d 83 b1 e2 ff ff    	lea    -0x1d4f(%ebx),%eax
 804c706:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c709:	8b 83 a4 03 00 00    	mov    0x3a4(%ebx),%eax
 804c70f:	89 04 24             	mov    %eax,(%esp)
 804c712:	e8 40 f8 ff ff       	call   804bf57 <strlen>
 804c717:	89 c2                	mov    %eax,%edx
 804c719:	8b 83 a4 03 00 00    	mov    0x3a4(%ebx),%eax
 804c71f:	89 54 24 08          	mov    %edx,0x8(%esp)
 804c723:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c727:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 804c72e:	e8 43 eb ff ff       	call   804b276 <write>
 804c733:	8b 83 00 1a 00 00    	mov    0x1a00(%ebx),%eax
 804c739:	89 04 24             	mov    %eax,(%esp)
 804c73c:	e8 16 f8 ff ff       	call   804bf57 <strlen>
 804c741:	89 c2                	mov    %eax,%edx
 804c743:	8b 83 00 1a 00 00    	mov    0x1a00(%ebx),%eax
 804c749:	89 54 24 08          	mov    %edx,0x8(%esp)
 804c74d:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c751:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 804c758:	e8 19 eb ff ff       	call   804b276 <write>
 804c75d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804c760:	89 04 24             	mov    %eax,(%esp)
 804c763:	e8 ef f7 ff ff       	call   804bf57 <strlen>
 804c768:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c76c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804c76f:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c773:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 804c77a:	e8 f7 ea ff ff       	call   804b276 <write>
 804c77f:	8b 45 08             	mov    0x8(%ebp),%eax
 804c782:	89 04 24             	mov    %eax,(%esp)
 804c785:	e8 cd f7 ff ff       	call   804bf57 <strlen>
 804c78a:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c78e:	8b 45 08             	mov    0x8(%ebp),%eax
 804c791:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c795:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 804c79c:	e8 d5 ea ff ff       	call   804b276 <write>
 804c7a1:	c7 83 dc 19 00 00 01 	movl   $0x1,0x19dc(%ebx)
 804c7a8:	00 00 00 
 804c7ab:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804c7b2:	e8 db e6 ff ff       	call   804ae92 <exit>
 804c7b7:	90                   	nop
 804c7b8:	83 c4 24             	add    $0x24,%esp
 804c7bb:	5b                   	pop    %ebx
 804c7bc:	5d                   	pop    %ebp
 804c7bd:	c3                   	ret    

0804c7be <wrtwarning>:
 804c7be:	55                   	push   %ebp
 804c7bf:	89 e5                	mov    %esp,%ebp
 804c7c1:	53                   	push   %ebx
 804c7c2:	83 ec 24             	sub    $0x24,%esp
 804c7c5:	e8 33 f2 ff ff       	call   804b9fd <__x86.get_pc_thunk.bx>
 804c7ca:	81 c3 36 68 00 00    	add    $0x6836,%ebx
 804c7d0:	8d 83 ba e2 ff ff    	lea    -0x1d46(%ebx),%eax
 804c7d6:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c7d9:	8b 83 d8 19 00 00    	mov    0x19d8(%ebx),%eax
 804c7df:	85 c0                	test   %eax,%eax
 804c7e1:	74 0b                	je     804c7ee <wrtwarning+0x30>
 804c7e3:	8b 45 08             	mov    0x8(%ebp),%eax
 804c7e6:	89 04 24             	mov    %eax,(%esp)
 804c7e9:	e8 00 ff ff ff       	call   804c6ee <wrterror>
 804c7ee:	8b 83 a4 03 00 00    	mov    0x3a4(%ebx),%eax
 804c7f4:	89 04 24             	mov    %eax,(%esp)
 804c7f7:	e8 5b f7 ff ff       	call   804bf57 <strlen>
 804c7fc:	89 c2                	mov    %eax,%edx
 804c7fe:	8b 83 a4 03 00 00    	mov    0x3a4(%ebx),%eax
 804c804:	89 54 24 08          	mov    %edx,0x8(%esp)
 804c808:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c80c:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 804c813:	e8 5e ea ff ff       	call   804b276 <write>
 804c818:	8b 83 00 1a 00 00    	mov    0x1a00(%ebx),%eax
 804c81e:	89 04 24             	mov    %eax,(%esp)
 804c821:	e8 31 f7 ff ff       	call   804bf57 <strlen>
 804c826:	89 c2                	mov    %eax,%edx
 804c828:	8b 83 00 1a 00 00    	mov    0x1a00(%ebx),%eax
 804c82e:	89 54 24 08          	mov    %edx,0x8(%esp)
 804c832:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c836:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 804c83d:	e8 34 ea ff ff       	call   804b276 <write>
 804c842:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804c845:	89 04 24             	mov    %eax,(%esp)
 804c848:	e8 0a f7 ff ff       	call   804bf57 <strlen>
 804c84d:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c851:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804c854:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c858:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 804c85f:	e8 12 ea ff ff       	call   804b276 <write>
 804c864:	8b 45 08             	mov    0x8(%ebp),%eax
 804c867:	89 04 24             	mov    %eax,(%esp)
 804c86a:	e8 e8 f6 ff ff       	call   804bf57 <strlen>
 804c86f:	89 44 24 08          	mov    %eax,0x8(%esp)
 804c873:	8b 45 08             	mov    0x8(%ebp),%eax
 804c876:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c87a:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 804c881:	e8 f0 e9 ff ff       	call   804b276 <write>
 804c886:	90                   	nop
 804c887:	83 c4 24             	add    $0x24,%esp
 804c88a:	5b                   	pop    %ebx
 804c88b:	5d                   	pop    %ebp
 804c88c:	c3                   	ret    

0804c88d <map_pages>:
 804c88d:	55                   	push   %ebp
 804c88e:	89 e5                	mov    %esp,%ebp
 804c890:	53                   	push   %ebx
 804c891:	83 ec 24             	sub    $0x24,%esp
 804c894:	e8 64 f1 ff ff       	call   804b9fd <__x86.get_pc_thunk.bx>
 804c899:	81 c3 67 67 00 00    	add    $0x6767,%ebx
 804c89f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804c8a6:	e8 f8 e3 ff ff       	call   804aca3 <sbrk>
 804c8ab:	05 ff 0f 00 00       	add    $0xfff,%eax
 804c8b0:	25 00 f0 ff ff       	and    $0xfffff000,%eax
 804c8b5:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c8b8:	8b 45 08             	mov    0x8(%ebp),%eax
 804c8bb:	c1 e0 0c             	shl    $0xc,%eax
 804c8be:	89 c2                	mov    %eax,%edx
 804c8c0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804c8c3:	01 d0                	add    %edx,%eax
 804c8c5:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c8c8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c8cb:	89 04 24             	mov    %eax,(%esp)
 804c8ce:	e8 99 e4 ff ff       	call   804ad6c <brk>
 804c8d3:	85 c0                	test   %eax,%eax
 804c8d5:	74 07                	je     804c8de <map_pages+0x51>
 804c8d7:	b8 00 00 00 00       	mov    $0x0,%eax
 804c8dc:	eb 51                	jmp    804c92f <map_pages+0xa2>
 804c8de:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c8e1:	c1 e8 0c             	shr    $0xc,%eax
 804c8e4:	89 c2                	mov    %eax,%edx
 804c8e6:	8b 83 b4 19 00 00    	mov    0x19b4(%ebx),%eax
 804c8ec:	29 c2                	sub    %eax,%edx
 804c8ee:	89 d0                	mov    %edx,%eax
 804c8f0:	48                   	dec    %eax
 804c8f1:	89 83 b8 19 00 00    	mov    %eax,0x19b8(%ebx)
 804c8f7:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c8fa:	89 83 f8 19 00 00    	mov    %eax,0x19f8(%ebx)
 804c900:	8b 83 b8 19 00 00    	mov    0x19b8(%ebx),%eax
 804c906:	8d 50 01             	lea    0x1(%eax),%edx
 804c909:	8b 83 c0 19 00 00    	mov    0x19c0(%ebx),%eax
 804c90f:	39 c2                	cmp    %eax,%edx
 804c911:	72 19                	jb     804c92c <map_pages+0x9f>
 804c913:	8b 83 b8 19 00 00    	mov    0x19b8(%ebx),%eax
 804c919:	89 04 24             	mov    %eax,(%esp)
 804c91c:	e8 14 00 00 00       	call   804c935 <extend_pgdir>
 804c921:	85 c0                	test   %eax,%eax
 804c923:	75 07                	jne    804c92c <map_pages+0x9f>
 804c925:	b8 00 00 00 00       	mov    $0x0,%eax
 804c92a:	eb 03                	jmp    804c92f <map_pages+0xa2>
 804c92c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804c92f:	83 c4 24             	add    $0x24,%esp
 804c932:	5b                   	pop    %ebx
 804c933:	5d                   	pop    %ebp
 804c934:	c3                   	ret    

0804c935 <extend_pgdir>:
 804c935:	55                   	push   %ebp
 804c936:	89 e5                	mov    %esp,%ebp
 804c938:	53                   	push   %ebx
 804c939:	83 ec 34             	sub    $0x34,%esp
 804c93c:	e8 bc f0 ff ff       	call   804b9fd <__x86.get_pc_thunk.bx>
 804c941:	81 c3 bf 66 00 00    	add    $0x66bf,%ebx
 804c947:	8b 45 08             	mov    0x8(%ebp),%eax
 804c94a:	c1 e0 02             	shl    $0x2,%eax
 804c94d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c950:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804c953:	c1 e8 0c             	shr    $0xc,%eax
 804c956:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804c959:	83 45 f4 02          	addl   $0x2,-0xc(%ebp)
 804c95d:	8b 83 c0 19 00 00    	mov    0x19c0(%ebx),%eax
 804c963:	c1 e0 02             	shl    $0x2,%eax
 804c966:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804c969:	8b 83 a8 19 00 00    	mov    0x19a8(%ebx),%eax
 804c96f:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804c972:	c1 e2 0c             	shl    $0xc,%edx
 804c975:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 804c97c:	00 
 804c97d:	89 44 24 10          	mov    %eax,0x10(%esp)
 804c981:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
 804c988:	00 
 804c989:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%esp)
 804c990:	00 
 804c991:	89 54 24 04          	mov    %edx,0x4(%esp)
 804c995:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804c99c:	e8 e3 e6 ff ff       	call   804b084 <mmap>
 804c9a1:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804c9a4:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%ebp)
 804c9a8:	75 07                	jne    804c9b1 <extend_pgdir+0x7c>
 804c9aa:	b8 00 00 00 00       	mov    $0x0,%eax
 804c9af:	eb 5e                	jmp    804ca0f <extend_pgdir+0xda>
 804c9b1:	8b 83 c0 19 00 00    	mov    0x19c0(%ebx),%eax
 804c9b7:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804c9be:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804c9c4:	89 54 24 08          	mov    %edx,0x8(%esp)
 804c9c8:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c9cc:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804c9cf:	89 04 24             	mov    %eax,(%esp)
 804c9d2:	e8 66 f3 ff ff       	call   804bd3d <memcpy>
 804c9d7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804c9da:	c1 e0 0c             	shl    $0xc,%eax
 804c9dd:	c1 e8 02             	shr    $0x2,%eax
 804c9e0:	89 83 c0 19 00 00    	mov    %eax,0x19c0(%ebx)
 804c9e6:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804c9ec:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804c9ef:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804c9f2:	89 83 bc 19 00 00    	mov    %eax,0x19bc(%ebx)
 804c9f8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804c9fb:	89 44 24 04          	mov    %eax,0x4(%esp)
 804c9ff:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804ca02:	89 04 24             	mov    %eax,(%esp)
 804ca05:	e8 dd e6 ff ff       	call   804b0e7 <munmap>
 804ca0a:	b8 01 00 00 00       	mov    $0x1,%eax
 804ca0f:	83 c4 34             	add    $0x34,%esp
 804ca12:	5b                   	pop    %ebx
 804ca13:	5d                   	pop    %ebp
 804ca14:	c3                   	ret    

0804ca15 <malloc_init>:
 804ca15:	55                   	push   %ebp
 804ca16:	89 e5                	mov    %esp,%ebp
 804ca18:	53                   	push   %ebx
 804ca19:	83 ec 34             	sub    $0x34,%esp
 804ca1c:	e8 dc ef ff ff       	call   804b9fd <__x86.get_pc_thunk.bx>
 804ca21:	81 c3 df 65 00 00    	add    $0x65df,%ebx
 804ca27:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804ca2e:	00 
 804ca2f:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
 804ca36:	00 
 804ca37:	8d 83 c5 e2 ff ff    	lea    -0x1d3b(%ebx),%eax
 804ca3d:	89 04 24             	mov    %eax,(%esp)
 804ca40:	e8 2b e7 ff ff       	call   804b170 <open>
 804ca45:	89 83 a8 19 00 00    	mov    %eax,0x19a8(%ebx)
 804ca4b:	8b 83 a8 19 00 00    	mov    0x19a8(%ebx),%eax
 804ca51:	83 f8 ff             	cmp    $0xffffffff,%eax
 804ca54:	75 0e                	jne    804ca64 <malloc_init+0x4f>
 804ca56:	8d 83 cf e2 ff ff    	lea    -0x1d31(%ebx),%eax
 804ca5c:	89 04 24             	mov    %eax,(%esp)
 804ca5f:	e8 8a fc ff ff       	call   804c6ee <wrterror>
 804ca64:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804ca6b:	e9 7c 01 00 00       	jmp    804cbec <.L18+0x45>
 804ca70:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804ca74:	75 0c                	jne    804ca82 <malloc_init+0x6d>
 804ca76:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804ca7d:	e9 53 01 00 00       	jmp    804cbd5 <.L18+0x2e>
 804ca82:	83 7d f0 01          	cmpl   $0x1,-0x10(%ebp)
 804ca86:	75 0c                	jne    804ca94 <malloc_init+0x7f>
 804ca88:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804ca8f:	e9 41 01 00 00       	jmp    804cbd5 <.L18+0x2e>
 804ca94:	8d 05 08 4a 05 08    	lea    0x8054a08,%eax
 804ca9a:	8b 00                	mov    (%eax),%eax
 804ca9c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804ca9f:	e9 31 01 00 00       	jmp    804cbd5 <.L18+0x2e>
 804caa4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804caa7:	0f b6 00             	movzbl (%eax),%eax
 804caaa:	0f be c0             	movsbl %al,%eax
 804caad:	83 e8 3c             	sub    $0x3c,%eax
 804cab0:	83 f8 3e             	cmp    $0x3e,%eax
 804cab3:	0f 87 ee 00 00 00    	ja     804cba7 <.L18>
 804cab9:	c1 e0 02             	shl    $0x2,%eax
 804cabc:	8b 84 18 24 e3 ff ff 	mov    -0x1cdc(%eax,%ebx,1),%eax
 804cac3:	01 d8                	add    %ebx,%eax
 804cac5:	ff e0                	jmp    *%eax

0804cac7 <.L21>:
 804cac7:	8b 83 a0 03 00 00    	mov    0x3a0(%ebx),%eax
 804cacd:	01 c0                	add    %eax,%eax
 804cacf:	89 83 a0 03 00 00    	mov    %eax,0x3a0(%ebx)
 804cad5:	e9 f8 00 00 00       	jmp    804cbd2 <.L18+0x2b>

0804cada <.L19>:
 804cada:	8b 83 a0 03 00 00    	mov    0x3a0(%ebx),%eax
 804cae0:	d1 e8                	shr    %eax
 804cae2:	89 83 a0 03 00 00    	mov    %eax,0x3a0(%ebx)
 804cae8:	e9 e5 00 00 00       	jmp    804cbd2 <.L18+0x2b>

0804caed <.L29>:
 804caed:	c7 83 d8 19 00 00 00 	movl   $0x0,0x19d8(%ebx)
 804caf4:	00 00 00 
 804caf7:	e9 d6 00 00 00       	jmp    804cbd2 <.L18+0x2b>

0804cafc <.L22>:
 804cafc:	c7 83 d8 19 00 00 01 	movl   $0x1,0x19d8(%ebx)
 804cb03:	00 00 00 
 804cb06:	e9 c7 00 00 00       	jmp    804cbd2 <.L18+0x2b>

0804cb0b <.L30>:
 804cb0b:	c7 83 e4 19 00 00 00 	movl   $0x0,0x19e4(%ebx)
 804cb12:	00 00 00 
 804cb15:	e9 b8 00 00 00       	jmp    804cbd2 <.L18+0x2b>

0804cb1a <.L23>:
 804cb1a:	c7 83 e4 19 00 00 01 	movl   $0x1,0x19e4(%ebx)
 804cb21:	00 00 00 
 804cb24:	e9 a9 00 00 00       	jmp    804cbd2 <.L18+0x2b>

0804cb29 <.L32>:
 804cb29:	c7 83 e0 19 00 00 00 	movl   $0x0,0x19e0(%ebx)
 804cb30:	00 00 00 
 804cb33:	e9 9a 00 00 00       	jmp    804cbd2 <.L18+0x2b>

0804cb38 <.L25>:
 804cb38:	c7 83 e0 19 00 00 01 	movl   $0x1,0x19e0(%ebx)
 804cb3f:	00 00 00 
 804cb42:	e9 8b 00 00 00       	jmp    804cbd2 <.L18+0x2b>

0804cb47 <.L31>:
 804cb47:	c7 83 f4 19 00 00 00 	movl   $0x0,0x19f4(%ebx)
 804cb4e:	00 00 00 
 804cb51:	eb 7f                	jmp    804cbd2 <.L18+0x2b>

0804cb53 <.L24>:
 804cb53:	c7 83 f4 19 00 00 01 	movl   $0x1,0x19f4(%ebx)
 804cb5a:	00 00 00 
 804cb5d:	eb 73                	jmp    804cbd2 <.L18+0x2b>

0804cb5f <.L33>:
 804cb5f:	c7 83 ec 19 00 00 00 	movl   $0x0,0x19ec(%ebx)
 804cb66:	00 00 00 
 804cb69:	eb 67                	jmp    804cbd2 <.L18+0x2b>

0804cb6b <.L26>:
 804cb6b:	c7 83 ec 19 00 00 01 	movl   $0x1,0x19ec(%ebx)
 804cb72:	00 00 00 
 804cb75:	eb 5b                	jmp    804cbd2 <.L18+0x2b>

0804cb77 <.L34>:
 804cb77:	c7 83 e8 19 00 00 00 	movl   $0x0,0x19e8(%ebx)
 804cb7e:	00 00 00 
 804cb81:	eb 4f                	jmp    804cbd2 <.L18+0x2b>

0804cb83 <.L27>:
 804cb83:	c7 83 e8 19 00 00 01 	movl   $0x1,0x19e8(%ebx)
 804cb8a:	00 00 00 
 804cb8d:	eb 43                	jmp    804cbd2 <.L18+0x2b>

0804cb8f <.L35>:
 804cb8f:	c7 83 f0 19 00 00 00 	movl   $0x0,0x19f0(%ebx)
 804cb96:	00 00 00 
 804cb99:	eb 37                	jmp    804cbd2 <.L18+0x2b>

0804cb9b <.L28>:
 804cb9b:	c7 83 f0 19 00 00 01 	movl   $0x1,0x19f0(%ebx)
 804cba2:	00 00 00 
 804cba5:	eb 2b                	jmp    804cbd2 <.L18+0x2b>

0804cba7 <.L18>:
 804cba7:	8b 83 d8 19 00 00    	mov    0x19d8(%ebx),%eax
 804cbad:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804cbb0:	c7 83 d8 19 00 00 00 	movl   $0x0,0x19d8(%ebx)
 804cbb7:	00 00 00 
 804cbba:	8d 83 e4 e2 ff ff    	lea    -0x1d1c(%ebx),%eax
 804cbc0:	89 04 24             	mov    %eax,(%esp)
 804cbc3:	e8 f6 fb ff ff       	call   804c7be <wrtwarning>
 804cbc8:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804cbcb:	89 83 d8 19 00 00    	mov    %eax,0x19d8(%ebx)
 804cbd1:	90                   	nop
 804cbd2:	ff 45 f4             	incl   -0xc(%ebp)
 804cbd5:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804cbd9:	74 0e                	je     804cbe9 <.L18+0x42>
 804cbdb:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804cbde:	0f b6 00             	movzbl (%eax),%eax
 804cbe1:	84 c0                	test   %al,%al
 804cbe3:	0f 85 bb fe ff ff    	jne    804caa4 <malloc_init+0x8f>
 804cbe9:	ff 45 f0             	incl   -0x10(%ebp)
 804cbec:	83 7d f0 02          	cmpl   $0x2,-0x10(%ebp)
 804cbf0:	0f 8e 7a fe ff ff    	jle    804ca70 <malloc_init+0x5b>
 804cbf6:	8b 83 f0 19 00 00    	mov    0x19f0(%ebx),%eax
 804cbfc:	85 c0                	test   %eax,%eax
 804cbfe:	74 0a                	je     804cc0a <.L18+0x63>
 804cc00:	c7 83 f4 19 00 00 01 	movl   $0x1,0x19f4(%ebx)
 804cc07:	00 00 00 
 804cc0a:	8b 83 f4 19 00 00    	mov    0x19f4(%ebx),%eax
 804cc10:	85 c0                	test   %eax,%eax
 804cc12:	74 0a                	je     804cc1e <.L18+0x77>
 804cc14:	c7 83 e0 19 00 00 01 	movl   $0x1,0x19e0(%ebx)
 804cc1b:	00 00 00 
 804cc1e:	8b 83 a8 19 00 00    	mov    0x19a8(%ebx),%eax
 804cc24:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 804cc2b:	00 
 804cc2c:	89 44 24 10          	mov    %eax,0x10(%esp)
 804cc30:	c7 44 24 0c 02 00 00 	movl   $0x2,0xc(%esp)
 804cc37:	00 
 804cc38:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%esp)
 804cc3f:	00 
 804cc40:	c7 44 24 04 00 10 00 	movl   $0x1000,0x4(%esp)
 804cc47:	00 
 804cc48:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804cc4f:	e8 30 e4 ff ff       	call   804b084 <mmap>
 804cc54:	89 83 bc 19 00 00    	mov    %eax,0x19bc(%ebx)
 804cc5a:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804cc60:	83 f8 ff             	cmp    $0xffffffff,%eax
 804cc63:	75 0e                	jne    804cc73 <.L18+0xcc>
 804cc65:	8d 83 04 e3 ff ff    	lea    -0x1cfc(%ebx),%eax
 804cc6b:	89 04 24             	mov    %eax,(%esp)
 804cc6e:	e8 7b fa ff ff       	call   804c6ee <wrterror>
 804cc73:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804cc7a:	e8 24 e0 ff ff       	call   804aca3 <sbrk>
 804cc7f:	05 ff 0f 00 00       	add    $0xfff,%eax
 804cc84:	c1 e8 0c             	shr    $0xc,%eax
 804cc87:	89 83 b4 19 00 00    	mov    %eax,0x19b4(%ebx)
 804cc8d:	8b 83 b4 19 00 00    	mov    0x19b4(%ebx),%eax
 804cc93:	83 e8 0c             	sub    $0xc,%eax
 804cc96:	89 83 b4 19 00 00    	mov    %eax,0x19b4(%ebx)
 804cc9c:	c7 83 c0 19 00 00 00 	movl   $0x400,0x19c0(%ebx)
 804cca3:	04 00 00 
 804cca6:	8b 83 a0 03 00 00    	mov    0x3a0(%ebx),%eax
 804ccac:	85 c0                	test   %eax,%eax
 804ccae:	75 0d                	jne    804ccbd <.L18+0x116>
 804ccb0:	8b 83 a0 03 00 00    	mov    0x3a0(%ebx),%eax
 804ccb6:	40                   	inc    %eax
 804ccb7:	89 83 a0 03 00 00    	mov    %eax,0x3a0(%ebx)
 804ccbd:	8b 83 a0 03 00 00    	mov    0x3a0(%ebx),%eax
 804ccc3:	c1 e0 0c             	shl    $0xc,%eax
 804ccc6:	89 83 a0 03 00 00    	mov    %eax,0x3a0(%ebx)
 804cccc:	c7 04 24 14 00 00 00 	movl   $0x14,(%esp)
 804ccd3:	e8 5d 07 00 00       	call   804d435 <imalloc>
 804ccd8:	89 83 fc 19 00 00    	mov    %eax,0x19fc(%ebx)
 804ccde:	8b 83 ac 19 00 00    	mov    0x19ac(%ebx),%eax
 804cce4:	40                   	inc    %eax
 804cce5:	89 83 ac 19 00 00    	mov    %eax,0x19ac(%ebx)
 804cceb:	90                   	nop
 804ccec:	83 c4 34             	add    $0x34,%esp
 804ccef:	5b                   	pop    %ebx
 804ccf0:	5d                   	pop    %ebp
 804ccf1:	c3                   	ret    

0804ccf2 <malloc_pages>:
 804ccf2:	55                   	push   %ebp
 804ccf3:	89 e5                	mov    %esp,%ebp
 804ccf5:	53                   	push   %ebx
 804ccf6:	83 ec 34             	sub    $0x34,%esp
 804ccf9:	e8 ff ec ff ff       	call   804b9fd <__x86.get_pc_thunk.bx>
 804ccfe:	81 c3 02 63 00 00    	add    $0x6302,%ebx
 804cd04:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804cd0b:	8b 45 08             	mov    0x8(%ebp),%eax
 804cd0e:	05 ff 0f 00 00       	add    $0xfff,%eax
 804cd13:	25 00 f0 ff ff       	and    $0xfffff000,%eax
 804cd18:	89 45 08             	mov    %eax,0x8(%ebp)
 804cd1b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804cd22:	8b 83 c4 19 00 00    	mov    0x19c4(%ebx),%eax
 804cd28:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804cd2b:	e9 82 00 00 00       	jmp    804cdb2 <malloc_pages+0xc0>
 804cd30:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804cd33:	8b 40 10             	mov    0x10(%eax),%eax
 804cd36:	3b 45 08             	cmp    0x8(%ebp),%eax
 804cd39:	73 0a                	jae    804cd45 <malloc_pages+0x53>
 804cd3b:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804cd3e:	8b 00                	mov    (%eax),%eax
 804cd40:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804cd43:	eb 6d                	jmp    804cdb2 <malloc_pages+0xc0>
 804cd45:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804cd48:	8b 40 10             	mov    0x10(%eax),%eax
 804cd4b:	3b 45 08             	cmp    0x8(%ebp),%eax
 804cd4e:	75 35                	jne    804cd85 <malloc_pages+0x93>
 804cd50:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804cd53:	8b 40 08             	mov    0x8(%eax),%eax
 804cd56:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804cd59:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804cd5c:	8b 00                	mov    (%eax),%eax
 804cd5e:	85 c0                	test   %eax,%eax
 804cd60:	74 0e                	je     804cd70 <malloc_pages+0x7e>
 804cd62:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804cd65:	8b 00                	mov    (%eax),%eax
 804cd67:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804cd6a:	8b 52 04             	mov    0x4(%edx),%edx
 804cd6d:	89 50 04             	mov    %edx,0x4(%eax)
 804cd70:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804cd73:	8b 40 04             	mov    0x4(%eax),%eax
 804cd76:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804cd79:	8b 12                	mov    (%edx),%edx
 804cd7b:	89 10                	mov    %edx,(%eax)
 804cd7d:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804cd80:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804cd83:	eb 37                	jmp    804cdbc <malloc_pages+0xca>
 804cd85:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804cd88:	8b 40 08             	mov    0x8(%eax),%eax
 804cd8b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804cd8e:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804cd91:	8b 50 08             	mov    0x8(%eax),%edx
 804cd94:	8b 45 08             	mov    0x8(%ebp),%eax
 804cd97:	01 c2                	add    %eax,%edx
 804cd99:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804cd9c:	89 50 08             	mov    %edx,0x8(%eax)
 804cd9f:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804cda2:	8b 40 10             	mov    0x10(%eax),%eax
 804cda5:	2b 45 08             	sub    0x8(%ebp),%eax
 804cda8:	89 c2                	mov    %eax,%edx
 804cdaa:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804cdad:	89 50 10             	mov    %edx,0x10(%eax)
 804cdb0:	eb 0a                	jmp    804cdbc <malloc_pages+0xca>
 804cdb2:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804cdb6:	0f 85 74 ff ff ff    	jne    804cd30 <malloc_pages+0x3e>
 804cdbc:	c1 6d 08 0c          	shrl   $0xc,0x8(%ebp)
 804cdc0:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804cdc4:	75 0e                	jne    804cdd4 <malloc_pages+0xe2>
 804cdc6:	8b 45 08             	mov    0x8(%ebp),%eax
 804cdc9:	89 04 24             	mov    %eax,(%esp)
 804cdcc:	e8 bc fa ff ff       	call   804c88d <map_pages>
 804cdd1:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804cdd4:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804cdd8:	74 7d                	je     804ce57 <malloc_pages+0x165>
 804cdda:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804cddd:	c1 e8 0c             	shr    $0xc,%eax
 804cde0:	89 c2                	mov    %eax,%edx
 804cde2:	8b 83 b4 19 00 00    	mov    0x19b4(%ebx),%eax
 804cde8:	29 c2                	sub    %eax,%edx
 804cdea:	89 d0                	mov    %edx,%eax
 804cdec:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804cdef:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804cdf5:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 804cdf8:	c1 e2 02             	shl    $0x2,%edx
 804cdfb:	01 d0                	add    %edx,%eax
 804cdfd:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
 804ce03:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
 804ce0a:	eb 1c                	jmp    804ce28 <malloc_pages+0x136>
 804ce0c:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804ce12:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 804ce15:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804ce18:	01 ca                	add    %ecx,%edx
 804ce1a:	c1 e2 02             	shl    $0x2,%edx
 804ce1d:	01 d0                	add    %edx,%eax
 804ce1f:	c7 00 03 00 00 00    	movl   $0x3,(%eax)
 804ce25:	ff 45 ec             	incl   -0x14(%ebp)
 804ce28:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804ce2b:	3b 45 08             	cmp    0x8(%ebp),%eax
 804ce2e:	72 dc                	jb     804ce0c <malloc_pages+0x11a>
 804ce30:	8b 83 f4 19 00 00    	mov    0x19f4(%ebx),%eax
 804ce36:	85 c0                	test   %eax,%eax
 804ce38:	74 1d                	je     804ce57 <malloc_pages+0x165>
 804ce3a:	8b 45 08             	mov    0x8(%ebp),%eax
 804ce3d:	c1 e0 0c             	shl    $0xc,%eax
 804ce40:	89 44 24 08          	mov    %eax,0x8(%esp)
 804ce44:	c7 44 24 04 d0 00 00 	movl   $0xd0,0x4(%esp)
 804ce4b:	00 
 804ce4c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ce4f:	89 04 24             	mov    %eax,(%esp)
 804ce52:	e8 41 f0 ff ff       	call   804be98 <memset>
 804ce57:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 804ce5b:	74 20                	je     804ce7d <malloc_pages+0x18b>
 804ce5d:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804ce63:	85 c0                	test   %eax,%eax
 804ce65:	75 0b                	jne    804ce72 <malloc_pages+0x180>
 804ce67:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804ce6a:	89 83 fc 19 00 00    	mov    %eax,0x19fc(%ebx)
 804ce70:	eb 0b                	jmp    804ce7d <malloc_pages+0x18b>
 804ce72:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804ce75:	89 04 24             	mov    %eax,(%esp)
 804ce78:	e8 d7 0e 00 00       	call   804dd54 <ifree>
 804ce7d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804ce80:	83 c4 34             	add    $0x34,%esp
 804ce83:	5b                   	pop    %ebx
 804ce84:	5d                   	pop    %ebp
 804ce85:	c3                   	ret    

0804ce86 <malloc_make_chunks>:
 804ce86:	55                   	push   %ebp
 804ce87:	89 e5                	mov    %esp,%ebp
 804ce89:	56                   	push   %esi
 804ce8a:	53                   	push   %ebx
 804ce8b:	83 ec 30             	sub    $0x30,%esp
 804ce8e:	e8 6a eb ff ff       	call   804b9fd <__x86.get_pc_thunk.bx>
 804ce93:	81 c3 6d 61 00 00    	add    $0x616d,%ebx
 804ce99:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
 804cea0:	e8 4d fe ff ff       	call   804ccf2 <malloc_pages>
 804cea5:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804cea8:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
 804ceac:	75 0a                	jne    804ceb8 <malloc_make_chunks+0x32>
 804ceae:	b8 00 00 00 00       	mov    $0x0,%eax
 804ceb3:	e9 f4 01 00 00       	jmp    804d0ac <malloc_make_chunks+0x226>
 804ceb8:	c7 45 ec 10 00 00 00 	movl   $0x10,-0x14(%ebp)
 804cebf:	8b 45 08             	mov    0x8(%ebp),%eax
 804cec2:	ba 00 10 00 00       	mov    $0x1000,%edx
 804cec7:	88 c1                	mov    %al,%cl
 804cec9:	d3 ea                	shr    %cl,%edx
 804cecb:	89 d0                	mov    %edx,%eax
 804cecd:	83 c0 1f             	add    $0x1f,%eax
 804ced0:	c1 e8 05             	shr    $0x5,%eax
 804ced3:	c1 e0 02             	shl    $0x2,%eax
 804ced6:	01 45 ec             	add    %eax,-0x14(%ebp)
 804ced9:	8b 45 08             	mov    0x8(%ebp),%eax
 804cedc:	ba 01 00 00 00       	mov    $0x1,%edx
 804cee1:	88 c1                	mov    %al,%cl
 804cee3:	d3 e2                	shl    %cl,%edx
 804cee5:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804cee8:	01 c0                	add    %eax,%eax
 804ceea:	39 c2                	cmp    %eax,%edx
 804ceec:	77 08                	ja     804cef6 <malloc_make_chunks+0x70>
 804ceee:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804cef1:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804cef4:	eb 29                	jmp    804cf1f <malloc_make_chunks+0x99>
 804cef6:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804cef9:	89 04 24             	mov    %eax,(%esp)
 804cefc:	e8 34 05 00 00       	call   804d435 <imalloc>
 804cf01:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804cf04:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804cf08:	75 15                	jne    804cf1f <malloc_make_chunks+0x99>
 804cf0a:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804cf0d:	89 04 24             	mov    %eax,(%esp)
 804cf10:	e8 3f 0e 00 00       	call   804dd54 <ifree>
 804cf15:	b8 00 00 00 00       	mov    $0x0,%eax
 804cf1a:	e9 8d 01 00 00       	jmp    804d0ac <malloc_make_chunks+0x226>
 804cf1f:	8b 45 08             	mov    0x8(%ebp),%eax
 804cf22:	ba 01 00 00 00       	mov    $0x1,%edx
 804cf27:	88 c1                	mov    %al,%cl
 804cf29:	d3 e2                	shl    %cl,%edx
 804cf2b:	89 d0                	mov    %edx,%eax
 804cf2d:	0f b7 d0             	movzwl %ax,%edx
 804cf30:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804cf33:	66 89 50 08          	mov    %dx,0x8(%eax)
 804cf37:	8b 45 08             	mov    0x8(%ebp),%eax
 804cf3a:	0f b7 d0             	movzwl %ax,%edx
 804cf3d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804cf40:	66 89 50 0a          	mov    %dx,0xa(%eax)
 804cf44:	8b 45 08             	mov    0x8(%ebp),%eax
 804cf47:	ba 00 10 00 00       	mov    $0x1000,%edx
 804cf4c:	88 c1                	mov    %al,%cl
 804cf4e:	d3 ea                	shr    %cl,%edx
 804cf50:	89 d0                	mov    %edx,%eax
 804cf52:	0f b7 d0             	movzwl %ax,%edx
 804cf55:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804cf58:	66 89 50 0c          	mov    %dx,0xc(%eax)
 804cf5c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804cf5f:	0f b7 50 0c          	movzwl 0xc(%eax),%edx
 804cf63:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804cf66:	66 89 50 0e          	mov    %dx,0xe(%eax)
 804cf6a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804cf6d:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804cf70:	89 50 04             	mov    %edx,0x4(%eax)
 804cf73:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804cf76:	0f b7 40 0e          	movzwl 0xe(%eax),%eax
 804cf7a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804cf7d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804cf84:	eb 19                	jmp    804cf9f <malloc_make_chunks+0x119>
 804cf86:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804cf89:	c1 e8 05             	shr    $0x5,%eax
 804cf8c:	89 c2                	mov    %eax,%edx
 804cf8e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804cf91:	83 c2 04             	add    $0x4,%edx
 804cf94:	c7 04 90 ff ff ff ff 	movl   $0xffffffff,(%eax,%edx,4)
 804cf9b:	83 45 f0 20          	addl   $0x20,-0x10(%ebp)
 804cf9f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804cfa2:	2b 45 f0             	sub    -0x10(%ebp),%eax
 804cfa5:	83 f8 1f             	cmp    $0x1f,%eax
 804cfa8:	77 dc                	ja     804cf86 <malloc_make_chunks+0x100>
 804cfaa:	eb 2c                	jmp    804cfd8 <malloc_make_chunks+0x152>
 804cfac:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804cfaf:	c1 e8 05             	shr    $0x5,%eax
 804cfb2:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804cfb5:	8d 48 04             	lea    0x4(%eax),%ecx
 804cfb8:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804cfbb:	8b 4d f0             	mov    -0x10(%ebp),%ecx
 804cfbe:	83 e1 1f             	and    $0x1f,%ecx
 804cfc1:	be 01 00 00 00       	mov    $0x1,%esi
 804cfc6:	d3 e6                	shl    %cl,%esi
 804cfc8:	89 f1                	mov    %esi,%ecx
 804cfca:	09 d1                	or     %edx,%ecx
 804cfcc:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804cfcf:	83 c0 04             	add    $0x4,%eax
 804cfd2:	89 0c 82             	mov    %ecx,(%edx,%eax,4)
 804cfd5:	ff 45 f0             	incl   -0x10(%ebp)
 804cfd8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804cfdb:	3b 45 e4             	cmp    -0x1c(%ebp),%eax
 804cfde:	72 cc                	jb     804cfac <malloc_make_chunks+0x126>
 804cfe0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804cfe3:	8b 40 04             	mov    0x4(%eax),%eax
 804cfe6:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 804cfe9:	75 72                	jne    804d05d <malloc_make_chunks+0x1d7>
 804cfeb:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804cff2:	eb 63                	jmp    804d057 <malloc_make_chunks+0x1d1>
 804cff4:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804cff7:	c1 e8 05             	shr    $0x5,%eax
 804cffa:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804cffd:	8d 48 04             	lea    0x4(%eax),%ecx
 804d000:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804d003:	8b 4d f0             	mov    -0x10(%ebp),%ecx
 804d006:	83 e1 1f             	and    $0x1f,%ecx
 804d009:	be 01 00 00 00       	mov    $0x1,%esi
 804d00e:	d3 e6                	shl    %cl,%esi
 804d010:	89 f1                	mov    %esi,%ecx
 804d012:	f7 d1                	not    %ecx
 804d014:	21 d1                	and    %edx,%ecx
 804d016:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804d019:	83 c0 04             	add    $0x4,%eax
 804d01c:	89 0c 82             	mov    %ecx,(%edx,%eax,4)
 804d01f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d022:	0f b7 40 0c          	movzwl 0xc(%eax),%eax
 804d026:	48                   	dec    %eax
 804d027:	0f b7 d0             	movzwl %ax,%edx
 804d02a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d02d:	66 89 50 0c          	mov    %dx,0xc(%eax)
 804d031:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d034:	0f b7 40 0e          	movzwl 0xe(%eax),%eax
 804d038:	48                   	dec    %eax
 804d039:	0f b7 d0             	movzwl %ax,%edx
 804d03c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d03f:	66 89 50 0e          	mov    %dx,0xe(%eax)
 804d043:	8b 45 08             	mov    0x8(%ebp),%eax
 804d046:	ba 01 00 00 00       	mov    $0x1,%edx
 804d04b:	88 c1                	mov    %al,%cl
 804d04d:	d3 e2                	shl    %cl,%edx
 804d04f:	89 d0                	mov    %edx,%eax
 804d051:	29 45 ec             	sub    %eax,-0x14(%ebp)
 804d054:	ff 45 f0             	incl   -0x10(%ebp)
 804d057:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 804d05b:	75 97                	jne    804cff4 <malloc_make_chunks+0x16e>
 804d05d:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804d063:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804d066:	89 d1                	mov    %edx,%ecx
 804d068:	c1 e9 0c             	shr    $0xc,%ecx
 804d06b:	8b 93 b4 19 00 00    	mov    0x19b4(%ebx),%edx
 804d071:	29 d1                	sub    %edx,%ecx
 804d073:	89 ca                	mov    %ecx,%edx
 804d075:	c1 e2 02             	shl    $0x2,%edx
 804d078:	01 c2                	add    %eax,%edx
 804d07a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d07d:	89 02                	mov    %eax,(%edx)
 804d07f:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804d085:	8b 55 08             	mov    0x8(%ebp),%edx
 804d088:	c1 e2 02             	shl    $0x2,%edx
 804d08b:	01 d0                	add    %edx,%eax
 804d08d:	8b 10                	mov    (%eax),%edx
 804d08f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d092:	89 10                	mov    %edx,(%eax)
 804d094:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804d09a:	8b 55 08             	mov    0x8(%ebp),%edx
 804d09d:	c1 e2 02             	shl    $0x2,%edx
 804d0a0:	01 c2                	add    %eax,%edx
 804d0a2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d0a5:	89 02                	mov    %eax,(%edx)
 804d0a7:	b8 01 00 00 00       	mov    $0x1,%eax
 804d0ac:	83 c4 30             	add    $0x30,%esp
 804d0af:	5b                   	pop    %ebx
 804d0b0:	5e                   	pop    %esi
 804d0b1:	5d                   	pop    %ebp
 804d0b2:	c3                   	ret    

0804d0b3 <malloc_bytes>:
 804d0b3:	55                   	push   %ebp
 804d0b4:	89 e5                	mov    %esp,%ebp
 804d0b6:	56                   	push   %esi
 804d0b7:	53                   	push   %ebx
 804d0b8:	83 ec 40             	sub    $0x40,%esp
 804d0bb:	e8 3d e9 ff ff       	call   804b9fd <__x86.get_pc_thunk.bx>
 804d0c0:	81 c3 40 5f 00 00    	add    $0x5f40,%ebx
 804d0c6:	83 7d 08 0f          	cmpl   $0xf,0x8(%ebp)
 804d0ca:	77 07                	ja     804d0d3 <malloc_bytes+0x20>
 804d0cc:	c7 45 08 10 00 00 00 	movl   $0x10,0x8(%ebp)
 804d0d3:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 804d0da:	8b 45 08             	mov    0x8(%ebp),%eax
 804d0dd:	48                   	dec    %eax
 804d0de:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804d0e1:	eb 03                	jmp    804d0e6 <malloc_bytes+0x33>
 804d0e3:	ff 45 f0             	incl   -0x10(%ebp)
 804d0e6:	d1 7d f4             	sarl   -0xc(%ebp)
 804d0e9:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804d0ed:	75 f4                	jne    804d0e3 <malloc_bytes+0x30>
 804d0ef:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804d0f5:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804d0f8:	c1 e2 02             	shl    $0x2,%edx
 804d0fb:	01 d0                	add    %edx,%eax
 804d0fd:	8b 00                	mov    (%eax),%eax
 804d0ff:	85 c0                	test   %eax,%eax
 804d101:	0f 85 27 02 00 00    	jne    804d32e <malloc_bytes+0x27b>
 804d107:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d10a:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804d10d:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
 804d114:	e8 d9 fb ff ff       	call   804ccf2 <malloc_pages>
 804d119:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804d11c:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
 804d120:	75 0a                	jne    804d12c <malloc_bytes+0x79>
 804d122:	b8 00 00 00 00       	mov    $0x0,%eax
 804d127:	e9 f4 01 00 00       	jmp    804d320 <malloc_bytes+0x26d>
 804d12c:	c7 45 d4 10 00 00 00 	movl   $0x10,-0x2c(%ebp)
 804d133:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804d136:	ba 00 10 00 00       	mov    $0x1000,%edx
 804d13b:	88 c1                	mov    %al,%cl
 804d13d:	d3 ea                	shr    %cl,%edx
 804d13f:	89 d0                	mov    %edx,%eax
 804d141:	83 c0 1f             	add    $0x1f,%eax
 804d144:	c1 e8 05             	shr    $0x5,%eax
 804d147:	c1 e0 02             	shl    $0x2,%eax
 804d14a:	01 45 d4             	add    %eax,-0x2c(%ebp)
 804d14d:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804d150:	ba 01 00 00 00       	mov    $0x1,%edx
 804d155:	88 c1                	mov    %al,%cl
 804d157:	d3 e2                	shl    %cl,%edx
 804d159:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804d15c:	01 c0                	add    %eax,%eax
 804d15e:	39 c2                	cmp    %eax,%edx
 804d160:	77 08                	ja     804d16a <malloc_bytes+0xb7>
 804d162:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804d165:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804d168:	eb 29                	jmp    804d193 <malloc_bytes+0xe0>
 804d16a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804d16d:	89 04 24             	mov    %eax,(%esp)
 804d170:	e8 c0 02 00 00       	call   804d435 <imalloc>
 804d175:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804d178:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
 804d17c:	75 15                	jne    804d193 <malloc_bytes+0xe0>
 804d17e:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804d181:	89 04 24             	mov    %eax,(%esp)
 804d184:	e8 cb 0b 00 00       	call   804dd54 <ifree>
 804d189:	b8 00 00 00 00       	mov    $0x0,%eax
 804d18e:	e9 8d 01 00 00       	jmp    804d320 <malloc_bytes+0x26d>
 804d193:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804d196:	ba 01 00 00 00       	mov    $0x1,%edx
 804d19b:	88 c1                	mov    %al,%cl
 804d19d:	d3 e2                	shl    %cl,%edx
 804d19f:	89 d0                	mov    %edx,%eax
 804d1a1:	0f b7 d0             	movzwl %ax,%edx
 804d1a4:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d1a7:	66 89 50 08          	mov    %dx,0x8(%eax)
 804d1ab:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804d1ae:	0f b7 d0             	movzwl %ax,%edx
 804d1b1:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d1b4:	66 89 50 0a          	mov    %dx,0xa(%eax)
 804d1b8:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804d1bb:	ba 00 10 00 00       	mov    $0x1000,%edx
 804d1c0:	88 c1                	mov    %al,%cl
 804d1c2:	d3 ea                	shr    %cl,%edx
 804d1c4:	89 d0                	mov    %edx,%eax
 804d1c6:	0f b7 d0             	movzwl %ax,%edx
 804d1c9:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d1cc:	66 89 50 0c          	mov    %dx,0xc(%eax)
 804d1d0:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d1d3:	0f b7 50 0c          	movzwl 0xc(%eax),%edx
 804d1d7:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d1da:	66 89 50 0e          	mov    %dx,0xe(%eax)
 804d1de:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d1e1:	8b 55 d8             	mov    -0x28(%ebp),%edx
 804d1e4:	89 50 04             	mov    %edx,0x4(%eax)
 804d1e7:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d1ea:	0f b7 40 0e          	movzwl 0xe(%eax),%eax
 804d1ee:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804d1f1:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
 804d1f8:	eb 19                	jmp    804d213 <malloc_bytes+0x160>
 804d1fa:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804d1fd:	c1 e8 05             	shr    $0x5,%eax
 804d200:	89 c2                	mov    %eax,%edx
 804d202:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d205:	83 c2 04             	add    $0x4,%edx
 804d208:	c7 04 90 ff ff ff ff 	movl   $0xffffffff,(%eax,%edx,4)
 804d20f:	83 45 c8 20          	addl   $0x20,-0x38(%ebp)
 804d213:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804d216:	2b 45 c8             	sub    -0x38(%ebp),%eax
 804d219:	83 f8 1f             	cmp    $0x1f,%eax
 804d21c:	77 dc                	ja     804d1fa <malloc_bytes+0x147>
 804d21e:	eb 2c                	jmp    804d24c <malloc_bytes+0x199>
 804d220:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804d223:	c1 e8 05             	shr    $0x5,%eax
 804d226:	8b 55 d0             	mov    -0x30(%ebp),%edx
 804d229:	8d 48 04             	lea    0x4(%eax),%ecx
 804d22c:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804d22f:	8b 4d c8             	mov    -0x38(%ebp),%ecx
 804d232:	83 e1 1f             	and    $0x1f,%ecx
 804d235:	be 01 00 00 00       	mov    $0x1,%esi
 804d23a:	d3 e6                	shl    %cl,%esi
 804d23c:	89 f1                	mov    %esi,%ecx
 804d23e:	09 d1                	or     %edx,%ecx
 804d240:	8b 55 d0             	mov    -0x30(%ebp),%edx
 804d243:	83 c0 04             	add    $0x4,%eax
 804d246:	89 0c 82             	mov    %ecx,(%edx,%eax,4)
 804d249:	ff 45 c8             	incl   -0x38(%ebp)
 804d24c:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804d24f:	3b 45 c8             	cmp    -0x38(%ebp),%eax
 804d252:	77 cc                	ja     804d220 <malloc_bytes+0x16d>
 804d254:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d257:	8b 40 04             	mov    0x4(%eax),%eax
 804d25a:	39 45 d0             	cmp    %eax,-0x30(%ebp)
 804d25d:	75 72                	jne    804d2d1 <malloc_bytes+0x21e>
 804d25f:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
 804d266:	eb 63                	jmp    804d2cb <malloc_bytes+0x218>
 804d268:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804d26b:	c1 e8 05             	shr    $0x5,%eax
 804d26e:	8b 55 d0             	mov    -0x30(%ebp),%edx
 804d271:	8d 48 04             	lea    0x4(%eax),%ecx
 804d274:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804d277:	8b 4d c8             	mov    -0x38(%ebp),%ecx
 804d27a:	83 e1 1f             	and    $0x1f,%ecx
 804d27d:	be 01 00 00 00       	mov    $0x1,%esi
 804d282:	d3 e6                	shl    %cl,%esi
 804d284:	89 f1                	mov    %esi,%ecx
 804d286:	f7 d1                	not    %ecx
 804d288:	21 d1                	and    %edx,%ecx
 804d28a:	8b 55 d0             	mov    -0x30(%ebp),%edx
 804d28d:	83 c0 04             	add    $0x4,%eax
 804d290:	89 0c 82             	mov    %ecx,(%edx,%eax,4)
 804d293:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d296:	0f b7 40 0c          	movzwl 0xc(%eax),%eax
 804d29a:	48                   	dec    %eax
 804d29b:	0f b7 d0             	movzwl %ax,%edx
 804d29e:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d2a1:	66 89 50 0c          	mov    %dx,0xc(%eax)
 804d2a5:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d2a8:	0f b7 40 0e          	movzwl 0xe(%eax),%eax
 804d2ac:	48                   	dec    %eax
 804d2ad:	0f b7 d0             	movzwl %ax,%edx
 804d2b0:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d2b3:	66 89 50 0e          	mov    %dx,0xe(%eax)
 804d2b7:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804d2ba:	ba 01 00 00 00       	mov    $0x1,%edx
 804d2bf:	88 c1                	mov    %al,%cl
 804d2c1:	d3 e2                	shl    %cl,%edx
 804d2c3:	89 d0                	mov    %edx,%eax
 804d2c5:	29 45 d4             	sub    %eax,-0x2c(%ebp)
 804d2c8:	ff 45 c8             	incl   -0x38(%ebp)
 804d2cb:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 804d2cf:	75 97                	jne    804d268 <malloc_bytes+0x1b5>
 804d2d1:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804d2d7:	8b 55 d8             	mov    -0x28(%ebp),%edx
 804d2da:	89 d1                	mov    %edx,%ecx
 804d2dc:	c1 e9 0c             	shr    $0xc,%ecx
 804d2df:	8b 93 b4 19 00 00    	mov    0x19b4(%ebx),%edx
 804d2e5:	29 d1                	sub    %edx,%ecx
 804d2e7:	89 ca                	mov    %ecx,%edx
 804d2e9:	c1 e2 02             	shl    $0x2,%edx
 804d2ec:	01 c2                	add    %eax,%edx
 804d2ee:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d2f1:	89 02                	mov    %eax,(%edx)
 804d2f3:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804d2f9:	8b 55 dc             	mov    -0x24(%ebp),%edx
 804d2fc:	c1 e2 02             	shl    $0x2,%edx
 804d2ff:	01 d0                	add    %edx,%eax
 804d301:	8b 10                	mov    (%eax),%edx
 804d303:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d306:	89 10                	mov    %edx,(%eax)
 804d308:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804d30e:	8b 55 dc             	mov    -0x24(%ebp),%edx
 804d311:	c1 e2 02             	shl    $0x2,%edx
 804d314:	01 c2                	add    %eax,%edx
 804d316:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804d319:	89 02                	mov    %eax,(%edx)
 804d31b:	b8 01 00 00 00       	mov    $0x1,%eax
 804d320:	85 c0                	test   %eax,%eax
 804d322:	75 0a                	jne    804d32e <malloc_bytes+0x27b>
 804d324:	b8 00 00 00 00       	mov    $0x0,%eax
 804d329:	e9 00 01 00 00       	jmp    804d42e <malloc_bytes+0x37b>
 804d32e:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804d334:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804d337:	c1 e2 02             	shl    $0x2,%edx
 804d33a:	01 d0                	add    %edx,%eax
 804d33c:	8b 00                	mov    (%eax),%eax
 804d33e:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804d341:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804d344:	83 c0 10             	add    $0x10,%eax
 804d347:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804d34a:	eb 04                	jmp    804d350 <malloc_bytes+0x29d>
 804d34c:	83 45 e4 04          	addl   $0x4,-0x1c(%ebp)
 804d350:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804d353:	8b 00                	mov    (%eax),%eax
 804d355:	85 c0                	test   %eax,%eax
 804d357:	74 f3                	je     804d34c <malloc_bytes+0x299>
 804d359:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
 804d360:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 804d367:	eb 0b                	jmp    804d374 <malloc_bytes+0x2c1>
 804d369:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804d36c:	01 c0                	add    %eax,%eax
 804d36e:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804d371:	ff 45 e8             	incl   -0x18(%ebp)
 804d374:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804d377:	8b 00                	mov    (%eax),%eax
 804d379:	23 45 ec             	and    -0x14(%ebp),%eax
 804d37c:	85 c0                	test   %eax,%eax
 804d37e:	74 e9                	je     804d369 <malloc_bytes+0x2b6>
 804d380:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804d383:	8b 00                	mov    (%eax),%eax
 804d385:	33 45 ec             	xor    -0x14(%ebp),%eax
 804d388:	89 c2                	mov    %eax,%edx
 804d38a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804d38d:	89 10                	mov    %edx,(%eax)
 804d38f:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804d392:	0f b7 40 0c          	movzwl 0xc(%eax),%eax
 804d396:	48                   	dec    %eax
 804d397:	0f b7 d0             	movzwl %ax,%edx
 804d39a:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804d39d:	66 89 50 0c          	mov    %dx,0xc(%eax)
 804d3a1:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804d3a4:	0f b7 40 0c          	movzwl 0xc(%eax),%eax
 804d3a8:	85 c0                	test   %eax,%eax
 804d3aa:	75 1e                	jne    804d3ca <malloc_bytes+0x317>
 804d3ac:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804d3b2:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804d3b5:	c1 e2 02             	shl    $0x2,%edx
 804d3b8:	01 c2                	add    %eax,%edx
 804d3ba:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804d3bd:	8b 00                	mov    (%eax),%eax
 804d3bf:	89 02                	mov    %eax,(%edx)
 804d3c1:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804d3c4:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804d3ca:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804d3cd:	8b 55 e0             	mov    -0x20(%ebp),%edx
 804d3d0:	83 c2 10             	add    $0x10,%edx
 804d3d3:	29 d0                	sub    %edx,%eax
 804d3d5:	c1 f8 02             	sar    $0x2,%eax
 804d3d8:	c1 e0 05             	shl    $0x5,%eax
 804d3db:	89 c2                	mov    %eax,%edx
 804d3dd:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804d3e0:	01 d0                	add    %edx,%eax
 804d3e2:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804d3e5:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804d3e8:	0f b7 40 0a          	movzwl 0xa(%eax),%eax
 804d3ec:	88 c1                	mov    %al,%cl
 804d3ee:	d3 65 e8             	shll   %cl,-0x18(%ebp)
 804d3f1:	8b 83 f4 19 00 00    	mov    0x19f4(%ebx),%eax
 804d3f7:	85 c0                	test   %eax,%eax
 804d3f9:	74 28                	je     804d423 <malloc_bytes+0x370>
 804d3fb:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804d3fe:	0f b7 40 08          	movzwl 0x8(%eax),%eax
 804d402:	89 c2                	mov    %eax,%edx
 804d404:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804d407:	8b 48 04             	mov    0x4(%eax),%ecx
 804d40a:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804d40d:	01 c8                	add    %ecx,%eax
 804d40f:	89 54 24 08          	mov    %edx,0x8(%esp)
 804d413:	c7 44 24 04 d0 00 00 	movl   $0xd0,0x4(%esp)
 804d41a:	00 
 804d41b:	89 04 24             	mov    %eax,(%esp)
 804d41e:	e8 75 ea ff ff       	call   804be98 <memset>
 804d423:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804d426:	8b 50 04             	mov    0x4(%eax),%edx
 804d429:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804d42c:	01 d0                	add    %edx,%eax
 804d42e:	83 c4 40             	add    $0x40,%esp
 804d431:	5b                   	pop    %ebx
 804d432:	5e                   	pop    %esi
 804d433:	5d                   	pop    %ebp
 804d434:	c3                   	ret    

0804d435 <imalloc>:
 804d435:	55                   	push   %ebp
 804d436:	89 e5                	mov    %esp,%ebp
 804d438:	53                   	push   %ebx
 804d439:	83 ec 24             	sub    $0x24,%esp
 804d43c:	e8 bc e5 ff ff       	call   804b9fd <__x86.get_pc_thunk.bx>
 804d441:	81 c3 bf 5b 00 00    	add    $0x5bbf,%ebx
 804d447:	8b 83 dc 19 00 00    	mov    0x19dc(%ebx),%eax
 804d44d:	85 c0                	test   %eax,%eax
 804d44f:	74 0c                	je     804d45d <imalloc+0x28>
 804d451:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804d458:	e8 35 da ff ff       	call   804ae92 <exit>
 804d45d:	8b 45 08             	mov    0x8(%ebp),%eax
 804d460:	05 00 10 00 00       	add    $0x1000,%eax
 804d465:	3b 45 08             	cmp    0x8(%ebp),%eax
 804d468:	73 09                	jae    804d473 <imalloc+0x3e>
 804d46a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804d471:	eb 27                	jmp    804d49a <imalloc+0x65>
 804d473:	81 7d 08 00 08 00 00 	cmpl   $0x800,0x8(%ebp)
 804d47a:	77 10                	ja     804d48c <imalloc+0x57>
 804d47c:	8b 45 08             	mov    0x8(%ebp),%eax
 804d47f:	89 04 24             	mov    %eax,(%esp)
 804d482:	e8 2c fc ff ff       	call   804d0b3 <malloc_bytes>
 804d487:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804d48a:	eb 0e                	jmp    804d49a <imalloc+0x65>
 804d48c:	8b 45 08             	mov    0x8(%ebp),%eax
 804d48f:	89 04 24             	mov    %eax,(%esp)
 804d492:	e8 5b f8 ff ff       	call   804ccf2 <malloc_pages>
 804d497:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804d49a:	8b 83 d8 19 00 00    	mov    0x19d8(%ebx),%eax
 804d4a0:	85 c0                	test   %eax,%eax
 804d4a2:	74 14                	je     804d4b8 <imalloc+0x83>
 804d4a4:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804d4a8:	75 0e                	jne    804d4b8 <imalloc+0x83>
 804d4aa:	8d 83 20 e4 ff ff    	lea    -0x1be0(%ebx),%eax
 804d4b0:	89 04 24             	mov    %eax,(%esp)
 804d4b3:	e8 36 f2 ff ff       	call   804c6ee <wrterror>
 804d4b8:	8b 83 f0 19 00 00    	mov    0x19f0(%ebx),%eax
 804d4be:	85 c0                	test   %eax,%eax
 804d4c0:	74 20                	je     804d4e2 <imalloc+0xad>
 804d4c2:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804d4c6:	74 1a                	je     804d4e2 <imalloc+0xad>
 804d4c8:	8b 45 08             	mov    0x8(%ebp),%eax
 804d4cb:	89 44 24 08          	mov    %eax,0x8(%esp)
 804d4cf:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804d4d6:	00 
 804d4d7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d4da:	89 04 24             	mov    %eax,(%esp)
 804d4dd:	e8 b6 e9 ff ff       	call   804be98 <memset>
 804d4e2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d4e5:	83 c4 24             	add    $0x24,%esp
 804d4e8:	5b                   	pop    %ebx
 804d4e9:	5d                   	pop    %ebp
 804d4ea:	c3                   	ret    

0804d4eb <irealloc>:
 804d4eb:	55                   	push   %ebp
 804d4ec:	89 e5                	mov    %esp,%ebp
 804d4ee:	56                   	push   %esi
 804d4ef:	53                   	push   %ebx
 804d4f0:	83 ec 30             	sub    $0x30,%esp
 804d4f3:	e8 05 e5 ff ff       	call   804b9fd <__x86.get_pc_thunk.bx>
 804d4f8:	81 c3 08 5b 00 00    	add    $0x5b08,%ebx
 804d4fe:	8b 83 dc 19 00 00    	mov    0x19dc(%ebx),%eax
 804d504:	85 c0                	test   %eax,%eax
 804d506:	74 0c                	je     804d514 <irealloc+0x29>
 804d508:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804d50f:	e8 7e d9 ff ff       	call   804ae92 <exit>
 804d514:	8b 45 08             	mov    0x8(%ebp),%eax
 804d517:	c1 e8 0c             	shr    $0xc,%eax
 804d51a:	89 c2                	mov    %eax,%edx
 804d51c:	8b 83 b4 19 00 00    	mov    0x19b4(%ebx),%eax
 804d522:	29 c2                	sub    %eax,%edx
 804d524:	89 d0                	mov    %edx,%eax
 804d526:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804d529:	83 7d ec 0b          	cmpl   $0xb,-0x14(%ebp)
 804d52d:	77 18                	ja     804d547 <irealloc+0x5c>
 804d52f:	8d 83 34 e4 ff ff    	lea    -0x1bcc(%ebx),%eax
 804d535:	89 04 24             	mov    %eax,(%esp)
 804d538:	e8 81 f2 ff ff       	call   804c7be <wrtwarning>
 804d53d:	b8 00 00 00 00       	mov    $0x0,%eax
 804d542:	e9 fc 01 00 00       	jmp    804d743 <irealloc+0x258>
 804d547:	8b 83 b8 19 00 00    	mov    0x19b8(%ebx),%eax
 804d54d:	39 45 ec             	cmp    %eax,-0x14(%ebp)
 804d550:	76 18                	jbe    804d56a <irealloc+0x7f>
 804d552:	8d 83 5c e4 ff ff    	lea    -0x1ba4(%ebx),%eax
 804d558:	89 04 24             	mov    %eax,(%esp)
 804d55b:	e8 5e f2 ff ff       	call   804c7be <wrtwarning>
 804d560:	b8 00 00 00 00       	mov    $0x0,%eax
 804d565:	e9 d9 01 00 00       	jmp    804d743 <irealloc+0x258>
 804d56a:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804d570:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804d573:	c1 e2 02             	shl    $0x2,%edx
 804d576:	01 d0                	add    %edx,%eax
 804d578:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804d57b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d57e:	8b 00                	mov    (%eax),%eax
 804d580:	83 f8 02             	cmp    $0x2,%eax
 804d583:	75 75                	jne    804d5fa <irealloc+0x10f>
 804d585:	8b 45 08             	mov    0x8(%ebp),%eax
 804d588:	25 ff 0f 00 00       	and    $0xfff,%eax
 804d58d:	85 c0                	test   %eax,%eax
 804d58f:	74 18                	je     804d5a9 <irealloc+0xbe>
 804d591:	8d 83 83 e4 ff ff    	lea    -0x1b7d(%ebx),%eax
 804d597:	89 04 24             	mov    %eax,(%esp)
 804d59a:	e8 1f f2 ff ff       	call   804c7be <wrtwarning>
 804d59f:	b8 00 00 00 00       	mov    $0x0,%eax
 804d5a4:	e9 9a 01 00 00       	jmp    804d743 <irealloc+0x258>
 804d5a9:	c7 45 f4 00 10 00 00 	movl   $0x1000,-0xc(%ebp)
 804d5b0:	eb 07                	jmp    804d5b9 <irealloc+0xce>
 804d5b2:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
 804d5b9:	83 45 f0 04          	addl   $0x4,-0x10(%ebp)
 804d5bd:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d5c0:	8b 00                	mov    (%eax),%eax
 804d5c2:	83 f8 03             	cmp    $0x3,%eax
 804d5c5:	74 eb                	je     804d5b2 <irealloc+0xc7>
 804d5c7:	8b 83 e0 19 00 00    	mov    0x19e0(%ebx),%eax
 804d5cd:	85 c0                	test   %eax,%eax
 804d5cf:	0f 85 04 01 00 00    	jne    804d6d9 <irealloc+0x1ee>
 804d5d5:	8b 45 0c             	mov    0xc(%ebp),%eax
 804d5d8:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 804d5db:	0f 87 f8 00 00 00    	ja     804d6d9 <irealloc+0x1ee>
 804d5e1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d5e4:	2d 00 10 00 00       	sub    $0x1000,%eax
 804d5e9:	3b 45 0c             	cmp    0xc(%ebp),%eax
 804d5ec:	0f 83 e7 00 00 00    	jae    804d6d9 <irealloc+0x1ee>
 804d5f2:	8b 45 08             	mov    0x8(%ebp),%eax
 804d5f5:	e9 49 01 00 00       	jmp    804d743 <irealloc+0x258>
 804d5fa:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d5fd:	8b 00                	mov    (%eax),%eax
 804d5ff:	83 f8 03             	cmp    $0x3,%eax
 804d602:	0f 86 bc 00 00 00    	jbe    804d6c4 <irealloc+0x1d9>
 804d608:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d60b:	8b 00                	mov    (%eax),%eax
 804d60d:	0f b7 40 08          	movzwl 0x8(%eax),%eax
 804d611:	48                   	dec    %eax
 804d612:	89 c2                	mov    %eax,%edx
 804d614:	8b 45 08             	mov    0x8(%ebp),%eax
 804d617:	21 d0                	and    %edx,%eax
 804d619:	85 c0                	test   %eax,%eax
 804d61b:	74 18                	je     804d635 <irealloc+0x14a>
 804d61d:	8d 83 9e e4 ff ff    	lea    -0x1b62(%ebx),%eax
 804d623:	89 04 24             	mov    %eax,(%esp)
 804d626:	e8 93 f1 ff ff       	call   804c7be <wrtwarning>
 804d62b:	b8 00 00 00 00       	mov    $0x0,%eax
 804d630:	e9 0e 01 00 00       	jmp    804d743 <irealloc+0x258>
 804d635:	8b 45 08             	mov    0x8(%ebp),%eax
 804d638:	25 ff 0f 00 00       	and    $0xfff,%eax
 804d63d:	89 c2                	mov    %eax,%edx
 804d63f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d642:	8b 00                	mov    (%eax),%eax
 804d644:	0f b7 40 0a          	movzwl 0xa(%eax),%eax
 804d648:	88 c1                	mov    %al,%cl
 804d64a:	d3 ea                	shr    %cl,%edx
 804d64c:	89 d0                	mov    %edx,%eax
 804d64e:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804d651:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d654:	8b 00                	mov    (%eax),%eax
 804d656:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804d659:	c1 ea 05             	shr    $0x5,%edx
 804d65c:	83 c2 04             	add    $0x4,%edx
 804d65f:	8b 04 90             	mov    (%eax,%edx,4),%eax
 804d662:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804d665:	83 e2 1f             	and    $0x1f,%edx
 804d668:	be 01 00 00 00       	mov    $0x1,%esi
 804d66d:	88 d1                	mov    %dl,%cl
 804d66f:	d3 e6                	shl    %cl,%esi
 804d671:	89 f2                	mov    %esi,%edx
 804d673:	21 d0                	and    %edx,%eax
 804d675:	85 c0                	test   %eax,%eax
 804d677:	74 18                	je     804d691 <irealloc+0x1a6>
 804d679:	8d 83 ba e4 ff ff    	lea    -0x1b46(%ebx),%eax
 804d67f:	89 04 24             	mov    %eax,(%esp)
 804d682:	e8 37 f1 ff ff       	call   804c7be <wrtwarning>
 804d687:	b8 00 00 00 00       	mov    $0x0,%eax
 804d68c:	e9 b2 00 00 00       	jmp    804d743 <irealloc+0x258>
 804d691:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d694:	8b 00                	mov    (%eax),%eax
 804d696:	0f b7 40 08          	movzwl 0x8(%eax),%eax
 804d69a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804d69d:	8b 83 e0 19 00 00    	mov    0x19e0(%ebx),%eax
 804d6a3:	85 c0                	test   %eax,%eax
 804d6a5:	75 32                	jne    804d6d9 <irealloc+0x1ee>
 804d6a7:	8b 45 0c             	mov    0xc(%ebp),%eax
 804d6aa:	3b 45 f4             	cmp    -0xc(%ebp),%eax
 804d6ad:	73 2a                	jae    804d6d9 <irealloc+0x1ee>
 804d6af:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d6b2:	d1 e8                	shr    %eax
 804d6b4:	3b 45 0c             	cmp    0xc(%ebp),%eax
 804d6b7:	72 06                	jb     804d6bf <irealloc+0x1d4>
 804d6b9:	83 7d f4 10          	cmpl   $0x10,-0xc(%ebp)
 804d6bd:	75 1a                	jne    804d6d9 <irealloc+0x1ee>
 804d6bf:	8b 45 08             	mov    0x8(%ebp),%eax
 804d6c2:	eb 7f                	jmp    804d743 <irealloc+0x258>
 804d6c4:	8d 83 d2 e4 ff ff    	lea    -0x1b2e(%ebx),%eax
 804d6ca:	89 04 24             	mov    %eax,(%esp)
 804d6cd:	e8 ec f0 ff ff       	call   804c7be <wrtwarning>
 804d6d2:	b8 00 00 00 00       	mov    $0x0,%eax
 804d6d7:	eb 6a                	jmp    804d743 <irealloc+0x258>
 804d6d9:	8b 45 0c             	mov    0xc(%ebp),%eax
 804d6dc:	89 04 24             	mov    %eax,(%esp)
 804d6df:	e8 51 fd ff ff       	call   804d435 <imalloc>
 804d6e4:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804d6e7:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 804d6eb:	74 53                	je     804d740 <irealloc+0x255>
 804d6ed:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 804d6f1:	74 42                	je     804d735 <irealloc+0x24a>
 804d6f3:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804d6f7:	74 3c                	je     804d735 <irealloc+0x24a>
 804d6f9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d6fc:	3b 45 0c             	cmp    0xc(%ebp),%eax
 804d6ff:	73 1b                	jae    804d71c <irealloc+0x231>
 804d701:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d704:	89 44 24 08          	mov    %eax,0x8(%esp)
 804d708:	8b 45 08             	mov    0x8(%ebp),%eax
 804d70b:	89 44 24 04          	mov    %eax,0x4(%esp)
 804d70f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804d712:	89 04 24             	mov    %eax,(%esp)
 804d715:	e8 23 e6 ff ff       	call   804bd3d <memcpy>
 804d71a:	eb 19                	jmp    804d735 <irealloc+0x24a>
 804d71c:	8b 45 0c             	mov    0xc(%ebp),%eax
 804d71f:	89 44 24 08          	mov    %eax,0x8(%esp)
 804d723:	8b 45 08             	mov    0x8(%ebp),%eax
 804d726:	89 44 24 04          	mov    %eax,0x4(%esp)
 804d72a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804d72d:	89 04 24             	mov    %eax,(%esp)
 804d730:	e8 08 e6 ff ff       	call   804bd3d <memcpy>
 804d735:	8b 45 08             	mov    0x8(%ebp),%eax
 804d738:	89 04 24             	mov    %eax,(%esp)
 804d73b:	e8 14 06 00 00       	call   804dd54 <ifree>
 804d740:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804d743:	83 c4 30             	add    $0x30,%esp
 804d746:	5b                   	pop    %ebx
 804d747:	5e                   	pop    %esi
 804d748:	5d                   	pop    %ebp
 804d749:	c3                   	ret    

0804d74a <free_pages>:
 804d74a:	55                   	push   %ebp
 804d74b:	89 e5                	mov    %esp,%ebp
 804d74d:	53                   	push   %ebx
 804d74e:	83 ec 34             	sub    $0x34,%esp
 804d751:	e8 a7 e2 ff ff       	call   804b9fd <__x86.get_pc_thunk.bx>
 804d756:	81 c3 aa 58 00 00    	add    $0x58aa,%ebx
 804d75c:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 804d763:	83 7d 10 01          	cmpl   $0x1,0x10(%ebp)
 804d767:	75 13                	jne    804d77c <free_pages+0x32>
 804d769:	8d 83 ea e4 ff ff    	lea    -0x1b16(%ebx),%eax
 804d76f:	89 04 24             	mov    %eax,(%esp)
 804d772:	e8 47 f0 ff ff       	call   804c7be <wrtwarning>
 804d777:	e9 db 03 00 00       	jmp    804db57 <free_pages+0x40d>
 804d77c:	83 7d 10 02          	cmpl   $0x2,0x10(%ebp)
 804d780:	74 13                	je     804d795 <free_pages+0x4b>
 804d782:	8d 83 d2 e4 ff ff    	lea    -0x1b2e(%ebx),%eax
 804d788:	89 04 24             	mov    %eax,(%esp)
 804d78b:	e8 2e f0 ff ff       	call   804c7be <wrtwarning>
 804d790:	e9 c2 03 00 00       	jmp    804db57 <free_pages+0x40d>
 804d795:	8b 45 08             	mov    0x8(%ebp),%eax
 804d798:	25 ff 0f 00 00       	and    $0xfff,%eax
 804d79d:	85 c0                	test   %eax,%eax
 804d79f:	74 13                	je     804d7b4 <free_pages+0x6a>
 804d7a1:	8d 83 83 e4 ff ff    	lea    -0x1b7d(%ebx),%eax
 804d7a7:	89 04 24             	mov    %eax,(%esp)
 804d7aa:	e8 0f f0 ff ff       	call   804c7be <wrtwarning>
 804d7af:	e9 a3 03 00 00       	jmp    804db57 <free_pages+0x40d>
 804d7b4:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804d7ba:	8b 55 0c             	mov    0xc(%ebp),%edx
 804d7bd:	c1 e2 02             	shl    $0x2,%edx
 804d7c0:	01 d0                	add    %edx,%eax
 804d7c2:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804d7c8:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 804d7cf:	eb 1c                	jmp    804d7ed <free_pages+0xa3>
 804d7d1:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804d7d7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 804d7da:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804d7dd:	01 ca                	add    %ecx,%edx
 804d7df:	c1 e2 02             	shl    $0x2,%edx
 804d7e2:	01 d0                	add    %edx,%eax
 804d7e4:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804d7ea:	ff 45 f4             	incl   -0xc(%ebp)
 804d7ed:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804d7f3:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 804d7f6:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804d7f9:	01 ca                	add    %ecx,%edx
 804d7fb:	c1 e2 02             	shl    $0x2,%edx
 804d7fe:	01 d0                	add    %edx,%eax
 804d800:	8b 00                	mov    (%eax),%eax
 804d802:	83 f8 03             	cmp    $0x3,%eax
 804d805:	74 ca                	je     804d7d1 <free_pages+0x87>
 804d807:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804d80a:	c1 e0 0c             	shl    $0xc,%eax
 804d80d:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804d810:	8b 83 f4 19 00 00    	mov    0x19f4(%ebx),%eax
 804d816:	85 c0                	test   %eax,%eax
 804d818:	74 1a                	je     804d834 <free_pages+0xea>
 804d81a:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804d81d:	89 44 24 08          	mov    %eax,0x8(%esp)
 804d821:	c7 44 24 04 d0 00 00 	movl   $0xd0,0x4(%esp)
 804d828:	00 
 804d829:	8b 45 08             	mov    0x8(%ebp),%eax
 804d82c:	89 04 24             	mov    %eax,(%esp)
 804d82f:	e8 64 e6 ff ff       	call   804be98 <memset>
 804d834:	8b 55 08             	mov    0x8(%ebp),%edx
 804d837:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804d83a:	01 d0                	add    %edx,%eax
 804d83c:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804d83f:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804d845:	85 c0                	test   %eax,%eax
 804d847:	75 12                	jne    804d85b <free_pages+0x111>
 804d849:	c7 04 24 14 00 00 00 	movl   $0x14,(%esp)
 804d850:	e8 e0 fb ff ff       	call   804d435 <imalloc>
 804d855:	89 83 fc 19 00 00    	mov    %eax,0x19fc(%ebx)
 804d85b:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804d861:	8b 55 08             	mov    0x8(%ebp),%edx
 804d864:	89 50 08             	mov    %edx,0x8(%eax)
 804d867:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804d86d:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 804d870:	89 50 0c             	mov    %edx,0xc(%eax)
 804d873:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804d879:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804d87c:	89 50 10             	mov    %edx,0x10(%eax)
 804d87f:	8b 83 c4 19 00 00    	mov    0x19c4(%ebx),%eax
 804d885:	85 c0                	test   %eax,%eax
 804d887:	75 41                	jne    804d8ca <free_pages+0x180>
 804d889:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804d88f:	8b 93 c4 19 00 00    	mov    0x19c4(%ebx),%edx
 804d895:	89 10                	mov    %edx,(%eax)
 804d897:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804d89d:	8d 93 c4 19 00 00    	lea    0x19c4(%ebx),%edx
 804d8a3:	89 50 04             	mov    %edx,0x4(%eax)
 804d8a6:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804d8ac:	89 83 c4 19 00 00    	mov    %eax,0x19c4(%ebx)
 804d8b2:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804d8b8:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804d8bb:	c7 83 fc 19 00 00 00 	movl   $0x0,0x19fc(%ebx)
 804d8c2:	00 00 00 
 804d8c5:	e9 a2 01 00 00       	jmp    804da6c <free_pages+0x322>
 804d8ca:	8b 55 08             	mov    0x8(%ebp),%edx
 804d8cd:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804d8d0:	01 d0                	add    %edx,%eax
 804d8d2:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804d8d5:	8b 83 c4 19 00 00    	mov    0x19c4(%ebx),%eax
 804d8db:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804d8de:	eb 08                	jmp    804d8e8 <free_pages+0x19e>
 804d8e0:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d8e3:	8b 00                	mov    (%eax),%eax
 804d8e5:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804d8e8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d8eb:	8b 40 0c             	mov    0xc(%eax),%eax
 804d8ee:	3b 45 08             	cmp    0x8(%ebp),%eax
 804d8f1:	73 09                	jae    804d8fc <free_pages+0x1b2>
 804d8f3:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d8f6:	8b 00                	mov    (%eax),%eax
 804d8f8:	85 c0                	test   %eax,%eax
 804d8fa:	75 e4                	jne    804d8e0 <free_pages+0x196>
 804d8fc:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d8ff:	8b 40 08             	mov    0x8(%eax),%eax
 804d902:	3b 45 e4             	cmp    -0x1c(%ebp),%eax
 804d905:	76 4f                	jbe    804d956 <free_pages+0x20c>
 804d907:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804d90d:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804d910:	89 10                	mov    %edx,(%eax)
 804d912:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804d918:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804d91b:	8b 52 04             	mov    0x4(%edx),%edx
 804d91e:	89 50 04             	mov    %edx,0x4(%eax)
 804d921:	8b 93 fc 19 00 00    	mov    0x19fc(%ebx),%edx
 804d927:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d92a:	89 50 04             	mov    %edx,0x4(%eax)
 804d92d:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804d933:	8b 40 04             	mov    0x4(%eax),%eax
 804d936:	8b 93 fc 19 00 00    	mov    0x19fc(%ebx),%edx
 804d93c:	89 10                	mov    %edx,(%eax)
 804d93e:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804d944:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804d947:	c7 83 fc 19 00 00 00 	movl   $0x0,0x19fc(%ebx)
 804d94e:	00 00 00 
 804d951:	e9 16 01 00 00       	jmp    804da6c <free_pages+0x322>
 804d956:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d959:	8b 40 0c             	mov    0xc(%eax),%eax
 804d95c:	3b 45 08             	cmp    0x8(%ebp),%eax
 804d95f:	0f 85 91 00 00 00    	jne    804d9f6 <free_pages+0x2ac>
 804d965:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d968:	8b 50 0c             	mov    0xc(%eax),%edx
 804d96b:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804d96e:	01 c2                	add    %eax,%edx
 804d970:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d973:	89 50 0c             	mov    %edx,0xc(%eax)
 804d976:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d979:	8b 50 10             	mov    0x10(%eax),%edx
 804d97c:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804d97f:	01 c2                	add    %eax,%edx
 804d981:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d984:	89 50 10             	mov    %edx,0x10(%eax)
 804d987:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d98a:	8b 00                	mov    (%eax),%eax
 804d98c:	85 c0                	test   %eax,%eax
 804d98e:	0f 84 d8 00 00 00    	je     804da6c <free_pages+0x322>
 804d994:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d997:	8b 50 0c             	mov    0xc(%eax),%edx
 804d99a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d99d:	8b 00                	mov    (%eax),%eax
 804d99f:	8b 40 08             	mov    0x8(%eax),%eax
 804d9a2:	39 c2                	cmp    %eax,%edx
 804d9a4:	0f 85 c2 00 00 00    	jne    804da6c <free_pages+0x322>
 804d9aa:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d9ad:	8b 00                	mov    (%eax),%eax
 804d9af:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804d9b2:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804d9b5:	8b 50 0c             	mov    0xc(%eax),%edx
 804d9b8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d9bb:	89 50 0c             	mov    %edx,0xc(%eax)
 804d9be:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d9c1:	8b 50 10             	mov    0x10(%eax),%edx
 804d9c4:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804d9c7:	8b 40 10             	mov    0x10(%eax),%eax
 804d9ca:	01 c2                	add    %eax,%edx
 804d9cc:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d9cf:	89 50 10             	mov    %edx,0x10(%eax)
 804d9d2:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804d9d5:	8b 10                	mov    (%eax),%edx
 804d9d7:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d9da:	89 10                	mov    %edx,(%eax)
 804d9dc:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d9df:	8b 00                	mov    (%eax),%eax
 804d9e1:	85 c0                	test   %eax,%eax
 804d9e3:	0f 84 83 00 00 00    	je     804da6c <free_pages+0x322>
 804d9e9:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d9ec:	8b 00                	mov    (%eax),%eax
 804d9ee:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804d9f1:	89 50 04             	mov    %edx,0x4(%eax)
 804d9f4:	eb 76                	jmp    804da6c <free_pages+0x322>
 804d9f6:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804d9f9:	8b 40 08             	mov    0x8(%eax),%eax
 804d9fc:	3b 45 e4             	cmp    -0x1c(%ebp),%eax
 804d9ff:	75 1c                	jne    804da1d <free_pages+0x2d3>
 804da01:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804da04:	8b 50 10             	mov    0x10(%eax),%edx
 804da07:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804da0a:	01 c2                	add    %eax,%edx
 804da0c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804da0f:	89 50 10             	mov    %edx,0x10(%eax)
 804da12:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804da15:	8b 55 08             	mov    0x8(%ebp),%edx
 804da18:	89 50 08             	mov    %edx,0x8(%eax)
 804da1b:	eb 4f                	jmp    804da6c <free_pages+0x322>
 804da1d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804da20:	8b 00                	mov    (%eax),%eax
 804da22:	85 c0                	test   %eax,%eax
 804da24:	75 38                	jne    804da5e <free_pages+0x314>
 804da26:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804da2c:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804da32:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804da38:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804da3b:	89 50 04             	mov    %edx,0x4(%eax)
 804da3e:	8b 93 fc 19 00 00    	mov    0x19fc(%ebx),%edx
 804da44:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804da47:	89 10                	mov    %edx,(%eax)
 804da49:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804da4f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804da52:	c7 83 fc 19 00 00 00 	movl   $0x0,0x19fc(%ebx)
 804da59:	00 00 00 
 804da5c:	eb 0e                	jmp    804da6c <free_pages+0x322>
 804da5e:	8d 83 01 e5 ff ff    	lea    -0x1aff(%ebx),%eax
 804da64:	89 04 24             	mov    %eax,(%esp)
 804da67:	e8 82 ec ff ff       	call   804c6ee <wrterror>
 804da6c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804da6f:	8b 00                	mov    (%eax),%eax
 804da71:	85 c0                	test   %eax,%eax
 804da73:	0f 85 cd 00 00 00    	jne    804db46 <free_pages+0x3fc>
 804da79:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804da7c:	8b 50 10             	mov    0x10(%eax),%edx
 804da7f:	8b 83 a0 03 00 00    	mov    0x3a0(%ebx),%eax
 804da85:	39 c2                	cmp    %eax,%edx
 804da87:	0f 86 b9 00 00 00    	jbe    804db46 <free_pages+0x3fc>
 804da8d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804da90:	8b 50 0c             	mov    0xc(%eax),%edx
 804da93:	8b 83 f8 19 00 00    	mov    0x19f8(%ebx),%eax
 804da99:	39 c2                	cmp    %eax,%edx
 804da9b:	0f 85 a5 00 00 00    	jne    804db46 <free_pages+0x3fc>
 804daa1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804daa8:	e8 f6 d1 ff ff       	call   804aca3 <sbrk>
 804daad:	89 c2                	mov    %eax,%edx
 804daaf:	8b 83 f8 19 00 00    	mov    0x19f8(%ebx),%eax
 804dab5:	39 c2                	cmp    %eax,%edx
 804dab7:	0f 85 89 00 00 00    	jne    804db46 <free_pages+0x3fc>
 804dabd:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804dac0:	8b 50 08             	mov    0x8(%eax),%edx
 804dac3:	8b 83 a0 03 00 00    	mov    0x3a0(%ebx),%eax
 804dac9:	01 c2                	add    %eax,%edx
 804dacb:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804dace:	89 50 0c             	mov    %edx,0xc(%eax)
 804dad1:	8b 93 a0 03 00 00    	mov    0x3a0(%ebx),%edx
 804dad7:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804dada:	89 50 10             	mov    %edx,0x10(%eax)
 804dadd:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804dae0:	8b 40 0c             	mov    0xc(%eax),%eax
 804dae3:	89 04 24             	mov    %eax,(%esp)
 804dae6:	e8 81 d2 ff ff       	call   804ad6c <brk>
 804daeb:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804daee:	8b 40 0c             	mov    0xc(%eax),%eax
 804daf1:	89 83 f8 19 00 00    	mov    %eax,0x19f8(%ebx)
 804daf7:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804dafa:	8b 40 0c             	mov    0xc(%eax),%eax
 804dafd:	c1 e8 0c             	shr    $0xc,%eax
 804db00:	89 c2                	mov    %eax,%edx
 804db02:	8b 83 b4 19 00 00    	mov    0x19b4(%ebx),%eax
 804db08:	29 c2                	sub    %eax,%edx
 804db0a:	89 d0                	mov    %edx,%eax
 804db0c:	89 45 0c             	mov    %eax,0xc(%ebp)
 804db0f:	8b 45 0c             	mov    0xc(%ebp),%eax
 804db12:	48                   	dec    %eax
 804db13:	89 83 b8 19 00 00    	mov    %eax,0x19b8(%ebx)
 804db19:	8b 45 0c             	mov    0xc(%ebp),%eax
 804db1c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804db1f:	eb 1a                	jmp    804db3b <free_pages+0x3f1>
 804db21:	8b 8b bc 19 00 00    	mov    0x19bc(%ebx),%ecx
 804db27:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804db2a:	8d 50 01             	lea    0x1(%eax),%edx
 804db2d:	89 55 f4             	mov    %edx,-0xc(%ebp)
 804db30:	c1 e0 02             	shl    $0x2,%eax
 804db33:	01 c8                	add    %ecx,%eax
 804db35:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804db3b:	8b 83 b8 19 00 00    	mov    0x19b8(%ebx),%eax
 804db41:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 804db44:	76 db                	jbe    804db21 <free_pages+0x3d7>
 804db46:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 804db4a:	74 0b                	je     804db57 <free_pages+0x40d>
 804db4c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804db4f:	89 04 24             	mov    %eax,(%esp)
 804db52:	e8 fd 01 00 00       	call   804dd54 <ifree>
 804db57:	83 c4 34             	add    $0x34,%esp
 804db5a:	5b                   	pop    %ebx
 804db5b:	5d                   	pop    %ebp
 804db5c:	c3                   	ret    

0804db5d <free_bytes>:
 804db5d:	55                   	push   %ebp
 804db5e:	89 e5                	mov    %esp,%ebp
 804db60:	56                   	push   %esi
 804db61:	53                   	push   %ebx
 804db62:	83 ec 20             	sub    $0x20,%esp
 804db65:	e8 93 de ff ff       	call   804b9fd <__x86.get_pc_thunk.bx>
 804db6a:	81 c3 96 54 00 00    	add    $0x5496,%ebx
 804db70:	8b 45 08             	mov    0x8(%ebp),%eax
 804db73:	25 ff 0f 00 00       	and    $0xfff,%eax
 804db78:	89 c2                	mov    %eax,%edx
 804db7a:	8b 45 10             	mov    0x10(%ebp),%eax
 804db7d:	0f b7 40 0a          	movzwl 0xa(%eax),%eax
 804db81:	88 c1                	mov    %al,%cl
 804db83:	d3 ea                	shr    %cl,%edx
 804db85:	89 d0                	mov    %edx,%eax
 804db87:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804db8a:	8b 45 10             	mov    0x10(%ebp),%eax
 804db8d:	0f b7 40 08          	movzwl 0x8(%eax),%eax
 804db91:	48                   	dec    %eax
 804db92:	89 c2                	mov    %eax,%edx
 804db94:	8b 45 08             	mov    0x8(%ebp),%eax
 804db97:	21 d0                	and    %edx,%eax
 804db99:	85 c0                	test   %eax,%eax
 804db9b:	74 13                	je     804dbb0 <free_bytes+0x53>
 804db9d:	8d 83 9e e4 ff ff    	lea    -0x1b62(%ebx),%eax
 804dba3:	89 04 24             	mov    %eax,(%esp)
 804dba6:	e8 13 ec ff ff       	call   804c7be <wrtwarning>
 804dbab:	e9 9d 01 00 00       	jmp    804dd4d <free_bytes+0x1f0>
 804dbb0:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804dbb3:	c1 e8 05             	shr    $0x5,%eax
 804dbb6:	89 c2                	mov    %eax,%edx
 804dbb8:	8b 45 10             	mov    0x10(%ebp),%eax
 804dbbb:	83 c2 04             	add    $0x4,%edx
 804dbbe:	8b 04 90             	mov    (%eax,%edx,4),%eax
 804dbc1:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804dbc4:	83 e2 1f             	and    $0x1f,%edx
 804dbc7:	be 01 00 00 00       	mov    $0x1,%esi
 804dbcc:	88 d1                	mov    %dl,%cl
 804dbce:	d3 e6                	shl    %cl,%esi
 804dbd0:	89 f2                	mov    %esi,%edx
 804dbd2:	21 d0                	and    %edx,%eax
 804dbd4:	85 c0                	test   %eax,%eax
 804dbd6:	74 13                	je     804dbeb <free_bytes+0x8e>
 804dbd8:	8d 83 ba e4 ff ff    	lea    -0x1b46(%ebx),%eax
 804dbde:	89 04 24             	mov    %eax,(%esp)
 804dbe1:	e8 d8 eb ff ff       	call   804c7be <wrtwarning>
 804dbe6:	e9 62 01 00 00       	jmp    804dd4d <free_bytes+0x1f0>
 804dbeb:	8b 83 f4 19 00 00    	mov    0x19f4(%ebx),%eax
 804dbf1:	85 c0                	test   %eax,%eax
 804dbf3:	74 1e                	je     804dc13 <free_bytes+0xb6>
 804dbf5:	8b 45 10             	mov    0x10(%ebp),%eax
 804dbf8:	0f b7 40 08          	movzwl 0x8(%eax),%eax
 804dbfc:	89 44 24 08          	mov    %eax,0x8(%esp)
 804dc00:	c7 44 24 04 d0 00 00 	movl   $0xd0,0x4(%esp)
 804dc07:	00 
 804dc08:	8b 45 08             	mov    0x8(%ebp),%eax
 804dc0b:	89 04 24             	mov    %eax,(%esp)
 804dc0e:	e8 85 e2 ff ff       	call   804be98 <memset>
 804dc13:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804dc16:	c1 e8 05             	shr    $0x5,%eax
 804dc19:	8b 55 10             	mov    0x10(%ebp),%edx
 804dc1c:	8d 48 04             	lea    0x4(%eax),%ecx
 804dc1f:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804dc22:	8b 4d f0             	mov    -0x10(%ebp),%ecx
 804dc25:	83 e1 1f             	and    $0x1f,%ecx
 804dc28:	be 01 00 00 00       	mov    $0x1,%esi
 804dc2d:	d3 e6                	shl    %cl,%esi
 804dc2f:	89 f1                	mov    %esi,%ecx
 804dc31:	09 d1                	or     %edx,%ecx
 804dc33:	8b 55 10             	mov    0x10(%ebp),%edx
 804dc36:	83 c0 04             	add    $0x4,%eax
 804dc39:	89 0c 82             	mov    %ecx,(%edx,%eax,4)
 804dc3c:	8b 45 10             	mov    0x10(%ebp),%eax
 804dc3f:	0f b7 40 0c          	movzwl 0xc(%eax),%eax
 804dc43:	40                   	inc    %eax
 804dc44:	0f b7 d0             	movzwl %ax,%edx
 804dc47:	8b 45 10             	mov    0x10(%ebp),%eax
 804dc4a:	66 89 50 0c          	mov    %dx,0xc(%eax)
 804dc4e:	8b 93 bc 19 00 00    	mov    0x19bc(%ebx),%edx
 804dc54:	8b 45 10             	mov    0x10(%ebp),%eax
 804dc57:	0f b7 40 0a          	movzwl 0xa(%eax),%eax
 804dc5b:	c1 e0 02             	shl    $0x2,%eax
 804dc5e:	01 d0                	add    %edx,%eax
 804dc60:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804dc63:	8b 45 10             	mov    0x10(%ebp),%eax
 804dc66:	0f b7 40 0c          	movzwl 0xc(%eax),%eax
 804dc6a:	83 f8 01             	cmp    $0x1,%eax
 804dc6d:	75 5e                	jne    804dccd <free_bytes+0x170>
 804dc6f:	8b 93 bc 19 00 00    	mov    0x19bc(%ebx),%edx
 804dc75:	8b 45 10             	mov    0x10(%ebp),%eax
 804dc78:	0f b7 40 0a          	movzwl 0xa(%eax),%eax
 804dc7c:	c1 e0 02             	shl    $0x2,%eax
 804dc7f:	01 d0                	add    %edx,%eax
 804dc81:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804dc84:	eb 08                	jmp    804dc8e <free_bytes+0x131>
 804dc86:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804dc89:	8b 00                	mov    (%eax),%eax
 804dc8b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804dc8e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804dc91:	8b 00                	mov    (%eax),%eax
 804dc93:	85 c0                	test   %eax,%eax
 804dc95:	74 1f                	je     804dcb6 <free_bytes+0x159>
 804dc97:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804dc9a:	8b 00                	mov    (%eax),%eax
 804dc9c:	8b 00                	mov    (%eax),%eax
 804dc9e:	85 c0                	test   %eax,%eax
 804dca0:	74 14                	je     804dcb6 <free_bytes+0x159>
 804dca2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804dca5:	8b 00                	mov    (%eax),%eax
 804dca7:	8b 00                	mov    (%eax),%eax
 804dca9:	8b 50 04             	mov    0x4(%eax),%edx
 804dcac:	8b 45 10             	mov    0x10(%ebp),%eax
 804dcaf:	8b 40 04             	mov    0x4(%eax),%eax
 804dcb2:	39 c2                	cmp    %eax,%edx
 804dcb4:	72 d0                	jb     804dc86 <free_bytes+0x129>
 804dcb6:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804dcb9:	8b 10                	mov    (%eax),%edx
 804dcbb:	8b 45 10             	mov    0x10(%ebp),%eax
 804dcbe:	89 10                	mov    %edx,(%eax)
 804dcc0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804dcc3:	8b 55 10             	mov    0x10(%ebp),%edx
 804dcc6:	89 10                	mov    %edx,(%eax)
 804dcc8:	e9 80 00 00 00       	jmp    804dd4d <free_bytes+0x1f0>
 804dccd:	8b 45 10             	mov    0x10(%ebp),%eax
 804dcd0:	0f b7 50 0c          	movzwl 0xc(%eax),%edx
 804dcd4:	8b 45 10             	mov    0x10(%ebp),%eax
 804dcd7:	0f b7 40 0e          	movzwl 0xe(%eax),%eax
 804dcdb:	39 c2                	cmp    %eax,%edx
 804dcdd:	75 6d                	jne    804dd4c <free_bytes+0x1ef>
 804dcdf:	eb 08                	jmp    804dce9 <free_bytes+0x18c>
 804dce1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804dce4:	8b 00                	mov    (%eax),%eax
 804dce6:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804dce9:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804dcec:	8b 00                	mov    (%eax),%eax
 804dcee:	3b 45 10             	cmp    0x10(%ebp),%eax
 804dcf1:	75 ee                	jne    804dce1 <free_bytes+0x184>
 804dcf3:	8b 45 10             	mov    0x10(%ebp),%eax
 804dcf6:	8b 10                	mov    (%eax),%edx
 804dcf8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804dcfb:	89 10                	mov    %edx,(%eax)
 804dcfd:	8b 93 bc 19 00 00    	mov    0x19bc(%ebx),%edx
 804dd03:	8b 45 10             	mov    0x10(%ebp),%eax
 804dd06:	8b 40 04             	mov    0x4(%eax),%eax
 804dd09:	c1 e8 0c             	shr    $0xc,%eax
 804dd0c:	89 c1                	mov    %eax,%ecx
 804dd0e:	8b 83 b4 19 00 00    	mov    0x19b4(%ebx),%eax
 804dd14:	29 c1                	sub    %eax,%ecx
 804dd16:	89 c8                	mov    %ecx,%eax
 804dd18:	c1 e0 02             	shl    $0x2,%eax
 804dd1b:	01 d0                	add    %edx,%eax
 804dd1d:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
 804dd23:	8b 45 10             	mov    0x10(%ebp),%eax
 804dd26:	8b 40 04             	mov    0x4(%eax),%eax
 804dd29:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804dd2c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804dd2f:	3b 45 10             	cmp    0x10(%ebp),%eax
 804dd32:	74 0b                	je     804dd3f <free_bytes+0x1e2>
 804dd34:	8b 45 10             	mov    0x10(%ebp),%eax
 804dd37:	89 04 24             	mov    %eax,(%esp)
 804dd3a:	e8 15 00 00 00       	call   804dd54 <ifree>
 804dd3f:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804dd42:	89 04 24             	mov    %eax,(%esp)
 804dd45:	e8 0a 00 00 00       	call   804dd54 <ifree>
 804dd4a:	eb 01                	jmp    804dd4d <free_bytes+0x1f0>
 804dd4c:	90                   	nop
 804dd4d:	83 c4 20             	add    $0x20,%esp
 804dd50:	5b                   	pop    %ebx
 804dd51:	5e                   	pop    %esi
 804dd52:	5d                   	pop    %ebp
 804dd53:	c3                   	ret    

0804dd54 <ifree>:
 804dd54:	55                   	push   %ebp
 804dd55:	89 e5                	mov    %esp,%ebp
 804dd57:	56                   	push   %esi
 804dd58:	53                   	push   %ebx
 804dd59:	83 ec 50             	sub    $0x50,%esp
 804dd5c:	e8 9c dc ff ff       	call   804b9fd <__x86.get_pc_thunk.bx>
 804dd61:	81 c3 9f 52 00 00    	add    $0x529f,%ebx
 804dd67:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804dd6b:	0f 84 9c 06 00 00    	je     804e40d <ifree+0x6b9>
 804dd71:	8b 83 ac 19 00 00    	mov    0x19ac(%ebx),%eax
 804dd77:	85 c0                	test   %eax,%eax
 804dd79:	75 13                	jne    804dd8e <ifree+0x3a>
 804dd7b:	8d 83 1c e5 ff ff    	lea    -0x1ae4(%ebx),%eax
 804dd81:	89 04 24             	mov    %eax,(%esp)
 804dd84:	e8 35 ea ff ff       	call   804c7be <wrtwarning>
 804dd89:	e9 86 06 00 00       	jmp    804e414 <ifree+0x6c0>
 804dd8e:	8b 83 dc 19 00 00    	mov    0x19dc(%ebx),%eax
 804dd94:	85 c0                	test   %eax,%eax
 804dd96:	0f 85 74 06 00 00    	jne    804e410 <ifree+0x6bc>
 804dd9c:	8b 45 08             	mov    0x8(%ebp),%eax
 804dd9f:	c1 e8 0c             	shr    $0xc,%eax
 804dda2:	89 c2                	mov    %eax,%edx
 804dda4:	8b 83 b4 19 00 00    	mov    0x19b4(%ebx),%eax
 804ddaa:	29 c2                	sub    %eax,%edx
 804ddac:	89 d0                	mov    %edx,%eax
 804ddae:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804ddb1:	83 7d f4 0b          	cmpl   $0xb,-0xc(%ebp)
 804ddb5:	77 13                	ja     804ddca <ifree+0x76>
 804ddb7:	8d 83 34 e4 ff ff    	lea    -0x1bcc(%ebx),%eax
 804ddbd:	89 04 24             	mov    %eax,(%esp)
 804ddc0:	e8 f9 e9 ff ff       	call   804c7be <wrtwarning>
 804ddc5:	e9 4a 06 00 00       	jmp    804e414 <ifree+0x6c0>
 804ddca:	8b 83 b8 19 00 00    	mov    0x19b8(%ebx),%eax
 804ddd0:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 804ddd3:	76 13                	jbe    804dde8 <ifree+0x94>
 804ddd5:	8d 83 5c e4 ff ff    	lea    -0x1ba4(%ebx),%eax
 804dddb:	89 04 24             	mov    %eax,(%esp)
 804ddde:	e8 db e9 ff ff       	call   804c7be <wrtwarning>
 804dde3:	e9 2c 06 00 00       	jmp    804e414 <ifree+0x6c0>
 804dde8:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804ddee:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804ddf1:	c1 e2 02             	shl    $0x2,%edx
 804ddf4:	01 d0                	add    %edx,%eax
 804ddf6:	8b 00                	mov    (%eax),%eax
 804ddf8:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804ddfb:	83 7d f0 03          	cmpl   $0x3,-0x10(%ebp)
 804ddff:	0f 87 19 04 00 00    	ja     804e21e <ifree+0x4ca>
 804de05:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804de08:	8b 55 08             	mov    0x8(%ebp),%edx
 804de0b:	89 55 e8             	mov    %edx,-0x18(%ebp)
 804de0e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804de11:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804de14:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804de17:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 804de1e:	83 7d e0 01          	cmpl   $0x1,-0x20(%ebp)
 804de22:	75 13                	jne    804de37 <ifree+0xe3>
 804de24:	8d 83 ea e4 ff ff    	lea    -0x1b16(%ebx),%eax
 804de2a:	89 04 24             	mov    %eax,(%esp)
 804de2d:	e8 8c e9 ff ff       	call   804c7be <wrtwarning>
 804de32:	e9 dc 05 00 00       	jmp    804e413 <ifree+0x6bf>
 804de37:	83 7d e0 02          	cmpl   $0x2,-0x20(%ebp)
 804de3b:	74 13                	je     804de50 <ifree+0xfc>
 804de3d:	8d 83 d2 e4 ff ff    	lea    -0x1b2e(%ebx),%eax
 804de43:	89 04 24             	mov    %eax,(%esp)
 804de46:	e8 73 e9 ff ff       	call   804c7be <wrtwarning>
 804de4b:	e9 c3 05 00 00       	jmp    804e413 <ifree+0x6bf>
 804de50:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804de53:	25 ff 0f 00 00       	and    $0xfff,%eax
 804de58:	85 c0                	test   %eax,%eax
 804de5a:	74 13                	je     804de6f <ifree+0x11b>
 804de5c:	8d 83 83 e4 ff ff    	lea    -0x1b7d(%ebx),%eax
 804de62:	89 04 24             	mov    %eax,(%esp)
 804de65:	e8 54 e9 ff ff       	call   804c7be <wrtwarning>
 804de6a:	e9 a4 05 00 00       	jmp    804e413 <ifree+0x6bf>
 804de6f:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804de75:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 804de78:	c1 e2 02             	shl    $0x2,%edx
 804de7b:	01 d0                	add    %edx,%eax
 804de7d:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804de83:	c7 45 d8 01 00 00 00 	movl   $0x1,-0x28(%ebp)
 804de8a:	eb 1c                	jmp    804dea8 <ifree+0x154>
 804de8c:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804de92:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 804de95:	8b 55 d8             	mov    -0x28(%ebp),%edx
 804de98:	01 ca                	add    %ecx,%edx
 804de9a:	c1 e2 02             	shl    $0x2,%edx
 804de9d:	01 d0                	add    %edx,%eax
 804de9f:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
 804dea5:	ff 45 d8             	incl   -0x28(%ebp)
 804dea8:	8b 83 bc 19 00 00    	mov    0x19bc(%ebx),%eax
 804deae:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 804deb1:	8b 55 d8             	mov    -0x28(%ebp),%edx
 804deb4:	01 ca                	add    %ecx,%edx
 804deb6:	c1 e2 02             	shl    $0x2,%edx
 804deb9:	01 d0                	add    %edx,%eax
 804debb:	8b 00                	mov    (%eax),%eax
 804debd:	83 f8 03             	cmp    $0x3,%eax
 804dec0:	74 ca                	je     804de8c <ifree+0x138>
 804dec2:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804dec5:	c1 e0 0c             	shl    $0xc,%eax
 804dec8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804decb:	8b 83 f4 19 00 00    	mov    0x19f4(%ebx),%eax
 804ded1:	85 c0                	test   %eax,%eax
 804ded3:	74 1a                	je     804deef <ifree+0x19b>
 804ded5:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804ded8:	89 44 24 08          	mov    %eax,0x8(%esp)
 804dedc:	c7 44 24 04 d0 00 00 	movl   $0xd0,0x4(%esp)
 804dee3:	00 
 804dee4:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804dee7:	89 04 24             	mov    %eax,(%esp)
 804deea:	e8 a9 df ff ff       	call   804be98 <memset>
 804deef:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804def2:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804def5:	01 d0                	add    %edx,%eax
 804def7:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804defa:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804df00:	85 c0                	test   %eax,%eax
 804df02:	75 12                	jne    804df16 <ifree+0x1c2>
 804df04:	c7 04 24 14 00 00 00 	movl   $0x14,(%esp)
 804df0b:	e8 25 f5 ff ff       	call   804d435 <imalloc>
 804df10:	89 83 fc 19 00 00    	mov    %eax,0x19fc(%ebx)
 804df16:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804df1c:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804df1f:	89 50 08             	mov    %edx,0x8(%eax)
 804df22:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804df28:	8b 55 d0             	mov    -0x30(%ebp),%edx
 804df2b:	89 50 0c             	mov    %edx,0xc(%eax)
 804df2e:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804df34:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 804df37:	89 50 10             	mov    %edx,0x10(%eax)
 804df3a:	8b 83 c4 19 00 00    	mov    0x19c4(%ebx),%eax
 804df40:	85 c0                	test   %eax,%eax
 804df42:	75 41                	jne    804df85 <ifree+0x231>
 804df44:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804df4a:	8b 93 c4 19 00 00    	mov    0x19c4(%ebx),%edx
 804df50:	89 10                	mov    %edx,(%eax)
 804df52:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804df58:	8d 93 c4 19 00 00    	lea    0x19c4(%ebx),%edx
 804df5e:	89 50 04             	mov    %edx,0x4(%eax)
 804df61:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804df67:	89 83 c4 19 00 00    	mov    %eax,0x19c4(%ebx)
 804df6d:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804df73:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804df76:	c7 83 fc 19 00 00 00 	movl   $0x0,0x19fc(%ebx)
 804df7d:	00 00 00 
 804df80:	e9 a5 01 00 00       	jmp    804e12a <ifree+0x3d6>
 804df85:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804df88:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804df8b:	01 d0                	add    %edx,%eax
 804df8d:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804df90:	8b 83 c4 19 00 00    	mov    0x19c4(%ebx),%eax
 804df96:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804df99:	eb 08                	jmp    804dfa3 <ifree+0x24f>
 804df9b:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804df9e:	8b 00                	mov    (%eax),%eax
 804dfa0:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804dfa3:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804dfa6:	8b 40 0c             	mov    0xc(%eax),%eax
 804dfa9:	39 45 e8             	cmp    %eax,-0x18(%ebp)
 804dfac:	76 09                	jbe    804dfb7 <ifree+0x263>
 804dfae:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804dfb1:	8b 00                	mov    (%eax),%eax
 804dfb3:	85 c0                	test   %eax,%eax
 804dfb5:	75 e4                	jne    804df9b <ifree+0x247>
 804dfb7:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804dfba:	8b 40 08             	mov    0x8(%eax),%eax
 804dfbd:	39 45 d0             	cmp    %eax,-0x30(%ebp)
 804dfc0:	73 4f                	jae    804e011 <ifree+0x2bd>
 804dfc2:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804dfc8:	8b 55 cc             	mov    -0x34(%ebp),%edx
 804dfcb:	89 10                	mov    %edx,(%eax)
 804dfcd:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804dfd3:	8b 55 cc             	mov    -0x34(%ebp),%edx
 804dfd6:	8b 52 04             	mov    0x4(%edx),%edx
 804dfd9:	89 50 04             	mov    %edx,0x4(%eax)
 804dfdc:	8b 93 fc 19 00 00    	mov    0x19fc(%ebx),%edx
 804dfe2:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804dfe5:	89 50 04             	mov    %edx,0x4(%eax)
 804dfe8:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804dfee:	8b 40 04             	mov    0x4(%eax),%eax
 804dff1:	8b 93 fc 19 00 00    	mov    0x19fc(%ebx),%edx
 804dff7:	89 10                	mov    %edx,(%eax)
 804dff9:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804dfff:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804e002:	c7 83 fc 19 00 00 00 	movl   $0x0,0x19fc(%ebx)
 804e009:	00 00 00 
 804e00c:	e9 19 01 00 00       	jmp    804e12a <ifree+0x3d6>
 804e011:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e014:	8b 40 0c             	mov    0xc(%eax),%eax
 804e017:	39 45 e8             	cmp    %eax,-0x18(%ebp)
 804e01a:	0f 85 91 00 00 00    	jne    804e0b1 <ifree+0x35d>
 804e020:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e023:	8b 50 0c             	mov    0xc(%eax),%edx
 804e026:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804e029:	01 c2                	add    %eax,%edx
 804e02b:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e02e:	89 50 0c             	mov    %edx,0xc(%eax)
 804e031:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e034:	8b 50 10             	mov    0x10(%eax),%edx
 804e037:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804e03a:	01 c2                	add    %eax,%edx
 804e03c:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e03f:	89 50 10             	mov    %edx,0x10(%eax)
 804e042:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e045:	8b 00                	mov    (%eax),%eax
 804e047:	85 c0                	test   %eax,%eax
 804e049:	0f 84 da 00 00 00    	je     804e129 <ifree+0x3d5>
 804e04f:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e052:	8b 50 0c             	mov    0xc(%eax),%edx
 804e055:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e058:	8b 00                	mov    (%eax),%eax
 804e05a:	8b 40 08             	mov    0x8(%eax),%eax
 804e05d:	39 c2                	cmp    %eax,%edx
 804e05f:	0f 85 c4 00 00 00    	jne    804e129 <ifree+0x3d5>
 804e065:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e068:	8b 00                	mov    (%eax),%eax
 804e06a:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804e06d:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804e070:	8b 50 0c             	mov    0xc(%eax),%edx
 804e073:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e076:	89 50 0c             	mov    %edx,0xc(%eax)
 804e079:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e07c:	8b 50 10             	mov    0x10(%eax),%edx
 804e07f:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804e082:	8b 40 10             	mov    0x10(%eax),%eax
 804e085:	01 c2                	add    %eax,%edx
 804e087:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e08a:	89 50 10             	mov    %edx,0x10(%eax)
 804e08d:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804e090:	8b 10                	mov    (%eax),%edx
 804e092:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e095:	89 10                	mov    %edx,(%eax)
 804e097:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e09a:	8b 00                	mov    (%eax),%eax
 804e09c:	85 c0                	test   %eax,%eax
 804e09e:	0f 84 85 00 00 00    	je     804e129 <ifree+0x3d5>
 804e0a4:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e0a7:	8b 00                	mov    (%eax),%eax
 804e0a9:	8b 55 cc             	mov    -0x34(%ebp),%edx
 804e0ac:	89 50 04             	mov    %edx,0x4(%eax)
 804e0af:	eb 79                	jmp    804e12a <ifree+0x3d6>
 804e0b1:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e0b4:	8b 40 08             	mov    0x8(%eax),%eax
 804e0b7:	39 45 d0             	cmp    %eax,-0x30(%ebp)
 804e0ba:	75 1c                	jne    804e0d8 <ifree+0x384>
 804e0bc:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e0bf:	8b 50 10             	mov    0x10(%eax),%edx
 804e0c2:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804e0c5:	01 c2                	add    %eax,%edx
 804e0c7:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e0ca:	89 50 10             	mov    %edx,0x10(%eax)
 804e0cd:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e0d0:	8b 55 e8             	mov    -0x18(%ebp),%edx
 804e0d3:	89 50 08             	mov    %edx,0x8(%eax)
 804e0d6:	eb 52                	jmp    804e12a <ifree+0x3d6>
 804e0d8:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e0db:	8b 00                	mov    (%eax),%eax
 804e0dd:	85 c0                	test   %eax,%eax
 804e0df:	75 38                	jne    804e119 <ifree+0x3c5>
 804e0e1:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804e0e7:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804e0ed:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804e0f3:	8b 55 cc             	mov    -0x34(%ebp),%edx
 804e0f6:	89 50 04             	mov    %edx,0x4(%eax)
 804e0f9:	8b 93 fc 19 00 00    	mov    0x19fc(%ebx),%edx
 804e0ff:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e102:	89 10                	mov    %edx,(%eax)
 804e104:	8b 83 fc 19 00 00    	mov    0x19fc(%ebx),%eax
 804e10a:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804e10d:	c7 83 fc 19 00 00 00 	movl   $0x0,0x19fc(%ebx)
 804e114:	00 00 00 
 804e117:	eb 11                	jmp    804e12a <ifree+0x3d6>
 804e119:	8d 83 01 e5 ff ff    	lea    -0x1aff(%ebx),%eax
 804e11f:	89 04 24             	mov    %eax,(%esp)
 804e122:	e8 c7 e5 ff ff       	call   804c6ee <wrterror>
 804e127:	eb 01                	jmp    804e12a <ifree+0x3d6>
 804e129:	90                   	nop
 804e12a:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e12d:	8b 00                	mov    (%eax),%eax
 804e12f:	85 c0                	test   %eax,%eax
 804e131:	0f 85 cd 00 00 00    	jne    804e204 <ifree+0x4b0>
 804e137:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e13a:	8b 50 10             	mov    0x10(%eax),%edx
 804e13d:	8b 83 a0 03 00 00    	mov    0x3a0(%ebx),%eax
 804e143:	39 c2                	cmp    %eax,%edx
 804e145:	0f 86 b9 00 00 00    	jbe    804e204 <ifree+0x4b0>
 804e14b:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e14e:	8b 50 0c             	mov    0xc(%eax),%edx
 804e151:	8b 83 f8 19 00 00    	mov    0x19f8(%ebx),%eax
 804e157:	39 c2                	cmp    %eax,%edx
 804e159:	0f 85 a5 00 00 00    	jne    804e204 <ifree+0x4b0>
 804e15f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804e166:	e8 38 cb ff ff       	call   804aca3 <sbrk>
 804e16b:	89 c2                	mov    %eax,%edx
 804e16d:	8b 83 f8 19 00 00    	mov    0x19f8(%ebx),%eax
 804e173:	39 c2                	cmp    %eax,%edx
 804e175:	0f 85 89 00 00 00    	jne    804e204 <ifree+0x4b0>
 804e17b:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e17e:	8b 50 08             	mov    0x8(%eax),%edx
 804e181:	8b 83 a0 03 00 00    	mov    0x3a0(%ebx),%eax
 804e187:	01 c2                	add    %eax,%edx
 804e189:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e18c:	89 50 0c             	mov    %edx,0xc(%eax)
 804e18f:	8b 93 a0 03 00 00    	mov    0x3a0(%ebx),%edx
 804e195:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e198:	89 50 10             	mov    %edx,0x10(%eax)
 804e19b:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e19e:	8b 40 0c             	mov    0xc(%eax),%eax
 804e1a1:	89 04 24             	mov    %eax,(%esp)
 804e1a4:	e8 c3 cb ff ff       	call   804ad6c <brk>
 804e1a9:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e1ac:	8b 40 0c             	mov    0xc(%eax),%eax
 804e1af:	89 83 f8 19 00 00    	mov    %eax,0x19f8(%ebx)
 804e1b5:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804e1b8:	8b 40 0c             	mov    0xc(%eax),%eax
 804e1bb:	c1 e8 0c             	shr    $0xc,%eax
 804e1be:	89 c2                	mov    %eax,%edx
 804e1c0:	8b 83 b4 19 00 00    	mov    0x19b4(%ebx),%eax
 804e1c6:	29 c2                	sub    %eax,%edx
 804e1c8:	89 d0                	mov    %edx,%eax
 804e1ca:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804e1cd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804e1d0:	48                   	dec    %eax
 804e1d1:	89 83 b8 19 00 00    	mov    %eax,0x19b8(%ebx)
 804e1d7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804e1da:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804e1dd:	eb 1a                	jmp    804e1f9 <ifree+0x4a5>
 804e1df:	8b 8b bc 19 00 00    	mov    0x19bc(%ebx),%ecx
 804e1e5:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804e1e8:	8d 50 01             	lea    0x1(%eax),%edx
 804e1eb:	89 55 d8             	mov    %edx,-0x28(%ebp)
 804e1ee:	c1 e0 02             	shl    $0x2,%eax
 804e1f1:	01 c8                	add    %ecx,%eax
 804e1f3:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804e1f9:	8b 83 b8 19 00 00    	mov    0x19b8(%ebx),%eax
 804e1ff:	39 45 d8             	cmp    %eax,-0x28(%ebp)
 804e202:	76 db                	jbe    804e1df <ifree+0x48b>
 804e204:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
 804e208:	0f 84 05 02 00 00    	je     804e413 <ifree+0x6bf>
 804e20e:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804e211:	89 04 24             	mov    %eax,(%esp)
 804e214:	e8 3b fb ff ff       	call   804dd54 <ifree>
 804e219:	e9 f5 01 00 00       	jmp    804e413 <ifree+0x6bf>
 804e21e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804e221:	8b 55 08             	mov    0x8(%ebp),%edx
 804e224:	89 55 ec             	mov    %edx,-0x14(%ebp)
 804e227:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804e22a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804e22d:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804e230:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804e233:	25 ff 0f 00 00       	and    $0xfff,%eax
 804e238:	89 c2                	mov    %eax,%edx
 804e23a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804e23d:	0f b7 40 0a          	movzwl 0xa(%eax),%eax
 804e241:	88 c1                	mov    %al,%cl
 804e243:	d3 ea                	shr    %cl,%edx
 804e245:	89 d0                	mov    %edx,%eax
 804e247:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804e24a:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804e24d:	0f b7 40 08          	movzwl 0x8(%eax),%eax
 804e251:	48                   	dec    %eax
 804e252:	89 c2                	mov    %eax,%edx
 804e254:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804e257:	21 d0                	and    %edx,%eax
 804e259:	85 c0                	test   %eax,%eax
 804e25b:	74 13                	je     804e270 <ifree+0x51c>
 804e25d:	8d 83 9e e4 ff ff    	lea    -0x1b62(%ebx),%eax
 804e263:	89 04 24             	mov    %eax,(%esp)
 804e266:	e8 53 e5 ff ff       	call   804c7be <wrtwarning>
 804e26b:	e9 a3 01 00 00       	jmp    804e413 <ifree+0x6bf>
 804e270:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804e273:	c1 e8 05             	shr    $0x5,%eax
 804e276:	89 c2                	mov    %eax,%edx
 804e278:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804e27b:	83 c2 04             	add    $0x4,%edx
 804e27e:	8b 04 90             	mov    (%eax,%edx,4),%eax
 804e281:	8b 55 c0             	mov    -0x40(%ebp),%edx
 804e284:	83 e2 1f             	and    $0x1f,%edx
 804e287:	be 01 00 00 00       	mov    $0x1,%esi
 804e28c:	88 d1                	mov    %dl,%cl
 804e28e:	d3 e6                	shl    %cl,%esi
 804e290:	89 f2                	mov    %esi,%edx
 804e292:	21 d0                	and    %edx,%eax
 804e294:	85 c0                	test   %eax,%eax
 804e296:	74 13                	je     804e2ab <ifree+0x557>
 804e298:	8d 83 ba e4 ff ff    	lea    -0x1b46(%ebx),%eax
 804e29e:	89 04 24             	mov    %eax,(%esp)
 804e2a1:	e8 18 e5 ff ff       	call   804c7be <wrtwarning>
 804e2a6:	e9 68 01 00 00       	jmp    804e413 <ifree+0x6bf>
 804e2ab:	8b 83 f4 19 00 00    	mov    0x19f4(%ebx),%eax
 804e2b1:	85 c0                	test   %eax,%eax
 804e2b3:	74 1e                	je     804e2d3 <ifree+0x57f>
 804e2b5:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804e2b8:	0f b7 40 08          	movzwl 0x8(%eax),%eax
 804e2bc:	89 44 24 08          	mov    %eax,0x8(%esp)
 804e2c0:	c7 44 24 04 d0 00 00 	movl   $0xd0,0x4(%esp)
 804e2c7:	00 
 804e2c8:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804e2cb:	89 04 24             	mov    %eax,(%esp)
 804e2ce:	e8 c5 db ff ff       	call   804be98 <memset>
 804e2d3:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804e2d6:	c1 e8 05             	shr    $0x5,%eax
 804e2d9:	8b 55 c4             	mov    -0x3c(%ebp),%edx
 804e2dc:	8d 48 04             	lea    0x4(%eax),%ecx
 804e2df:	8b 14 8a             	mov    (%edx,%ecx,4),%edx
 804e2e2:	8b 4d c0             	mov    -0x40(%ebp),%ecx
 804e2e5:	83 e1 1f             	and    $0x1f,%ecx
 804e2e8:	be 01 00 00 00       	mov    $0x1,%esi
 804e2ed:	d3 e6                	shl    %cl,%esi
 804e2ef:	89 f1                	mov    %esi,%ecx
 804e2f1:	09 d1                	or     %edx,%ecx
 804e2f3:	8b 55 c4             	mov    -0x3c(%ebp),%edx
 804e2f6:	83 c0 04             	add    $0x4,%eax
 804e2f9:	89 0c 82             	mov    %ecx,(%edx,%eax,4)
 804e2fc:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804e2ff:	0f b7 40 0c          	movzwl 0xc(%eax),%eax
 804e303:	40                   	inc    %eax
 804e304:	0f b7 d0             	movzwl %ax,%edx
 804e307:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804e30a:	66 89 50 0c          	mov    %dx,0xc(%eax)
 804e30e:	8b 93 bc 19 00 00    	mov    0x19bc(%ebx),%edx
 804e314:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804e317:	0f b7 40 0a          	movzwl 0xa(%eax),%eax
 804e31b:	c1 e0 02             	shl    $0x2,%eax
 804e31e:	01 d0                	add    %edx,%eax
 804e320:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804e323:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804e326:	0f b7 40 0c          	movzwl 0xc(%eax),%eax
 804e32a:	83 f8 01             	cmp    $0x1,%eax
 804e32d:	75 5e                	jne    804e38d <ifree+0x639>
 804e32f:	8b 93 bc 19 00 00    	mov    0x19bc(%ebx),%edx
 804e335:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804e338:	0f b7 40 0a          	movzwl 0xa(%eax),%eax
 804e33c:	c1 e0 02             	shl    $0x2,%eax
 804e33f:	01 d0                	add    %edx,%eax
 804e341:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804e344:	eb 08                	jmp    804e34e <ifree+0x5fa>
 804e346:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804e349:	8b 00                	mov    (%eax),%eax
 804e34b:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804e34e:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804e351:	8b 00                	mov    (%eax),%eax
 804e353:	85 c0                	test   %eax,%eax
 804e355:	74 1f                	je     804e376 <ifree+0x622>
 804e357:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804e35a:	8b 00                	mov    (%eax),%eax
 804e35c:	8b 00                	mov    (%eax),%eax
 804e35e:	85 c0                	test   %eax,%eax
 804e360:	74 14                	je     804e376 <ifree+0x622>
 804e362:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804e365:	8b 00                	mov    (%eax),%eax
 804e367:	8b 00                	mov    (%eax),%eax
 804e369:	8b 50 04             	mov    0x4(%eax),%edx
 804e36c:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804e36f:	8b 40 04             	mov    0x4(%eax),%eax
 804e372:	39 c2                	cmp    %eax,%edx
 804e374:	72 d0                	jb     804e346 <ifree+0x5f2>
 804e376:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804e379:	8b 10                	mov    (%eax),%edx
 804e37b:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804e37e:	89 10                	mov    %edx,(%eax)
 804e380:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804e383:	8b 55 c4             	mov    -0x3c(%ebp),%edx
 804e386:	89 10                	mov    %edx,(%eax)
 804e388:	e9 86 00 00 00       	jmp    804e413 <ifree+0x6bf>
 804e38d:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804e390:	0f b7 50 0c          	movzwl 0xc(%eax),%edx
 804e394:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804e397:	0f b7 40 0e          	movzwl 0xe(%eax),%eax
 804e39b:	39 c2                	cmp    %eax,%edx
 804e39d:	75 74                	jne    804e413 <ifree+0x6bf>
 804e39f:	eb 08                	jmp    804e3a9 <ifree+0x655>
 804e3a1:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804e3a4:	8b 00                	mov    (%eax),%eax
 804e3a6:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804e3a9:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804e3ac:	8b 00                	mov    (%eax),%eax
 804e3ae:	39 45 c4             	cmp    %eax,-0x3c(%ebp)
 804e3b1:	75 ee                	jne    804e3a1 <ifree+0x64d>
 804e3b3:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804e3b6:	8b 10                	mov    (%eax),%edx
 804e3b8:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804e3bb:	89 10                	mov    %edx,(%eax)
 804e3bd:	8b 93 bc 19 00 00    	mov    0x19bc(%ebx),%edx
 804e3c3:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804e3c6:	8b 40 04             	mov    0x4(%eax),%eax
 804e3c9:	c1 e8 0c             	shr    $0xc,%eax
 804e3cc:	89 c1                	mov    %eax,%ecx
 804e3ce:	8b 83 b4 19 00 00    	mov    0x19b4(%ebx),%eax
 804e3d4:	29 c1                	sub    %eax,%ecx
 804e3d6:	89 c8                	mov    %ecx,%eax
 804e3d8:	c1 e0 02             	shl    $0x2,%eax
 804e3db:	01 d0                	add    %edx,%eax
 804e3dd:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
 804e3e3:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804e3e6:	8b 40 04             	mov    0x4(%eax),%eax
 804e3e9:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804e3ec:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804e3ef:	3b 45 b8             	cmp    -0x48(%ebp),%eax
 804e3f2:	74 0b                	je     804e3ff <ifree+0x6ab>
 804e3f4:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804e3f7:	89 04 24             	mov    %eax,(%esp)
 804e3fa:	e8 55 f9 ff ff       	call   804dd54 <ifree>
 804e3ff:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804e402:	89 04 24             	mov    %eax,(%esp)
 804e405:	e8 4a f9 ff ff       	call   804dd54 <ifree>
 804e40a:	90                   	nop
 804e40b:	eb 06                	jmp    804e413 <ifree+0x6bf>
 804e40d:	90                   	nop
 804e40e:	eb 04                	jmp    804e414 <ifree+0x6c0>
 804e410:	90                   	nop
 804e411:	eb 01                	jmp    804e414 <ifree+0x6c0>
 804e413:	90                   	nop
 804e414:	83 c4 50             	add    $0x50,%esp
 804e417:	5b                   	pop    %ebx
 804e418:	5e                   	pop    %esi
 804e419:	5d                   	pop    %ebp
 804e41a:	c3                   	ret    

0804e41b <malloc>:
 804e41b:	55                   	push   %ebp
 804e41c:	89 e5                	mov    %esp,%ebp
 804e41e:	56                   	push   %esi
 804e41f:	53                   	push   %ebx
 804e420:	83 ec 10             	sub    $0x10,%esp
 804e423:	e8 d5 d5 ff ff       	call   804b9fd <__x86.get_pc_thunk.bx>
 804e428:	81 c3 d8 4b 00 00    	add    $0x4bd8,%ebx
 804e42e:	8d 83 3d e5 ff ff    	lea    -0x1ac3(%ebx),%eax
 804e434:	89 83 00 1a 00 00    	mov    %eax,0x1a00(%ebx)
 804e43a:	8b 83 b0 19 00 00    	mov    0x19b0(%ebx),%eax
 804e440:	8d 50 01             	lea    0x1(%eax),%edx
 804e443:	89 93 b0 19 00 00    	mov    %edx,0x19b0(%ebx)
 804e449:	85 c0                	test   %eax,%eax
 804e44b:	74 22                	je     804e46f <malloc+0x54>
 804e44d:	8d 83 4b e5 ff ff    	lea    -0x1ab5(%ebx),%eax
 804e453:	89 04 24             	mov    %eax,(%esp)
 804e456:	e8 63 e3 ff ff       	call   804c7be <wrtwarning>
 804e45b:	8b 83 b0 19 00 00    	mov    0x19b0(%ebx),%eax
 804e461:	48                   	dec    %eax
 804e462:	89 83 b0 19 00 00    	mov    %eax,0x19b0(%ebx)
 804e468:	b8 00 00 00 00       	mov    $0x0,%eax
 804e46d:	eb 5e                	jmp    804e4cd <malloc+0xb2>
 804e46f:	8b 83 ac 19 00 00    	mov    0x19ac(%ebx),%eax
 804e475:	85 c0                	test   %eax,%eax
 804e477:	75 05                	jne    804e47e <malloc+0x63>
 804e479:	e8 97 e5 ff ff       	call   804ca15 <malloc_init>
 804e47e:	8b 83 ec 19 00 00    	mov    0x19ec(%ebx),%eax
 804e484:	85 c0                	test   %eax,%eax
 804e486:	74 0d                	je     804e495 <malloc+0x7a>
 804e488:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804e48c:	75 07                	jne    804e495 <malloc+0x7a>
 804e48e:	be 00 00 00 00       	mov    $0x0,%esi
 804e493:	eb 0d                	jmp    804e4a2 <malloc+0x87>
 804e495:	8b 45 08             	mov    0x8(%ebp),%eax
 804e498:	89 04 24             	mov    %eax,(%esp)
 804e49b:	e8 95 ef ff ff       	call   804d435 <imalloc>
 804e4a0:	89 c6                	mov    %eax,%esi
 804e4a2:	8b 83 b0 19 00 00    	mov    0x19b0(%ebx),%eax
 804e4a8:	48                   	dec    %eax
 804e4a9:	89 83 b0 19 00 00    	mov    %eax,0x19b0(%ebx)
 804e4af:	8b 83 e8 19 00 00    	mov    0x19e8(%ebx),%eax
 804e4b5:	85 c0                	test   %eax,%eax
 804e4b7:	74 12                	je     804e4cb <malloc+0xb0>
 804e4b9:	85 f6                	test   %esi,%esi
 804e4bb:	75 0e                	jne    804e4cb <malloc+0xb0>
 804e4bd:	8d 83 5c e5 ff ff    	lea    -0x1aa4(%ebx),%eax
 804e4c3:	89 04 24             	mov    %eax,(%esp)
 804e4c6:	e8 23 e2 ff ff       	call   804c6ee <wrterror>
 804e4cb:	89 f0                	mov    %esi,%eax
 804e4cd:	83 c4 10             	add    $0x10,%esp
 804e4d0:	5b                   	pop    %ebx
 804e4d1:	5e                   	pop    %esi
 804e4d2:	5d                   	pop    %ebp
 804e4d3:	c3                   	ret    

0804e4d4 <free>:
 804e4d4:	55                   	push   %ebp
 804e4d5:	89 e5                	mov    %esp,%ebp
 804e4d7:	53                   	push   %ebx
 804e4d8:	83 ec 14             	sub    $0x14,%esp
 804e4db:	e8 1d d5 ff ff       	call   804b9fd <__x86.get_pc_thunk.bx>
 804e4e0:	81 c3 20 4b 00 00    	add    $0x4b20,%ebx
 804e4e6:	8d 83 6c e5 ff ff    	lea    -0x1a94(%ebx),%eax
 804e4ec:	89 83 00 1a 00 00    	mov    %eax,0x1a00(%ebx)
 804e4f2:	8b 83 b0 19 00 00    	mov    0x19b0(%ebx),%eax
 804e4f8:	8d 50 01             	lea    0x1(%eax),%edx
 804e4fb:	89 93 b0 19 00 00    	mov    %edx,0x19b0(%ebx)
 804e501:	85 c0                	test   %eax,%eax
 804e503:	74 1d                	je     804e522 <free+0x4e>
 804e505:	8d 83 4b e5 ff ff    	lea    -0x1ab5(%ebx),%eax
 804e50b:	89 04 24             	mov    %eax,(%esp)
 804e50e:	e8 ab e2 ff ff       	call   804c7be <wrtwarning>
 804e513:	8b 83 b0 19 00 00    	mov    0x19b0(%ebx),%eax
 804e519:	48                   	dec    %eax
 804e51a:	89 83 b0 19 00 00    	mov    %eax,0x19b0(%ebx)
 804e520:	eb 19                	jmp    804e53b <free+0x67>
 804e522:	8b 45 08             	mov    0x8(%ebp),%eax
 804e525:	89 04 24             	mov    %eax,(%esp)
 804e528:	e8 27 f8 ff ff       	call   804dd54 <ifree>
 804e52d:	8b 83 b0 19 00 00    	mov    0x19b0(%ebx),%eax
 804e533:	48                   	dec    %eax
 804e534:	89 83 b0 19 00 00    	mov    %eax,0x19b0(%ebx)
 804e53a:	90                   	nop
 804e53b:	83 c4 14             	add    $0x14,%esp
 804e53e:	5b                   	pop    %ebx
 804e53f:	5d                   	pop    %ebp
 804e540:	c3                   	ret    

0804e541 <realloc>:
 804e541:	55                   	push   %ebp
 804e542:	89 e5                	mov    %esp,%ebp
 804e544:	56                   	push   %esi
 804e545:	53                   	push   %ebx
 804e546:	83 ec 10             	sub    $0x10,%esp
 804e549:	e8 af d4 ff ff       	call   804b9fd <__x86.get_pc_thunk.bx>
 804e54e:	81 c3 b2 4a 00 00    	add    $0x4ab2,%ebx
 804e554:	8d 83 78 e5 ff ff    	lea    -0x1a88(%ebx),%eax
 804e55a:	89 83 00 1a 00 00    	mov    %eax,0x1a00(%ebx)
 804e560:	8b 83 b0 19 00 00    	mov    0x19b0(%ebx),%eax
 804e566:	8d 50 01             	lea    0x1(%eax),%edx
 804e569:	89 93 b0 19 00 00    	mov    %edx,0x19b0(%ebx)
 804e56f:	85 c0                	test   %eax,%eax
 804e571:	74 25                	je     804e598 <realloc+0x57>
 804e573:	8d 83 4b e5 ff ff    	lea    -0x1ab5(%ebx),%eax
 804e579:	89 04 24             	mov    %eax,(%esp)
 804e57c:	e8 3d e2 ff ff       	call   804c7be <wrtwarning>
 804e581:	8b 83 b0 19 00 00    	mov    0x19b0(%ebx),%eax
 804e587:	48                   	dec    %eax
 804e588:	89 83 b0 19 00 00    	mov    %eax,0x19b0(%ebx)
 804e58e:	b8 00 00 00 00       	mov    $0x0,%eax
 804e593:	e9 aa 00 00 00       	jmp    804e642 <realloc+0x101>
 804e598:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804e59c:	74 1f                	je     804e5bd <realloc+0x7c>
 804e59e:	8b 83 ac 19 00 00    	mov    0x19ac(%ebx),%eax
 804e5a4:	85 c0                	test   %eax,%eax
 804e5a6:	75 15                	jne    804e5bd <realloc+0x7c>
 804e5a8:	8d 83 1c e5 ff ff    	lea    -0x1ae4(%ebx),%eax
 804e5ae:	89 04 24             	mov    %eax,(%esp)
 804e5b1:	e8 08 e2 ff ff       	call   804c7be <wrtwarning>
 804e5b6:	c7 45 08 00 00 00 00 	movl   $0x0,0x8(%ebp)
 804e5bd:	8b 83 ac 19 00 00    	mov    0x19ac(%ebx),%eax
 804e5c3:	85 c0                	test   %eax,%eax
 804e5c5:	75 05                	jne    804e5cc <realloc+0x8b>
 804e5c7:	e8 49 e4 ff ff       	call   804ca15 <malloc_init>
 804e5cc:	8b 83 ec 19 00 00    	mov    0x19ec(%ebx),%eax
 804e5d2:	85 c0                	test   %eax,%eax
 804e5d4:	74 18                	je     804e5ee <realloc+0xad>
 804e5d6:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 804e5da:	75 12                	jne    804e5ee <realloc+0xad>
 804e5dc:	8b 45 08             	mov    0x8(%ebp),%eax
 804e5df:	89 04 24             	mov    %eax,(%esp)
 804e5e2:	e8 6d f7 ff ff       	call   804dd54 <ifree>
 804e5e7:	be 00 00 00 00       	mov    $0x0,%esi
 804e5ec:	eb 29                	jmp    804e617 <realloc+0xd6>
 804e5ee:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804e5f2:	75 0f                	jne    804e603 <realloc+0xc2>
 804e5f4:	8b 45 0c             	mov    0xc(%ebp),%eax
 804e5f7:	89 04 24             	mov    %eax,(%esp)
 804e5fa:	e8 36 ee ff ff       	call   804d435 <imalloc>
 804e5ff:	89 c6                	mov    %eax,%esi
 804e601:	eb 14                	jmp    804e617 <realloc+0xd6>
 804e603:	8b 45 0c             	mov    0xc(%ebp),%eax
 804e606:	89 44 24 04          	mov    %eax,0x4(%esp)
 804e60a:	8b 45 08             	mov    0x8(%ebp),%eax
 804e60d:	89 04 24             	mov    %eax,(%esp)
 804e610:	e8 d6 ee ff ff       	call   804d4eb <irealloc>
 804e615:	89 c6                	mov    %eax,%esi
 804e617:	8b 83 b0 19 00 00    	mov    0x19b0(%ebx),%eax
 804e61d:	48                   	dec    %eax
 804e61e:	89 83 b0 19 00 00    	mov    %eax,0x19b0(%ebx)
 804e624:	8b 83 e8 19 00 00    	mov    0x19e8(%ebx),%eax
 804e62a:	85 c0                	test   %eax,%eax
 804e62c:	74 12                	je     804e640 <realloc+0xff>
 804e62e:	85 f6                	test   %esi,%esi
 804e630:	75 0e                	jne    804e640 <realloc+0xff>
 804e632:	8d 83 5c e5 ff ff    	lea    -0x1aa4(%ebx),%eax
 804e638:	89 04 24             	mov    %eax,(%esp)
 804e63b:	e8 ae e0 ff ff       	call   804c6ee <wrterror>
 804e640:	89 f0                	mov    %esi,%eax
 804e642:	83 c4 10             	add    $0x10,%esp
 804e645:	5b                   	pop    %ebx
 804e646:	5e                   	pop    %esi
 804e647:	5d                   	pop    %ebp
 804e648:	c3                   	ret    

0804e649 <calloc>:
 804e649:	55                   	push   %ebp
 804e64a:	89 e5                	mov    %esp,%ebp
 804e64c:	53                   	push   %ebx
 804e64d:	83 ec 24             	sub    $0x24,%esp
 804e650:	e8 a8 d3 ff ff       	call   804b9fd <__x86.get_pc_thunk.bx>
 804e655:	81 c3 ab 49 00 00    	add    $0x49ab,%ebx
 804e65b:	8b 45 08             	mov    0x8(%ebp),%eax
 804e65e:	0f af 45 0c          	imul   0xc(%ebp),%eax
 804e662:	89 04 24             	mov    %eax,(%esp)
 804e665:	e8 b1 fd ff ff       	call   804e41b <malloc>
 804e66a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804e66d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804e671:	75 07                	jne    804e67a <calloc+0x31>
 804e673:	b8 00 00 00 00       	mov    $0x0,%eax
 804e678:	eb 21                	jmp    804e69b <calloc+0x52>
 804e67a:	8b 45 08             	mov    0x8(%ebp),%eax
 804e67d:	0f af 45 0c          	imul   0xc(%ebp),%eax
 804e681:	89 44 24 08          	mov    %eax,0x8(%esp)
 804e685:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 804e68c:	00 
 804e68d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804e690:	89 04 24             	mov    %eax,(%esp)
 804e693:	e8 00 d8 ff ff       	call   804be98 <memset>
 804e698:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804e69b:	83 c4 24             	add    $0x24,%esp
 804e69e:	5b                   	pop    %ebx
 804e69f:	5d                   	pop    %ebp
 804e6a0:	c3                   	ret    

0804e6a1 <printf>:
 804e6a1:	55                   	push   %ebp
 804e6a2:	89 e5                	mov    %esp,%ebp
 804e6a4:	53                   	push   %ebx
 804e6a5:	83 ec 24             	sub    $0x24,%esp
 804e6a8:	e8 48 d3 ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804e6ad:	05 53 49 00 00       	add    $0x4953,%eax
 804e6b2:	8d 55 0c             	lea    0xc(%ebp),%edx
 804e6b5:	89 55 f0             	mov    %edx,-0x10(%ebp)
 804e6b8:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804e6bb:	89 54 24 04          	mov    %edx,0x4(%esp)
 804e6bf:	8b 55 08             	mov    0x8(%ebp),%edx
 804e6c2:	89 14 24             	mov    %edx,(%esp)
 804e6c5:	89 c3                	mov    %eax,%ebx
 804e6c7:	e8 cd 00 00 00       	call   804e799 <vprintf>
 804e6cc:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804e6cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804e6d2:	83 c4 24             	add    $0x24,%esp
 804e6d5:	5b                   	pop    %ebx
 804e6d6:	5d                   	pop    %ebp
 804e6d7:	c3                   	ret    

0804e6d8 <fprintf>:
 804e6d8:	55                   	push   %ebp
 804e6d9:	89 e5                	mov    %esp,%ebp
 804e6db:	53                   	push   %ebx
 804e6dc:	83 ec 24             	sub    $0x24,%esp
 804e6df:	e8 11 d3 ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804e6e4:	05 1c 49 00 00       	add    $0x491c,%eax
 804e6e9:	8d 55 10             	lea    0x10(%ebp),%edx
 804e6ec:	89 55 f0             	mov    %edx,-0x10(%ebp)
 804e6ef:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804e6f2:	89 54 24 08          	mov    %edx,0x8(%esp)
 804e6f6:	8b 55 0c             	mov    0xc(%ebp),%edx
 804e6f9:	89 54 24 04          	mov    %edx,0x4(%esp)
 804e6fd:	8b 55 08             	mov    0x8(%ebp),%edx
 804e700:	89 14 24             	mov    %edx,(%esp)
 804e703:	89 c3                	mov    %eax,%ebx
 804e705:	e8 c6 00 00 00       	call   804e7d0 <vfprintf>
 804e70a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804e70d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804e710:	83 c4 24             	add    $0x24,%esp
 804e713:	5b                   	pop    %ebx
 804e714:	5d                   	pop    %ebp
 804e715:	c3                   	ret    

0804e716 <sprintf>:
 804e716:	55                   	push   %ebp
 804e717:	89 e5                	mov    %esp,%ebp
 804e719:	53                   	push   %ebx
 804e71a:	83 ec 24             	sub    $0x24,%esp
 804e71d:	e8 d3 d2 ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804e722:	05 de 48 00 00       	add    $0x48de,%eax
 804e727:	8d 55 10             	lea    0x10(%ebp),%edx
 804e72a:	89 55 f0             	mov    %edx,-0x10(%ebp)
 804e72d:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804e730:	89 54 24 08          	mov    %edx,0x8(%esp)
 804e734:	8b 55 0c             	mov    0xc(%ebp),%edx
 804e737:	89 54 24 04          	mov    %edx,0x4(%esp)
 804e73b:	8b 55 08             	mov    0x8(%ebp),%edx
 804e73e:	89 14 24             	mov    %edx,(%esp)
 804e741:	89 c3                	mov    %eax,%ebx
 804e743:	e8 f4 00 00 00       	call   804e83c <vsprintf>
 804e748:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804e74b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804e74e:	83 c4 24             	add    $0x24,%esp
 804e751:	5b                   	pop    %ebx
 804e752:	5d                   	pop    %ebp
 804e753:	c3                   	ret    

0804e754 <snprintf>:
 804e754:	55                   	push   %ebp
 804e755:	89 e5                	mov    %esp,%ebp
 804e757:	53                   	push   %ebx
 804e758:	83 ec 24             	sub    $0x24,%esp
 804e75b:	e8 95 d2 ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804e760:	05 a0 48 00 00       	add    $0x48a0,%eax
 804e765:	8d 55 14             	lea    0x14(%ebp),%edx
 804e768:	89 55 f0             	mov    %edx,-0x10(%ebp)
 804e76b:	8b 55 f0             	mov    -0x10(%ebp),%edx
 804e76e:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804e772:	8b 55 10             	mov    0x10(%ebp),%edx
 804e775:	89 54 24 08          	mov    %edx,0x8(%esp)
 804e779:	8b 55 0c             	mov    0xc(%ebp),%edx
 804e77c:	89 54 24 04          	mov    %edx,0x4(%esp)
 804e780:	8b 55 08             	mov    0x8(%ebp),%edx
 804e783:	89 14 24             	mov    %edx,(%esp)
 804e786:	89 c3                	mov    %eax,%ebx
 804e788:	e8 8b 05 00 00       	call   804ed18 <vsnprintf>
 804e78d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804e790:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804e793:	83 c4 24             	add    $0x24,%esp
 804e796:	5b                   	pop    %ebx
 804e797:	5d                   	pop    %ebp
 804e798:	c3                   	ret    

0804e799 <vprintf>:
 804e799:	55                   	push   %ebp
 804e79a:	89 e5                	mov    %esp,%ebp
 804e79c:	53                   	push   %ebx
 804e79d:	83 ec 14             	sub    $0x14,%esp
 804e7a0:	e8 50 d2 ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804e7a5:	05 5b 48 00 00       	add    $0x485b,%eax
 804e7aa:	8d 15 b8 33 05 08    	lea    0x80533b8,%edx
 804e7b0:	8b 12                	mov    (%edx),%edx
 804e7b2:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 804e7b5:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 804e7b9:	8b 4d 08             	mov    0x8(%ebp),%ecx
 804e7bc:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 804e7c0:	89 14 24             	mov    %edx,(%esp)
 804e7c3:	89 c3                	mov    %eax,%ebx
 804e7c5:	e8 06 00 00 00       	call   804e7d0 <vfprintf>
 804e7ca:	83 c4 14             	add    $0x14,%esp
 804e7cd:	5b                   	pop    %ebx
 804e7ce:	5d                   	pop    %ebp
 804e7cf:	c3                   	ret    

0804e7d0 <vfprintf>:
 804e7d0:	55                   	push   %ebp
 804e7d1:	89 e5                	mov    %esp,%ebp
 804e7d3:	53                   	push   %ebx
 804e7d4:	81 ec 24 04 00 00    	sub    $0x424,%esp
 804e7da:	e8 1e d2 ff ff       	call   804b9fd <__x86.get_pc_thunk.bx>
 804e7df:	81 c3 21 48 00 00    	add    $0x4821,%ebx
 804e7e5:	8b 45 10             	mov    0x10(%ebp),%eax
 804e7e8:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804e7ec:	8b 45 0c             	mov    0xc(%ebp),%eax
 804e7ef:	89 44 24 08          	mov    %eax,0x8(%esp)
 804e7f3:	c7 44 24 04 00 04 00 	movl   $0x400,0x4(%esp)
 804e7fa:	00 
 804e7fb:	8d 85 f4 fb ff ff    	lea    -0x40c(%ebp),%eax
 804e801:	89 04 24             	mov    %eax,(%esp)
 804e804:	e8 0f 05 00 00       	call   804ed18 <vsnprintf>
 804e809:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804e80c:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 804e810:	7e 1e                	jle    804e830 <vfprintf+0x60>
 804e812:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804e815:	8b 45 08             	mov    0x8(%ebp),%eax
 804e818:	8b 00                	mov    (%eax),%eax
 804e81a:	89 54 24 08          	mov    %edx,0x8(%esp)
 804e81e:	8d 95 f4 fb ff ff    	lea    -0x40c(%ebp),%edx
 804e824:	89 54 24 04          	mov    %edx,0x4(%esp)
 804e828:	89 04 24             	mov    %eax,(%esp)
 804e82b:	e8 46 ca ff ff       	call   804b276 <write>
 804e830:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804e833:	81 c4 24 04 00 00    	add    $0x424,%esp
 804e839:	5b                   	pop    %ebx
 804e83a:	5d                   	pop    %ebp
 804e83b:	c3                   	ret    

0804e83c <vsprintf>:
 804e83c:	55                   	push   %ebp
 804e83d:	89 e5                	mov    %esp,%ebp
 804e83f:	53                   	push   %ebx
 804e840:	83 ec 14             	sub    $0x14,%esp
 804e843:	e8 ad d1 ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804e848:	05 b8 47 00 00       	add    $0x47b8,%eax
 804e84d:	8b 55 10             	mov    0x10(%ebp),%edx
 804e850:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804e854:	8b 55 0c             	mov    0xc(%ebp),%edx
 804e857:	89 54 24 08          	mov    %edx,0x8(%esp)
 804e85b:	c7 44 24 04 ff ff ff 	movl   $0xffffffff,0x4(%esp)
 804e862:	ff 
 804e863:	8b 55 08             	mov    0x8(%ebp),%edx
 804e866:	89 14 24             	mov    %edx,(%esp)
 804e869:	89 c3                	mov    %eax,%ebx
 804e86b:	e8 a8 04 00 00       	call   804ed18 <vsnprintf>
 804e870:	83 c4 14             	add    $0x14,%esp
 804e873:	5b                   	pop    %ebx
 804e874:	5d                   	pop    %ebp
 804e875:	c3                   	ret    

0804e876 <fflush>:
 804e876:	55                   	push   %ebp
 804e877:	89 e5                	mov    %esp,%ebp
 804e879:	e8 77 d1 ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804e87e:	05 82 47 00 00       	add    $0x4782,%eax
 804e883:	b8 00 00 00 00       	mov    $0x0,%eax
 804e888:	5d                   	pop    %ebp
 804e889:	c3                   	ret    

0804e88a <__tolower>:
 804e88a:	55                   	push   %ebp
 804e88b:	89 e5                	mov    %esp,%ebp
 804e88d:	83 ec 04             	sub    $0x4,%esp
 804e890:	e8 51 d4 ff ff       	call   804bce6 <__x86.get_pc_thunk.dx>
 804e895:	81 c2 6b 47 00 00    	add    $0x476b,%edx
 804e89b:	8b 45 08             	mov    0x8(%ebp),%eax
 804e89e:	88 45 fc             	mov    %al,-0x4(%ebp)
 804e8a1:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
 804e8a5:	0f b6 84 02 c0 03 00 	movzbl 0x3c0(%edx,%eax,1),%eax
 804e8ac:	00 
 804e8ad:	0f b6 c0             	movzbl %al,%eax
 804e8b0:	83 e0 01             	and    $0x1,%eax
 804e8b3:	85 c0                	test   %eax,%eax
 804e8b5:	74 04                	je     804e8bb <__tolower+0x31>
 804e8b7:	80 45 fc 20          	addb   $0x20,-0x4(%ebp)
 804e8bb:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
 804e8bf:	c9                   	leave  
 804e8c0:	c3                   	ret    

0804e8c1 <__toupper>:
 804e8c1:	55                   	push   %ebp
 804e8c2:	89 e5                	mov    %esp,%ebp
 804e8c4:	83 ec 04             	sub    $0x4,%esp
 804e8c7:	e8 1a d4 ff ff       	call   804bce6 <__x86.get_pc_thunk.dx>
 804e8cc:	81 c2 34 47 00 00    	add    $0x4734,%edx
 804e8d2:	8b 45 08             	mov    0x8(%ebp),%eax
 804e8d5:	88 45 fc             	mov    %al,-0x4(%ebp)
 804e8d8:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
 804e8dc:	0f b6 84 02 c0 03 00 	movzbl 0x3c0(%edx,%eax,1),%eax
 804e8e3:	00 
 804e8e4:	0f b6 c0             	movzbl %al,%eax
 804e8e7:	83 e0 02             	and    $0x2,%eax
 804e8ea:	85 c0                	test   %eax,%eax
 804e8ec:	74 04                	je     804e8f2 <__toupper+0x31>
 804e8ee:	80 6d fc 20          	subb   $0x20,-0x4(%ebp)
 804e8f2:	0f b6 45 fc          	movzbl -0x4(%ebp),%eax
 804e8f6:	c9                   	leave  
 804e8f7:	c3                   	ret    

0804e8f8 <skip_atoi>:
 804e8f8:	55                   	push   %ebp
 804e8f9:	89 e5                	mov    %esp,%ebp
 804e8fb:	56                   	push   %esi
 804e8fc:	53                   	push   %ebx
 804e8fd:	83 ec 10             	sub    $0x10,%esp
 804e900:	e8 f4 d0 ff ff       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804e905:	81 c1 fb 46 00 00    	add    $0x46fb,%ecx
 804e90b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804e912:	eb 29                	jmp    804e93d <skip_atoi+0x45>
 804e914:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804e917:	89 d0                	mov    %edx,%eax
 804e919:	c1 e0 02             	shl    $0x2,%eax
 804e91c:	01 d0                	add    %edx,%eax
 804e91e:	01 c0                	add    %eax,%eax
 804e920:	89 c6                	mov    %eax,%esi
 804e922:	8b 45 08             	mov    0x8(%ebp),%eax
 804e925:	8b 00                	mov    (%eax),%eax
 804e927:	8d 58 01             	lea    0x1(%eax),%ebx
 804e92a:	8b 55 08             	mov    0x8(%ebp),%edx
 804e92d:	89 1a                	mov    %ebx,(%edx)
 804e92f:	0f b6 00             	movzbl (%eax),%eax
 804e932:	0f be c0             	movsbl %al,%eax
 804e935:	01 f0                	add    %esi,%eax
 804e937:	83 e8 30             	sub    $0x30,%eax
 804e93a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804e93d:	8b 45 08             	mov    0x8(%ebp),%eax
 804e940:	8b 00                	mov    (%eax),%eax
 804e942:	0f b6 00             	movzbl (%eax),%eax
 804e945:	0f b6 c0             	movzbl %al,%eax
 804e948:	0f b6 84 01 c0 03 00 	movzbl 0x3c0(%ecx,%eax,1),%eax
 804e94f:	00 
 804e950:	0f b6 c0             	movzbl %al,%eax
 804e953:	83 e0 04             	and    $0x4,%eax
 804e956:	85 c0                	test   %eax,%eax
 804e958:	75 ba                	jne    804e914 <skip_atoi+0x1c>
 804e95a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804e95d:	83 c4 10             	add    $0x10,%esp
 804e960:	5b                   	pop    %ebx
 804e961:	5e                   	pop    %esi
 804e962:	5d                   	pop    %ebp
 804e963:	c3                   	ret    

0804e964 <number>:
 804e964:	55                   	push   %ebp
 804e965:	89 e5                	mov    %esp,%ebp
 804e967:	57                   	push   %edi
 804e968:	56                   	push   %esi
 804e969:	53                   	push   %ebx
 804e96a:	81 ec dc 00 00 00    	sub    $0xdc,%esp
 804e970:	e8 86 09 00 00       	call   804f2fb <__x86.get_pc_thunk.si>
 804e975:	81 c6 8b 46 00 00    	add    $0x468b,%esi
 804e97b:	8b 45 10             	mov    0x10(%ebp),%eax
 804e97e:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%ebp)
 804e984:	8b 45 14             	mov    0x14(%ebp),%eax
 804e987:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%ebp)
 804e98d:	8d 85 65 ff ff ff    	lea    -0x9b(%ebp),%eax
 804e993:	8d 96 88 e5 ff ff    	lea    -0x1a78(%esi),%edx
 804e999:	bb 25 00 00 00       	mov    $0x25,%ebx
 804e99e:	89 c1                	mov    %eax,%ecx
 804e9a0:	83 e1 01             	and    $0x1,%ecx
 804e9a3:	85 c9                	test   %ecx,%ecx
 804e9a5:	74 0c                	je     804e9b3 <number+0x4f>
 804e9a7:	0f b6 0a             	movzbl (%edx),%ecx
 804e9aa:	88 08                	mov    %cl,(%eax)
 804e9ac:	8d 40 01             	lea    0x1(%eax),%eax
 804e9af:	8d 52 01             	lea    0x1(%edx),%edx
 804e9b2:	4b                   	dec    %ebx
 804e9b3:	89 c1                	mov    %eax,%ecx
 804e9b5:	83 e1 02             	and    $0x2,%ecx
 804e9b8:	85 c9                	test   %ecx,%ecx
 804e9ba:	74 0f                	je     804e9cb <number+0x67>
 804e9bc:	0f b7 0a             	movzwl (%edx),%ecx
 804e9bf:	66 89 08             	mov    %cx,(%eax)
 804e9c2:	8d 40 02             	lea    0x2(%eax),%eax
 804e9c5:	8d 52 02             	lea    0x2(%edx),%edx
 804e9c8:	83 eb 02             	sub    $0x2,%ebx
 804e9cb:	89 df                	mov    %ebx,%edi
 804e9cd:	83 e7 fc             	and    $0xfffffffc,%edi
 804e9d0:	89 bd 2c ff ff ff    	mov    %edi,-0xd4(%ebp)
 804e9d6:	b9 00 00 00 00       	mov    $0x0,%ecx
 804e9db:	8b 3c 0a             	mov    (%edx,%ecx,1),%edi
 804e9de:	89 3c 08             	mov    %edi,(%eax,%ecx,1)
 804e9e1:	83 c1 04             	add    $0x4,%ecx
 804e9e4:	3b 8d 2c ff ff ff    	cmp    -0xd4(%ebp),%ecx
 804e9ea:	72 ef                	jb     804e9db <number+0x77>
 804e9ec:	01 c8                	add    %ecx,%eax
 804e9ee:	01 ca                	add    %ecx,%edx
 804e9f0:	b9 00 00 00 00       	mov    $0x0,%ecx
 804e9f5:	89 df                	mov    %ebx,%edi
 804e9f7:	83 e7 02             	and    $0x2,%edi
 804e9fa:	85 ff                	test   %edi,%edi
 804e9fc:	74 0b                	je     804ea09 <number+0xa5>
 804e9fe:	0f b7 3c 0a          	movzwl (%edx,%ecx,1),%edi
 804ea02:	66 89 3c 08          	mov    %di,(%eax,%ecx,1)
 804ea06:	83 c1 02             	add    $0x2,%ecx
 804ea09:	83 e3 01             	and    $0x1,%ebx
 804ea0c:	85 db                	test   %ebx,%ebx
 804ea0e:	74 07                	je     804ea17 <number+0xb3>
 804ea10:	0f b6 14 0a          	movzbl (%edx,%ecx,1),%edx
 804ea14:	88 14 08             	mov    %dl,(%eax,%ecx,1)
 804ea17:	8d 8d 40 ff ff ff    	lea    -0xc0(%ebp),%ecx
 804ea1d:	8d 96 b0 e5 ff ff    	lea    -0x1a50(%esi),%edx
 804ea23:	b8 25 00 00 00       	mov    $0x25,%eax
 804ea28:	83 e0 fc             	and    $0xfffffffc,%eax
 804ea2b:	89 c7                	mov    %eax,%edi
 804ea2d:	b8 00 00 00 00       	mov    $0x0,%eax
 804ea32:	8b 9c 06 b0 e5 ff ff 	mov    -0x1a50(%esi,%eax,1),%ebx
 804ea39:	89 9c 05 40 ff ff ff 	mov    %ebx,-0xc0(%ebp,%eax,1)
 804ea40:	83 c0 04             	add    $0x4,%eax
 804ea43:	39 f8                	cmp    %edi,%eax
 804ea45:	72 eb                	jb     804ea32 <number+0xce>
 804ea47:	01 c1                	add    %eax,%ecx
 804ea49:	01 c2                	add    %eax,%edx
 804ea4b:	0f b6 02             	movzbl (%edx),%eax
 804ea4e:	88 01                	mov    %al,(%ecx)
 804ea50:	8b 45 24             	mov    0x24(%ebp),%eax
 804ea53:	83 e0 40             	and    $0x40,%eax
 804ea56:	85 c0                	test   %eax,%eax
 804ea58:	74 08                	je     804ea62 <number+0xfe>
 804ea5a:	8d 85 40 ff ff ff    	lea    -0xc0(%ebp),%eax
 804ea60:	eb 06                	jmp    804ea68 <number+0x104>
 804ea62:	8d 85 65 ff ff ff    	lea    -0x9b(%ebp),%eax
 804ea68:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804ea6b:	8b 45 24             	mov    0x24(%ebp),%eax
 804ea6e:	83 e0 10             	and    $0x10,%eax
 804ea71:	85 c0                	test   %eax,%eax
 804ea73:	74 04                	je     804ea79 <number+0x115>
 804ea75:	83 65 24 fe          	andl   $0xfffffffe,0x24(%ebp)
 804ea79:	83 7d 18 01          	cmpl   $0x1,0x18(%ebp)
 804ea7d:	7e 06                	jle    804ea85 <number+0x121>
 804ea7f:	83 7d 18 24          	cmpl   $0x24,0x18(%ebp)
 804ea83:	7e 08                	jle    804ea8d <number+0x129>
 804ea85:	8b 45 08             	mov    0x8(%ebp),%eax
 804ea88:	e9 80 02 00 00       	jmp    804ed0d <number+0x3a9>
 804ea8d:	8b 45 24             	mov    0x24(%ebp),%eax
 804ea90:	83 e0 01             	and    $0x1,%eax
 804ea93:	85 c0                	test   %eax,%eax
 804ea95:	74 04                	je     804ea9b <number+0x137>
 804ea97:	b0 30                	mov    $0x30,%al
 804ea99:	eb 02                	jmp    804ea9d <number+0x139>
 804ea9b:	b0 20                	mov    $0x20,%al
 804ea9d:	88 45 d3             	mov    %al,-0x2d(%ebp)
 804eaa0:	c6 45 e7 00          	movb   $0x0,-0x19(%ebp)
 804eaa4:	8b 45 24             	mov    0x24(%ebp),%eax
 804eaa7:	83 e0 02             	and    $0x2,%eax
 804eaaa:	85 c0                	test   %eax,%eax
 804eaac:	74 49                	je     804eaf7 <number+0x193>
 804eaae:	83 bd 34 ff ff ff 00 	cmpl   $0x0,-0xcc(%ebp)
 804eab5:	79 1c                	jns    804ead3 <number+0x16f>
 804eab7:	c6 45 e7 2d          	movb   $0x2d,-0x19(%ebp)
 804eabb:	f7 9d 30 ff ff ff    	negl   -0xd0(%ebp)
 804eac1:	83 95 34 ff ff ff 00 	adcl   $0x0,-0xcc(%ebp)
 804eac8:	f7 9d 34 ff ff ff    	negl   -0xcc(%ebp)
 804eace:	ff 4d 1c             	decl   0x1c(%ebp)
 804ead1:	eb 24                	jmp    804eaf7 <number+0x193>
 804ead3:	8b 45 24             	mov    0x24(%ebp),%eax
 804ead6:	83 e0 04             	and    $0x4,%eax
 804ead9:	85 c0                	test   %eax,%eax
 804eadb:	74 09                	je     804eae6 <number+0x182>
 804eadd:	c6 45 e7 2b          	movb   $0x2b,-0x19(%ebp)
 804eae1:	ff 4d 1c             	decl   0x1c(%ebp)
 804eae4:	eb 11                	jmp    804eaf7 <number+0x193>
 804eae6:	8b 45 24             	mov    0x24(%ebp),%eax
 804eae9:	83 e0 08             	and    $0x8,%eax
 804eaec:	85 c0                	test   %eax,%eax
 804eaee:	74 07                	je     804eaf7 <number+0x193>
 804eaf0:	c6 45 e7 20          	movb   $0x20,-0x19(%ebp)
 804eaf4:	ff 4d 1c             	decl   0x1c(%ebp)
 804eaf7:	8b 45 24             	mov    0x24(%ebp),%eax
 804eafa:	83 e0 20             	and    $0x20,%eax
 804eafd:	85 c0                	test   %eax,%eax
 804eaff:	74 15                	je     804eb16 <number+0x1b2>
 804eb01:	83 7d 18 10          	cmpl   $0x10,0x18(%ebp)
 804eb05:	75 06                	jne    804eb0d <number+0x1a9>
 804eb07:	83 6d 1c 02          	subl   $0x2,0x1c(%ebp)
 804eb0b:	eb 09                	jmp    804eb16 <number+0x1b2>
 804eb0d:	83 7d 18 08          	cmpl   $0x8,0x18(%ebp)
 804eb11:	75 03                	jne    804eb16 <number+0x1b2>
 804eb13:	ff 4d 1c             	decl   0x1c(%ebp)
 804eb16:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
 804eb1d:	8b 85 34 ff ff ff    	mov    -0xcc(%ebp),%eax
 804eb23:	0b 85 30 ff ff ff    	or     -0xd0(%ebp),%eax
 804eb29:	85 c0                	test   %eax,%eax
 804eb2b:	75 13                	jne    804eb40 <number+0x1dc>
 804eb2d:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804eb30:	8d 50 01             	lea    0x1(%eax),%edx
 804eb33:	89 55 e0             	mov    %edx,-0x20(%ebp)
 804eb36:	c6 44 05 8a 30       	movb   $0x30,-0x76(%ebp,%eax,1)
 804eb3b:	e9 89 00 00 00       	jmp    804ebc9 <number+0x265>
 804eb40:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
 804eb46:	8b 95 34 ff ff ff    	mov    -0xcc(%ebp),%edx
 804eb4c:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804eb4f:	89 55 dc             	mov    %edx,-0x24(%ebp)
 804eb52:	8b 45 18             	mov    0x18(%ebp),%eax
 804eb55:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804eb58:	eb 65                	jmp    804ebbf <number+0x25b>
 804eb5a:	8b 7d e0             	mov    -0x20(%ebp),%edi
 804eb5d:	8d 47 01             	lea    0x1(%edi),%eax
 804eb60:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804eb63:	8b 4d cc             	mov    -0x34(%ebp),%ecx
 804eb66:	bb 00 00 00 00       	mov    $0x0,%ebx
 804eb6b:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804eb6e:	8b 55 dc             	mov    -0x24(%ebp),%edx
 804eb71:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 804eb75:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 804eb79:	89 04 24             	mov    %eax,(%esp)
 804eb7c:	89 54 24 04          	mov    %edx,0x4(%esp)
 804eb80:	89 f3                	mov    %esi,%ebx
 804eb82:	e8 b5 0f 00 00       	call   804fb3c <__umoddi3>
 804eb87:	89 c2                	mov    %eax,%edx
 804eb89:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804eb8c:	01 d0                	add    %edx,%eax
 804eb8e:	0f b6 00             	movzbl (%eax),%eax
 804eb91:	88 44 3d 8a          	mov    %al,-0x76(%ebp,%edi,1)
 804eb95:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804eb98:	ba 00 00 00 00       	mov    $0x0,%edx
 804eb9d:	89 44 24 08          	mov    %eax,0x8(%esp)
 804eba1:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804eba5:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804eba8:	8b 55 dc             	mov    -0x24(%ebp),%edx
 804ebab:	89 04 24             	mov    %eax,(%esp)
 804ebae:	89 54 24 04          	mov    %edx,0x4(%esp)
 804ebb2:	89 f3                	mov    %esi,%ebx
 804ebb4:	e8 29 0f 00 00       	call   804fae2 <__udivdi3>
 804ebb9:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804ebbc:	89 55 dc             	mov    %edx,-0x24(%ebp)
 804ebbf:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804ebc2:	0b 45 d8             	or     -0x28(%ebp),%eax
 804ebc5:	85 c0                	test   %eax,%eax
 804ebc7:	75 91                	jne    804eb5a <number+0x1f6>
 804ebc9:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804ebcc:	3b 45 20             	cmp    0x20(%ebp),%eax
 804ebcf:	7e 06                	jle    804ebd7 <number+0x273>
 804ebd1:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804ebd4:	89 45 20             	mov    %eax,0x20(%ebp)
 804ebd7:	8b 45 20             	mov    0x20(%ebp),%eax
 804ebda:	29 45 1c             	sub    %eax,0x1c(%ebp)
 804ebdd:	8b 45 24             	mov    0x24(%ebp),%eax
 804ebe0:	83 e0 11             	and    $0x11,%eax
 804ebe3:	85 c0                	test   %eax,%eax
 804ebe5:	75 20                	jne    804ec07 <number+0x2a3>
 804ebe7:	eb 11                	jmp    804ebfa <number+0x296>
 804ebe9:	8b 45 08             	mov    0x8(%ebp),%eax
 804ebec:	3b 45 0c             	cmp    0xc(%ebp),%eax
 804ebef:	77 06                	ja     804ebf7 <number+0x293>
 804ebf1:	8b 45 08             	mov    0x8(%ebp),%eax
 804ebf4:	c6 00 20             	movb   $0x20,(%eax)
 804ebf7:	ff 45 08             	incl   0x8(%ebp)
 804ebfa:	8b 45 1c             	mov    0x1c(%ebp),%eax
 804ebfd:	8d 50 ff             	lea    -0x1(%eax),%edx
 804ec00:	89 55 1c             	mov    %edx,0x1c(%ebp)
 804ec03:	85 c0                	test   %eax,%eax
 804ec05:	7f e2                	jg     804ebe9 <number+0x285>
 804ec07:	80 7d e7 00          	cmpb   $0x0,-0x19(%ebp)
 804ec0b:	74 14                	je     804ec21 <number+0x2bd>
 804ec0d:	8b 45 08             	mov    0x8(%ebp),%eax
 804ec10:	3b 45 0c             	cmp    0xc(%ebp),%eax
 804ec13:	77 09                	ja     804ec1e <number+0x2ba>
 804ec15:	8b 45 08             	mov    0x8(%ebp),%eax
 804ec18:	0f b6 55 e7          	movzbl -0x19(%ebp),%edx
 804ec1c:	88 10                	mov    %dl,(%eax)
 804ec1e:	ff 45 08             	incl   0x8(%ebp)
 804ec21:	8b 45 24             	mov    0x24(%ebp),%eax
 804ec24:	83 e0 20             	and    $0x20,%eax
 804ec27:	85 c0                	test   %eax,%eax
 804ec29:	74 47                	je     804ec72 <number+0x30e>
 804ec2b:	83 7d 18 08          	cmpl   $0x8,0x18(%ebp)
 804ec2f:	75 13                	jne    804ec44 <number+0x2e0>
 804ec31:	8b 45 08             	mov    0x8(%ebp),%eax
 804ec34:	3b 45 0c             	cmp    0xc(%ebp),%eax
 804ec37:	77 06                	ja     804ec3f <number+0x2db>
 804ec39:	8b 45 08             	mov    0x8(%ebp),%eax
 804ec3c:	c6 00 30             	movb   $0x30,(%eax)
 804ec3f:	ff 45 08             	incl   0x8(%ebp)
 804ec42:	eb 2e                	jmp    804ec72 <number+0x30e>
 804ec44:	83 7d 18 10          	cmpl   $0x10,0x18(%ebp)
 804ec48:	75 28                	jne    804ec72 <number+0x30e>
 804ec4a:	8b 45 08             	mov    0x8(%ebp),%eax
 804ec4d:	3b 45 0c             	cmp    0xc(%ebp),%eax
 804ec50:	77 06                	ja     804ec58 <number+0x2f4>
 804ec52:	8b 45 08             	mov    0x8(%ebp),%eax
 804ec55:	c6 00 30             	movb   $0x30,(%eax)
 804ec58:	ff 45 08             	incl   0x8(%ebp)
 804ec5b:	8b 45 08             	mov    0x8(%ebp),%eax
 804ec5e:	3b 45 0c             	cmp    0xc(%ebp),%eax
 804ec61:	77 0c                	ja     804ec6f <number+0x30b>
 804ec63:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804ec66:	0f b6 50 21          	movzbl 0x21(%eax),%edx
 804ec6a:	8b 45 08             	mov    0x8(%ebp),%eax
 804ec6d:	88 10                	mov    %dl,(%eax)
 804ec6f:	ff 45 08             	incl   0x8(%ebp)
 804ec72:	8b 45 24             	mov    0x24(%ebp),%eax
 804ec75:	83 e0 10             	and    $0x10,%eax
 804ec78:	85 c0                	test   %eax,%eax
 804ec7a:	75 36                	jne    804ecb2 <number+0x34e>
 804ec7c:	eb 14                	jmp    804ec92 <number+0x32e>
 804ec7e:	8b 45 08             	mov    0x8(%ebp),%eax
 804ec81:	3b 45 0c             	cmp    0xc(%ebp),%eax
 804ec84:	77 09                	ja     804ec8f <number+0x32b>
 804ec86:	8b 45 08             	mov    0x8(%ebp),%eax
 804ec89:	0f b6 55 d3          	movzbl -0x2d(%ebp),%edx
 804ec8d:	88 10                	mov    %dl,(%eax)
 804ec8f:	ff 45 08             	incl   0x8(%ebp)
 804ec92:	8b 45 1c             	mov    0x1c(%ebp),%eax
 804ec95:	8d 50 ff             	lea    -0x1(%eax),%edx
 804ec98:	89 55 1c             	mov    %edx,0x1c(%ebp)
 804ec9b:	85 c0                	test   %eax,%eax
 804ec9d:	7f df                	jg     804ec7e <number+0x31a>
 804ec9f:	eb 11                	jmp    804ecb2 <number+0x34e>
 804eca1:	8b 45 08             	mov    0x8(%ebp),%eax
 804eca4:	3b 45 0c             	cmp    0xc(%ebp),%eax
 804eca7:	77 06                	ja     804ecaf <number+0x34b>
 804eca9:	8b 45 08             	mov    0x8(%ebp),%eax
 804ecac:	c6 00 30             	movb   $0x30,(%eax)
 804ecaf:	ff 45 08             	incl   0x8(%ebp)
 804ecb2:	8b 45 20             	mov    0x20(%ebp),%eax
 804ecb5:	8d 50 ff             	lea    -0x1(%eax),%edx
 804ecb8:	89 55 20             	mov    %edx,0x20(%ebp)
 804ecbb:	3b 45 e0             	cmp    -0x20(%ebp),%eax
 804ecbe:	7f e1                	jg     804eca1 <number+0x33d>
 804ecc0:	eb 1b                	jmp    804ecdd <number+0x379>
 804ecc2:	8b 45 08             	mov    0x8(%ebp),%eax
 804ecc5:	3b 45 0c             	cmp    0xc(%ebp),%eax
 804ecc8:	77 10                	ja     804ecda <number+0x376>
 804ecca:	8d 55 8a             	lea    -0x76(%ebp),%edx
 804eccd:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804ecd0:	01 d0                	add    %edx,%eax
 804ecd2:	0f b6 10             	movzbl (%eax),%edx
 804ecd5:	8b 45 08             	mov    0x8(%ebp),%eax
 804ecd8:	88 10                	mov    %dl,(%eax)
 804ecda:	ff 45 08             	incl   0x8(%ebp)
 804ecdd:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804ece0:	8d 50 ff             	lea    -0x1(%eax),%edx
 804ece3:	89 55 e0             	mov    %edx,-0x20(%ebp)
 804ece6:	85 c0                	test   %eax,%eax
 804ece8:	7f d8                	jg     804ecc2 <number+0x35e>
 804ecea:	eb 11                	jmp    804ecfd <number+0x399>
 804ecec:	8b 45 08             	mov    0x8(%ebp),%eax
 804ecef:	3b 45 0c             	cmp    0xc(%ebp),%eax
 804ecf2:	77 06                	ja     804ecfa <number+0x396>
 804ecf4:	8b 45 08             	mov    0x8(%ebp),%eax
 804ecf7:	c6 00 20             	movb   $0x20,(%eax)
 804ecfa:	ff 45 08             	incl   0x8(%ebp)
 804ecfd:	8b 45 1c             	mov    0x1c(%ebp),%eax
 804ed00:	8d 50 ff             	lea    -0x1(%eax),%edx
 804ed03:	89 55 1c             	mov    %edx,0x1c(%ebp)
 804ed06:	85 c0                	test   %eax,%eax
 804ed08:	7f e2                	jg     804ecec <number+0x388>
 804ed0a:	8b 45 08             	mov    0x8(%ebp),%eax
 804ed0d:	81 c4 dc 00 00 00    	add    $0xdc,%esp
 804ed13:	5b                   	pop    %ebx
 804ed14:	5e                   	pop    %esi
 804ed15:	5f                   	pop    %edi
 804ed16:	5d                   	pop    %ebp
 804ed17:	c3                   	ret    

0804ed18 <vsnprintf>:
 804ed18:	55                   	push   %ebp
 804ed19:	89 e5                	mov    %esp,%ebp
 804ed1b:	53                   	push   %ebx
 804ed1c:	83 ec 64             	sub    $0x64,%esp
 804ed1f:	e8 d9 cc ff ff       	call   804b9fd <__x86.get_pc_thunk.bx>
 804ed24:	81 c3 dc 42 00 00    	add    $0x42dc,%ebx
 804ed2a:	8b 45 08             	mov    0x8(%ebp),%eax
 804ed2d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804ed30:	8b 45 0c             	mov    0xc(%ebp),%eax
 804ed33:	8d 50 ff             	lea    -0x1(%eax),%edx
 804ed36:	8b 45 08             	mov    0x8(%ebp),%eax
 804ed39:	01 d0                	add    %edx,%eax
 804ed3b:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804ed3e:	8b 45 08             	mov    0x8(%ebp),%eax
 804ed41:	48                   	dec    %eax
 804ed42:	3b 45 e0             	cmp    -0x20(%ebp),%eax
 804ed45:	0f 86 76 05 00 00    	jbe    804f2c1 <.L138+0x116>
 804ed4b:	c7 45 e0 ff ff ff ff 	movl   $0xffffffff,-0x20(%ebp)
 804ed52:	8b 55 e0             	mov    -0x20(%ebp),%edx
 804ed55:	8b 45 08             	mov    0x8(%ebp),%eax
 804ed58:	29 c2                	sub    %eax,%edx
 804ed5a:	89 d0                	mov    %edx,%eax
 804ed5c:	40                   	inc    %eax
 804ed5d:	89 45 0c             	mov    %eax,0xc(%ebp)
 804ed60:	e9 5c 05 00 00       	jmp    804f2c1 <.L138+0x116>
 804ed65:	8b 45 10             	mov    0x10(%ebp),%eax
 804ed68:	0f b6 00             	movzbl (%eax),%eax
 804ed6b:	3c 25                	cmp    $0x25,%al
 804ed6d:	74 1b                	je     804ed8a <vsnprintf+0x72>
 804ed6f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804ed72:	3b 45 e0             	cmp    -0x20(%ebp),%eax
 804ed75:	77 0b                	ja     804ed82 <vsnprintf+0x6a>
 804ed77:	8b 45 10             	mov    0x10(%ebp),%eax
 804ed7a:	0f b6 10             	movzbl (%eax),%edx
 804ed7d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804ed80:	88 10                	mov    %dl,(%eax)
 804ed82:	ff 45 e4             	incl   -0x1c(%ebp)
 804ed85:	e9 30 05 00 00       	jmp    804f2ba <.L138+0x10f>
 804ed8a:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 804ed91:	8b 45 10             	mov    0x10(%ebp),%eax
 804ed94:	40                   	inc    %eax
 804ed95:	89 45 10             	mov    %eax,0x10(%ebp)
 804ed98:	8b 45 10             	mov    0x10(%ebp),%eax
 804ed9b:	0f b6 00             	movzbl (%eax),%eax
 804ed9e:	0f be c0             	movsbl %al,%eax
 804eda1:	83 e8 20             	sub    $0x20,%eax
 804eda4:	83 f8 10             	cmp    $0x10,%eax
 804eda7:	77 2c                	ja     804edd5 <.L70>
 804eda9:	c1 e0 02             	shl    $0x2,%eax
 804edac:	8b 84 18 dc e5 ff ff 	mov    -0x1a24(%eax,%ebx,1),%eax
 804edb3:	01 d8                	add    %ebx,%eax
 804edb5:	ff e0                	jmp    *%eax

0804edb7 <.L75>:
 804edb7:	83 4d d8 10          	orl    $0x10,-0x28(%ebp)
 804edbb:	eb d4                	jmp    804ed91 <vsnprintf+0x79>

0804edbd <.L74>:
 804edbd:	83 4d d8 04          	orl    $0x4,-0x28(%ebp)
 804edc1:	eb ce                	jmp    804ed91 <vsnprintf+0x79>

0804edc3 <.L71>:
 804edc3:	83 4d d8 08          	orl    $0x8,-0x28(%ebp)
 804edc7:	eb c8                	jmp    804ed91 <vsnprintf+0x79>

0804edc9 <.L73>:
 804edc9:	83 4d d8 20          	orl    $0x20,-0x28(%ebp)
 804edcd:	eb c2                	jmp    804ed91 <vsnprintf+0x79>

0804edcf <.L76>:
 804edcf:	83 4d d8 01          	orl    $0x1,-0x28(%ebp)
 804edd3:	eb bc                	jmp    804ed91 <vsnprintf+0x79>

0804edd5 <.L70>:
 804edd5:	c7 45 d4 ff ff ff ff 	movl   $0xffffffff,-0x2c(%ebp)
 804eddc:	8b 45 10             	mov    0x10(%ebp),%eax
 804eddf:	0f b6 00             	movzbl (%eax),%eax
 804ede2:	0f b6 c0             	movzbl %al,%eax
 804ede5:	0f b6 84 03 c0 03 00 	movzbl 0x3c0(%ebx,%eax,1),%eax
 804edec:	00 
 804eded:	0f b6 c0             	movzbl %al,%eax
 804edf0:	83 e0 04             	and    $0x4,%eax
 804edf3:	85 c0                	test   %eax,%eax
 804edf5:	74 10                	je     804ee07 <.L70+0x32>
 804edf7:	8d 45 10             	lea    0x10(%ebp),%eax
 804edfa:	89 04 24             	mov    %eax,(%esp)
 804edfd:	e8 f6 fa ff ff       	call   804e8f8 <skip_atoi>
 804ee02:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804ee05:	eb 2c                	jmp    804ee33 <.L70+0x5e>
 804ee07:	8b 45 10             	mov    0x10(%ebp),%eax
 804ee0a:	0f b6 00             	movzbl (%eax),%eax
 804ee0d:	3c 2a                	cmp    $0x2a,%al
 804ee0f:	75 22                	jne    804ee33 <.L70+0x5e>
 804ee11:	8b 45 10             	mov    0x10(%ebp),%eax
 804ee14:	40                   	inc    %eax
 804ee15:	89 45 10             	mov    %eax,0x10(%ebp)
 804ee18:	8b 45 14             	mov    0x14(%ebp),%eax
 804ee1b:	8d 50 04             	lea    0x4(%eax),%edx
 804ee1e:	89 55 14             	mov    %edx,0x14(%ebp)
 804ee21:	8b 00                	mov    (%eax),%eax
 804ee23:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804ee26:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 804ee2a:	79 07                	jns    804ee33 <.L70+0x5e>
 804ee2c:	f7 5d d4             	negl   -0x2c(%ebp)
 804ee2f:	83 4d d8 10          	orl    $0x10,-0x28(%ebp)
 804ee33:	c7 45 d0 ff ff ff ff 	movl   $0xffffffff,-0x30(%ebp)
 804ee3a:	8b 45 10             	mov    0x10(%ebp),%eax
 804ee3d:	0f b6 00             	movzbl (%eax),%eax
 804ee40:	3c 2e                	cmp    $0x2e,%al
 804ee42:	75 5e                	jne    804eea2 <.L70+0xcd>
 804ee44:	8b 45 10             	mov    0x10(%ebp),%eax
 804ee47:	40                   	inc    %eax
 804ee48:	89 45 10             	mov    %eax,0x10(%ebp)
 804ee4b:	8b 45 10             	mov    0x10(%ebp),%eax
 804ee4e:	0f b6 00             	movzbl (%eax),%eax
 804ee51:	0f b6 c0             	movzbl %al,%eax
 804ee54:	0f b6 84 03 c0 03 00 	movzbl 0x3c0(%ebx,%eax,1),%eax
 804ee5b:	00 
 804ee5c:	0f b6 c0             	movzbl %al,%eax
 804ee5f:	83 e0 04             	and    $0x4,%eax
 804ee62:	85 c0                	test   %eax,%eax
 804ee64:	74 10                	je     804ee76 <.L70+0xa1>
 804ee66:	8d 45 10             	lea    0x10(%ebp),%eax
 804ee69:	89 04 24             	mov    %eax,(%esp)
 804ee6c:	e8 87 fa ff ff       	call   804e8f8 <skip_atoi>
 804ee71:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804ee74:	eb 1f                	jmp    804ee95 <.L70+0xc0>
 804ee76:	8b 45 10             	mov    0x10(%ebp),%eax
 804ee79:	0f b6 00             	movzbl (%eax),%eax
 804ee7c:	3c 2a                	cmp    $0x2a,%al
 804ee7e:	75 15                	jne    804ee95 <.L70+0xc0>
 804ee80:	8b 45 10             	mov    0x10(%ebp),%eax
 804ee83:	40                   	inc    %eax
 804ee84:	89 45 10             	mov    %eax,0x10(%ebp)
 804ee87:	8b 45 14             	mov    0x14(%ebp),%eax
 804ee8a:	8d 50 04             	lea    0x4(%eax),%edx
 804ee8d:	89 55 14             	mov    %edx,0x14(%ebp)
 804ee90:	8b 00                	mov    (%eax),%eax
 804ee92:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804ee95:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
 804ee99:	79 07                	jns    804eea2 <.L70+0xcd>
 804ee9b:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
 804eea2:	c7 45 cc ff ff ff ff 	movl   $0xffffffff,-0x34(%ebp)
 804eea9:	8b 45 10             	mov    0x10(%ebp),%eax
 804eeac:	0f b6 00             	movzbl (%eax),%eax
 804eeaf:	3c 68                	cmp    $0x68,%al
 804eeb1:	74 1e                	je     804eed1 <.L70+0xfc>
 804eeb3:	8b 45 10             	mov    0x10(%ebp),%eax
 804eeb6:	0f b6 00             	movzbl (%eax),%eax
 804eeb9:	3c 6c                	cmp    $0x6c,%al
 804eebb:	74 14                	je     804eed1 <.L70+0xfc>
 804eebd:	8b 45 10             	mov    0x10(%ebp),%eax
 804eec0:	0f b6 00             	movzbl (%eax),%eax
 804eec3:	3c 4c                	cmp    $0x4c,%al
 804eec5:	74 0a                	je     804eed1 <.L70+0xfc>
 804eec7:	8b 45 10             	mov    0x10(%ebp),%eax
 804eeca:	0f b6 00             	movzbl (%eax),%eax
 804eecd:	3c 5a                	cmp    $0x5a,%al
 804eecf:	75 31                	jne    804ef02 <.L70+0x12d>
 804eed1:	8b 45 10             	mov    0x10(%ebp),%eax
 804eed4:	0f b6 00             	movzbl (%eax),%eax
 804eed7:	0f be c0             	movsbl %al,%eax
 804eeda:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804eedd:	8b 45 10             	mov    0x10(%ebp),%eax
 804eee0:	40                   	inc    %eax
 804eee1:	89 45 10             	mov    %eax,0x10(%ebp)
 804eee4:	83 7d cc 6c          	cmpl   $0x6c,-0x34(%ebp)
 804eee8:	75 18                	jne    804ef02 <.L70+0x12d>
 804eeea:	8b 45 10             	mov    0x10(%ebp),%eax
 804eeed:	0f b6 00             	movzbl (%eax),%eax
 804eef0:	3c 6c                	cmp    $0x6c,%al
 804eef2:	75 0e                	jne    804ef02 <.L70+0x12d>
 804eef4:	c7 45 cc 4c 00 00 00 	movl   $0x4c,-0x34(%ebp)
 804eefb:	8b 45 10             	mov    0x10(%ebp),%eax
 804eefe:	40                   	inc    %eax
 804eeff:	89 45 10             	mov    %eax,0x10(%ebp)
 804ef02:	8b 45 10             	mov    0x10(%ebp),%eax
 804ef05:	0f b6 00             	movzbl (%eax),%eax
 804ef08:	3c 71                	cmp    $0x71,%al
 804ef0a:	75 0e                	jne    804ef1a <.L70+0x145>
 804ef0c:	c7 45 cc 4c 00 00 00 	movl   $0x4c,-0x34(%ebp)
 804ef13:	8b 45 10             	mov    0x10(%ebp),%eax
 804ef16:	40                   	inc    %eax
 804ef17:	89 45 10             	mov    %eax,0x10(%ebp)
 804ef1a:	c7 45 e8 0a 00 00 00 	movl   $0xa,-0x18(%ebp)
 804ef21:	8b 45 10             	mov    0x10(%ebp),%eax
 804ef24:	0f b6 00             	movzbl (%eax),%eax
 804ef27:	0f be c0             	movsbl %al,%eax
 804ef2a:	83 e8 25             	sub    $0x25,%eax
 804ef2d:	83 f8 53             	cmp    $0x53,%eax
 804ef30:	0f 87 33 02 00 00    	ja     804f169 <.L85>
 804ef36:	c1 e0 02             	shl    $0x2,%eax
 804ef39:	8b 84 18 20 e6 ff ff 	mov    -0x19e0(%eax,%ebx,1),%eax
 804ef40:	01 d8                	add    %ebx,%eax
 804ef42:	ff e0                	jmp    *%eax

0804ef44 <.L90>:
 804ef44:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804ef47:	83 e0 10             	and    $0x10,%eax
 804ef4a:	85 c0                	test   %eax,%eax
 804ef4c:	75 1c                	jne    804ef6a <.L90+0x26>
 804ef4e:	eb 11                	jmp    804ef61 <.L90+0x1d>
 804ef50:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804ef53:	3b 45 e0             	cmp    -0x20(%ebp),%eax
 804ef56:	77 06                	ja     804ef5e <.L90+0x1a>
 804ef58:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804ef5b:	c6 00 20             	movb   $0x20,(%eax)
 804ef5e:	ff 45 e4             	incl   -0x1c(%ebp)
 804ef61:	ff 4d d4             	decl   -0x2c(%ebp)
 804ef64:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 804ef68:	7f e6                	jg     804ef50 <.L90+0xc>
 804ef6a:	8b 45 14             	mov    0x14(%ebp),%eax
 804ef6d:	8d 50 04             	lea    0x4(%eax),%edx
 804ef70:	89 55 14             	mov    %edx,0x14(%ebp)
 804ef73:	8b 00                	mov    (%eax),%eax
 804ef75:	88 45 cb             	mov    %al,-0x35(%ebp)
 804ef78:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804ef7b:	3b 45 e0             	cmp    -0x20(%ebp),%eax
 804ef7e:	77 09                	ja     804ef89 <.L90+0x45>
 804ef80:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804ef83:	0f b6 55 cb          	movzbl -0x35(%ebp),%edx
 804ef87:	88 10                	mov    %dl,(%eax)
 804ef89:	ff 45 e4             	incl   -0x1c(%ebp)
 804ef8c:	eb 11                	jmp    804ef9f <.L90+0x5b>
 804ef8e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804ef91:	3b 45 e0             	cmp    -0x20(%ebp),%eax
 804ef94:	77 06                	ja     804ef9c <.L90+0x58>
 804ef96:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804ef99:	c6 00 20             	movb   $0x20,(%eax)
 804ef9c:	ff 45 e4             	incl   -0x1c(%ebp)
 804ef9f:	ff 4d d4             	decl   -0x2c(%ebp)
 804efa2:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 804efa6:	7f e6                	jg     804ef8e <.L90+0x4a>
 804efa8:	e9 0d 03 00 00       	jmp    804f2ba <.L138+0x10f>

0804efad <.L95>:
 804efad:	8b 45 14             	mov    0x14(%ebp),%eax
 804efb0:	8d 50 04             	lea    0x4(%eax),%edx
 804efb3:	89 55 14             	mov    %edx,0x14(%ebp)
 804efb6:	8b 00                	mov    (%eax),%eax
 804efb8:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804efbb:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
 804efbf:	75 09                	jne    804efca <.L95+0x1d>
 804efc1:	8d 83 d5 e5 ff ff    	lea    -0x1a2b(%ebx),%eax
 804efc7:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804efca:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804efcd:	89 44 24 04          	mov    %eax,0x4(%esp)
 804efd1:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804efd4:	89 04 24             	mov    %eax,(%esp)
 804efd7:	e8 f4 ce ff ff       	call   804bed0 <strnlen>
 804efdc:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804efdf:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804efe2:	83 e0 10             	and    $0x10,%eax
 804efe5:	85 c0                	test   %eax,%eax
 804efe7:	75 21                	jne    804f00a <.L95+0x5d>
 804efe9:	eb 11                	jmp    804effc <.L95+0x4f>
 804efeb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804efee:	3b 45 e0             	cmp    -0x20(%ebp),%eax
 804eff1:	77 06                	ja     804eff9 <.L95+0x4c>
 804eff3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804eff6:	c6 00 20             	movb   $0x20,(%eax)
 804eff9:	ff 45 e4             	incl   -0x1c(%ebp)
 804effc:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804efff:	8d 50 ff             	lea    -0x1(%eax),%edx
 804f002:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 804f005:	3b 45 c4             	cmp    -0x3c(%ebp),%eax
 804f008:	7f e1                	jg     804efeb <.L95+0x3e>
 804f00a:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 804f011:	eb 1c                	jmp    804f02f <.L95+0x82>
 804f013:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f016:	3b 45 e0             	cmp    -0x20(%ebp),%eax
 804f019:	77 0b                	ja     804f026 <.L95+0x79>
 804f01b:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804f01e:	0f b6 10             	movzbl (%eax),%edx
 804f021:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f024:	88 10                	mov    %dl,(%eax)
 804f026:	ff 45 e4             	incl   -0x1c(%ebp)
 804f029:	ff 45 dc             	incl   -0x24(%ebp)
 804f02c:	ff 45 ec             	incl   -0x14(%ebp)
 804f02f:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f032:	3b 45 c4             	cmp    -0x3c(%ebp),%eax
 804f035:	7c dc                	jl     804f013 <.L95+0x66>
 804f037:	eb 11                	jmp    804f04a <.L95+0x9d>
 804f039:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f03c:	3b 45 e0             	cmp    -0x20(%ebp),%eax
 804f03f:	77 06                	ja     804f047 <.L95+0x9a>
 804f041:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f044:	c6 00 20             	movb   $0x20,(%eax)
 804f047:	ff 45 e4             	incl   -0x1c(%ebp)
 804f04a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804f04d:	8d 50 ff             	lea    -0x1(%eax),%edx
 804f050:	89 55 d4             	mov    %edx,-0x2c(%ebp)
 804f053:	3b 45 c4             	cmp    -0x3c(%ebp),%eax
 804f056:	7f e1                	jg     804f039 <.L95+0x8c>
 804f058:	e9 5d 02 00 00       	jmp    804f2ba <.L138+0x10f>

0804f05d <.L94>:
 804f05d:	83 7d d4 ff          	cmpl   $0xffffffff,-0x2c(%ebp)
 804f061:	75 0b                	jne    804f06e <.L94+0x11>
 804f063:	c7 45 d4 08 00 00 00 	movl   $0x8,-0x2c(%ebp)
 804f06a:	83 4d d8 01          	orl    $0x1,-0x28(%ebp)
 804f06e:	8b 45 14             	mov    0x14(%ebp),%eax
 804f071:	8d 50 04             	lea    0x4(%eax),%edx
 804f074:	89 55 14             	mov    %edx,0x14(%ebp)
 804f077:	8b 00                	mov    (%eax),%eax
 804f079:	ba 00 00 00 00       	mov    $0x0,%edx
 804f07e:	8b 4d d8             	mov    -0x28(%ebp),%ecx
 804f081:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
 804f085:	8b 4d d0             	mov    -0x30(%ebp),%ecx
 804f088:	89 4c 24 18          	mov    %ecx,0x18(%esp)
 804f08c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
 804f08f:	89 4c 24 14          	mov    %ecx,0x14(%esp)
 804f093:	c7 44 24 10 10 00 00 	movl   $0x10,0x10(%esp)
 804f09a:	00 
 804f09b:	89 44 24 08          	mov    %eax,0x8(%esp)
 804f09f:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804f0a3:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804f0a6:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f0aa:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f0ad:	89 04 24             	mov    %eax,(%esp)
 804f0b0:	e8 af f8 ff ff       	call   804e964 <number>
 804f0b5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804f0b8:	e9 fd 01 00 00       	jmp    804f2ba <.L138+0x10f>

0804f0bd <.L92>:
 804f0bd:	83 7d cc 6c          	cmpl   $0x6c,-0x34(%ebp)
 804f0c1:	75 20                	jne    804f0e3 <.L92+0x26>
 804f0c3:	8b 45 14             	mov    0x14(%ebp),%eax
 804f0c6:	8d 50 04             	lea    0x4(%eax),%edx
 804f0c9:	89 55 14             	mov    %edx,0x14(%ebp)
 804f0cc:	8b 00                	mov    (%eax),%eax
 804f0ce:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804f0d1:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 804f0d4:	8b 45 08             	mov    0x8(%ebp),%eax
 804f0d7:	29 c2                	sub    %eax,%edx
 804f0d9:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804f0dc:	89 10                	mov    %edx,(%eax)
 804f0de:	e9 d7 01 00 00       	jmp    804f2ba <.L138+0x10f>
 804f0e3:	83 7d cc 5a          	cmpl   $0x5a,-0x34(%ebp)
 804f0e7:	75 24                	jne    804f10d <.L92+0x50>
 804f0e9:	8b 45 14             	mov    0x14(%ebp),%eax
 804f0ec:	8d 50 04             	lea    0x4(%eax),%edx
 804f0ef:	89 55 14             	mov    %edx,0x14(%ebp)
 804f0f2:	8b 00                	mov    (%eax),%eax
 804f0f4:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804f0f7:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 804f0fa:	8b 45 08             	mov    0x8(%ebp),%eax
 804f0fd:	29 c2                	sub    %eax,%edx
 804f0ff:	89 d0                	mov    %edx,%eax
 804f101:	89 c2                	mov    %eax,%edx
 804f103:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804f106:	89 10                	mov    %edx,(%eax)
 804f108:	e9 ad 01 00 00       	jmp    804f2ba <.L138+0x10f>
 804f10d:	8b 45 14             	mov    0x14(%ebp),%eax
 804f110:	8d 50 04             	lea    0x4(%eax),%edx
 804f113:	89 55 14             	mov    %edx,0x14(%ebp)
 804f116:	8b 00                	mov    (%eax),%eax
 804f118:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804f11b:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 804f11e:	8b 45 08             	mov    0x8(%ebp),%eax
 804f121:	29 c2                	sub    %eax,%edx
 804f123:	8b 45 b8             	mov    -0x48(%ebp),%eax
 804f126:	89 10                	mov    %edx,(%eax)
 804f128:	e9 8d 01 00 00       	jmp    804f2ba <.L138+0x10f>

0804f12d <.L86>:
 804f12d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f130:	3b 45 e0             	cmp    -0x20(%ebp),%eax
 804f133:	77 06                	ja     804f13b <.L86+0xe>
 804f135:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f138:	c6 00 25             	movb   $0x25,(%eax)
 804f13b:	ff 45 e4             	incl   -0x1c(%ebp)
 804f13e:	e9 77 01 00 00       	jmp    804f2ba <.L138+0x10f>

0804f143 <.L93>:
 804f143:	c7 45 e8 08 00 00 00 	movl   $0x8,-0x18(%ebp)
 804f14a:	eb 60                	jmp    804f1ac <.L138+0x1>

0804f14c <.L89>:
 804f14c:	83 4d d8 40          	orl    $0x40,-0x28(%ebp)

0804f150 <.L97>:
 804f150:	c7 45 e8 10 00 00 00 	movl   $0x10,-0x18(%ebp)
 804f157:	eb 53                	jmp    804f1ac <.L138+0x1>

0804f159 <.L91>:
 804f159:	83 4d d8 02          	orl    $0x2,-0x28(%ebp)
 804f15d:	eb 4c                	jmp    804f1ab <.L138>

0804f15f <.L88>:
 804f15f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804f164:	e9 8c 01 00 00       	jmp    804f2f5 <.L138+0x14a>

0804f169 <.L85>:
 804f169:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f16c:	3b 45 e0             	cmp    -0x20(%ebp),%eax
 804f16f:	77 06                	ja     804f177 <.L85+0xe>
 804f171:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f174:	c6 00 25             	movb   $0x25,(%eax)
 804f177:	ff 45 e4             	incl   -0x1c(%ebp)
 804f17a:	8b 45 10             	mov    0x10(%ebp),%eax
 804f17d:	0f b6 00             	movzbl (%eax),%eax
 804f180:	84 c0                	test   %al,%al
 804f182:	74 1b                	je     804f19f <.L85+0x36>
 804f184:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f187:	3b 45 e0             	cmp    -0x20(%ebp),%eax
 804f18a:	77 0b                	ja     804f197 <.L85+0x2e>
 804f18c:	8b 45 10             	mov    0x10(%ebp),%eax
 804f18f:	0f b6 10             	movzbl (%eax),%edx
 804f192:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f195:	88 10                	mov    %dl,(%eax)
 804f197:	ff 45 e4             	incl   -0x1c(%ebp)
 804f19a:	e9 1b 01 00 00       	jmp    804f2ba <.L138+0x10f>
 804f19f:	8b 45 10             	mov    0x10(%ebp),%eax
 804f1a2:	48                   	dec    %eax
 804f1a3:	89 45 10             	mov    %eax,0x10(%ebp)
 804f1a6:	e9 0f 01 00 00       	jmp    804f2ba <.L138+0x10f>

0804f1ab <.L138>:
 804f1ab:	90                   	nop
 804f1ac:	83 7d cc 4c          	cmpl   $0x4c,-0x34(%ebp)
 804f1b0:	75 19                	jne    804f1cb <.L138+0x20>
 804f1b2:	8b 45 14             	mov    0x14(%ebp),%eax
 804f1b5:	8d 50 08             	lea    0x8(%eax),%edx
 804f1b8:	89 55 14             	mov    %edx,0x14(%ebp)
 804f1bb:	8b 50 04             	mov    0x4(%eax),%edx
 804f1be:	8b 00                	mov    (%eax),%eax
 804f1c0:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804f1c3:	89 55 f4             	mov    %edx,-0xc(%ebp)
 804f1c6:	e9 b0 00 00 00       	jmp    804f27b <.L138+0xd0>
 804f1cb:	83 7d cc 6c          	cmpl   $0x6c,-0x34(%ebp)
 804f1cf:	75 2f                	jne    804f200 <.L138+0x55>
 804f1d1:	8b 45 14             	mov    0x14(%ebp),%eax
 804f1d4:	8d 50 04             	lea    0x4(%eax),%edx
 804f1d7:	89 55 14             	mov    %edx,0x14(%ebp)
 804f1da:	8b 00                	mov    (%eax),%eax
 804f1dc:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804f1df:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804f1e6:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804f1e9:	83 e0 02             	and    $0x2,%eax
 804f1ec:	85 c0                	test   %eax,%eax
 804f1ee:	0f 84 87 00 00 00    	je     804f27b <.L138+0xd0>
 804f1f4:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804f1f7:	99                   	cltd   
 804f1f8:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804f1fb:	89 55 f4             	mov    %edx,-0xc(%ebp)
 804f1fe:	eb 7b                	jmp    804f27b <.L138+0xd0>
 804f200:	83 7d cc 5a          	cmpl   $0x5a,-0x34(%ebp)
 804f204:	75 17                	jne    804f21d <.L138+0x72>
 804f206:	8b 45 14             	mov    0x14(%ebp),%eax
 804f209:	8d 50 04             	lea    0x4(%eax),%edx
 804f20c:	89 55 14             	mov    %edx,0x14(%ebp)
 804f20f:	8b 00                	mov    (%eax),%eax
 804f211:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804f214:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804f21b:	eb 5e                	jmp    804f27b <.L138+0xd0>
 804f21d:	83 7d cc 68          	cmpl   $0x68,-0x34(%ebp)
 804f221:	75 2f                	jne    804f252 <.L138+0xa7>
 804f223:	8b 45 14             	mov    0x14(%ebp),%eax
 804f226:	8d 50 04             	lea    0x4(%eax),%edx
 804f229:	89 55 14             	mov    %edx,0x14(%ebp)
 804f22c:	8b 00                	mov    (%eax),%eax
 804f22e:	0f b7 c0             	movzwl %ax,%eax
 804f231:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804f234:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804f23b:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804f23e:	83 e0 02             	and    $0x2,%eax
 804f241:	85 c0                	test   %eax,%eax
 804f243:	74 36                	je     804f27b <.L138+0xd0>
 804f245:	0f bf 45 f0          	movswl -0x10(%ebp),%eax
 804f249:	99                   	cltd   
 804f24a:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804f24d:	89 55 f4             	mov    %edx,-0xc(%ebp)
 804f250:	eb 29                	jmp    804f27b <.L138+0xd0>
 804f252:	8b 45 14             	mov    0x14(%ebp),%eax
 804f255:	8d 50 04             	lea    0x4(%eax),%edx
 804f258:	89 55 14             	mov    %edx,0x14(%ebp)
 804f25b:	8b 00                	mov    (%eax),%eax
 804f25d:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804f260:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804f267:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804f26a:	83 e0 02             	and    $0x2,%eax
 804f26d:	85 c0                	test   %eax,%eax
 804f26f:	74 0a                	je     804f27b <.L138+0xd0>
 804f271:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804f274:	99                   	cltd   
 804f275:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804f278:	89 55 f4             	mov    %edx,-0xc(%ebp)
 804f27b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804f27e:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804f281:	8b 4d d8             	mov    -0x28(%ebp),%ecx
 804f284:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
 804f288:	8b 4d d0             	mov    -0x30(%ebp),%ecx
 804f28b:	89 4c 24 18          	mov    %ecx,0x18(%esp)
 804f28f:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
 804f292:	89 4c 24 14          	mov    %ecx,0x14(%esp)
 804f296:	8b 4d e8             	mov    -0x18(%ebp),%ecx
 804f299:	89 4c 24 10          	mov    %ecx,0x10(%esp)
 804f29d:	89 44 24 08          	mov    %eax,0x8(%esp)
 804f2a1:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804f2a5:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804f2a8:	89 44 24 04          	mov    %eax,0x4(%esp)
 804f2ac:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f2af:	89 04 24             	mov    %eax,(%esp)
 804f2b2:	e8 ad f6 ff ff       	call   804e964 <number>
 804f2b7:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804f2ba:	8b 45 10             	mov    0x10(%ebp),%eax
 804f2bd:	40                   	inc    %eax
 804f2be:	89 45 10             	mov    %eax,0x10(%ebp)
 804f2c1:	8b 45 10             	mov    0x10(%ebp),%eax
 804f2c4:	0f b6 00             	movzbl (%eax),%eax
 804f2c7:	84 c0                	test   %al,%al
 804f2c9:	0f 85 96 fa ff ff    	jne    804ed65 <vsnprintf+0x4d>
 804f2cf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f2d2:	3b 45 e0             	cmp    -0x20(%ebp),%eax
 804f2d5:	77 08                	ja     804f2df <.L138+0x134>
 804f2d7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f2da:	c6 00 00             	movb   $0x0,(%eax)
 804f2dd:	eb 0c                	jmp    804f2eb <.L138+0x140>
 804f2df:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 804f2e3:	74 06                	je     804f2eb <.L138+0x140>
 804f2e5:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804f2e8:	c6 00 00             	movb   $0x0,(%eax)
 804f2eb:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 804f2ee:	8b 45 08             	mov    0x8(%ebp),%eax
 804f2f1:	29 c2                	sub    %eax,%edx
 804f2f3:	89 d0                	mov    %edx,%eax
 804f2f5:	83 c4 64             	add    $0x64,%esp
 804f2f8:	5b                   	pop    %ebx
 804f2f9:	5d                   	pop    %ebp
 804f2fa:	c3                   	ret    

0804f2fb <__x86.get_pc_thunk.si>:
 804f2fb:	8b 34 24             	mov    (%esp),%esi
 804f2fe:	c3                   	ret    

0804f2ff <shl>:
 804f2ff:	55                   	push   %ebp
 804f300:	89 e5                	mov    %esp,%ebp
 804f302:	57                   	push   %edi
 804f303:	56                   	push   %esi
 804f304:	53                   	push   %ebx
 804f305:	83 ec 04             	sub    $0x4,%esp
 804f308:	e8 e8 c6 ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804f30d:	05 f3 3c 00 00       	add    $0x3cf3,%eax
 804f312:	8b 75 08             	mov    0x8(%ebp),%esi
 804f315:	bb 00 00 00 00       	mov    $0x0,%ebx
 804f31a:	eb 41                	jmp    804f35d <shl+0x5e>
 804f31c:	89 d8                	mov    %ebx,%eax
 804f31e:	c1 e0 02             	shl    $0x2,%eax
 804f321:	8d 3c 06             	lea    (%esi,%eax,1),%edi
 804f324:	89 d8                	mov    %ebx,%eax
 804f326:	c1 e0 02             	shl    $0x2,%eax
 804f329:	01 f0                	add    %esi,%eax
 804f32b:	8b 00                	mov    (%eax),%eax
 804f32d:	0f b6 4d 10          	movzbl 0x10(%ebp),%ecx
 804f331:	d3 e0                	shl    %cl,%eax
 804f333:	0f b7 c0             	movzwl %ax,%eax
 804f336:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804f339:	89 d8                	mov    %ebx,%eax
 804f33b:	40                   	inc    %eax
 804f33c:	c1 e0 02             	shl    $0x2,%eax
 804f33f:	01 f0                	add    %esi,%eax
 804f341:	8b 00                	mov    (%eax),%eax
 804f343:	89 c1                	mov    %eax,%ecx
 804f345:	8b 55 10             	mov    0x10(%ebp),%edx
 804f348:	b8 10 00 00 00       	mov    $0x10,%eax
 804f34d:	29 d0                	sub    %edx,%eax
 804f34f:	89 ca                	mov    %ecx,%edx
 804f351:	88 c1                	mov    %al,%cl
 804f353:	d3 ea                	shr    %cl,%edx
 804f355:	89 d0                	mov    %edx,%eax
 804f357:	0b 45 f0             	or     -0x10(%ebp),%eax
 804f35a:	89 07                	mov    %eax,(%edi)
 804f35c:	43                   	inc    %ebx
 804f35d:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 804f360:	7c ba                	jl     804f31c <shl+0x1d>
 804f362:	89 d8                	mov    %ebx,%eax
 804f364:	c1 e0 02             	shl    $0x2,%eax
 804f367:	8d 14 06             	lea    (%esi,%eax,1),%edx
 804f36a:	89 d8                	mov    %ebx,%eax
 804f36c:	c1 e0 02             	shl    $0x2,%eax
 804f36f:	01 f0                	add    %esi,%eax
 804f371:	8b 00                	mov    (%eax),%eax
 804f373:	0f b6 4d 10          	movzbl 0x10(%ebp),%ecx
 804f377:	d3 e0                	shl    %cl,%eax
 804f379:	0f b7 c0             	movzwl %ax,%eax
 804f37c:	89 02                	mov    %eax,(%edx)
 804f37e:	90                   	nop
 804f37f:	83 c4 04             	add    $0x4,%esp
 804f382:	5b                   	pop    %ebx
 804f383:	5e                   	pop    %esi
 804f384:	5f                   	pop    %edi
 804f385:	5d                   	pop    %ebp
 804f386:	c3                   	ret    

0804f387 <__qdivrem>:
 804f387:	55                   	push   %ebp
 804f388:	89 e5                	mov    %esp,%ebp
 804f38a:	57                   	push   %edi
 804f38b:	56                   	push   %esi
 804f38c:	53                   	push   %ebx
 804f38d:	81 ec b8 00 00 00    	sub    $0xb8,%esp
 804f393:	e8 5d c6 ff ff       	call   804b9f5 <__x86.get_pc_thunk.ax>
 804f398:	05 68 3c 00 00       	add    $0x3c68,%eax
 804f39d:	8b 55 08             	mov    0x8(%ebp),%edx
 804f3a0:	89 95 58 ff ff ff    	mov    %edx,-0xa8(%ebp)
 804f3a6:	8b 55 0c             	mov    0xc(%ebp),%edx
 804f3a9:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
 804f3af:	8b 55 10             	mov    0x10(%ebp),%edx
 804f3b2:	89 95 50 ff ff ff    	mov    %edx,-0xb0(%ebp)
 804f3b8:	8b 55 14             	mov    0x14(%ebp),%edx
 804f3bb:	89 95 54 ff ff ff    	mov    %edx,-0xac(%ebp)
 804f3c1:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
 804f3c7:	0b 95 50 ff ff ff    	or     -0xb0(%ebp),%edx
 804f3cd:	85 d2                	test   %edx,%edx
 804f3cf:	75 40                	jne    804f411 <__qdivrem+0x8a>
 804f3d1:	8b b8 c0 04 00 00    	mov    0x4c0(%eax),%edi
 804f3d7:	b8 01 00 00 00       	mov    $0x1,%eax
 804f3dc:	ba 00 00 00 00       	mov    $0x0,%edx
 804f3e1:	f7 f7                	div    %edi
 804f3e3:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804f3e6:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804f3e9:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804f3ec:	83 7d 18 00          	cmpl   $0x0,0x18(%ebp)
 804f3f0:	74 14                	je     804f406 <__qdivrem+0x7f>
 804f3f2:	8b 4d 18             	mov    0x18(%ebp),%ecx
 804f3f5:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
 804f3fb:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
 804f401:	89 01                	mov    %eax,(%ecx)
 804f403:	89 51 04             	mov    %edx,0x4(%ecx)
 804f406:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804f409:	8b 55 a8             	mov    -0x58(%ebp),%edx
 804f40c:	e9 eb 05 00 00       	jmp    804f9fc <__qdivrem+0x675>
 804f411:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
 804f417:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
 804f41d:	3b 95 54 ff ff ff    	cmp    -0xac(%ebp),%edx
 804f423:	77 39                	ja     804f45e <__qdivrem+0xd7>
 804f425:	3b 95 54 ff ff ff    	cmp    -0xac(%ebp),%edx
 804f42b:	72 08                	jb     804f435 <__qdivrem+0xae>
 804f42d:	3b 85 50 ff ff ff    	cmp    -0xb0(%ebp),%eax
 804f433:	73 29                	jae    804f45e <__qdivrem+0xd7>
 804f435:	83 7d 18 00          	cmpl   $0x0,0x18(%ebp)
 804f439:	74 14                	je     804f44f <__qdivrem+0xc8>
 804f43b:	8b 4d 18             	mov    0x18(%ebp),%ecx
 804f43e:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
 804f444:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
 804f44a:	89 01                	mov    %eax,(%ecx)
 804f44c:	89 51 04             	mov    %edx,0x4(%ecx)
 804f44f:	b8 00 00 00 00       	mov    $0x0,%eax
 804f454:	ba 00 00 00 00       	mov    $0x0,%edx
 804f459:	e9 9e 05 00 00       	jmp    804f9fc <__qdivrem+0x675>
 804f45e:	8d 45 90             	lea    -0x70(%ebp),%eax
 804f461:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804f464:	8d 85 7c ff ff ff    	lea    -0x84(%ebp),%eax
 804f46a:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804f46d:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
 804f473:	89 45 c4             	mov    %eax,-0x3c(%ebp)
 804f476:	8b 85 58 ff ff ff    	mov    -0xa8(%ebp),%eax
 804f47c:	8b 95 5c ff ff ff    	mov    -0xa4(%ebp),%edx
 804f482:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804f485:	89 55 a8             	mov    %edx,-0x58(%ebp)
 804f488:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f48b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804f491:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f494:	83 c0 04             	add    $0x4,%eax
 804f497:	8b 55 a8             	mov    -0x58(%ebp),%edx
 804f49a:	c1 ea 10             	shr    $0x10,%edx
 804f49d:	89 10                	mov    %edx,(%eax)
 804f49f:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f4a2:	8d 50 08             	lea    0x8(%eax),%edx
 804f4a5:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804f4a8:	0f b7 c0             	movzwl %ax,%eax
 804f4ab:	89 02                	mov    %eax,(%edx)
 804f4ad:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f4b0:	83 c0 0c             	add    $0xc,%eax
 804f4b3:	8b 55 a4             	mov    -0x5c(%ebp),%edx
 804f4b6:	c1 ea 10             	shr    $0x10,%edx
 804f4b9:	89 10                	mov    %edx,(%eax)
 804f4bb:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f4be:	8d 50 10             	lea    0x10(%eax),%edx
 804f4c1:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804f4c4:	0f b7 c0             	movzwl %ax,%eax
 804f4c7:	89 02                	mov    %eax,(%edx)
 804f4c9:	8b 85 50 ff ff ff    	mov    -0xb0(%ebp),%eax
 804f4cf:	8b 95 54 ff ff ff    	mov    -0xac(%ebp),%edx
 804f4d5:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804f4d8:	89 55 a8             	mov    %edx,-0x58(%ebp)
 804f4db:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804f4de:	83 c0 04             	add    $0x4,%eax
 804f4e1:	8b 55 a8             	mov    -0x58(%ebp),%edx
 804f4e4:	c1 ea 10             	shr    $0x10,%edx
 804f4e7:	89 10                	mov    %edx,(%eax)
 804f4e9:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804f4ec:	8d 50 08             	lea    0x8(%eax),%edx
 804f4ef:	8b 45 a8             	mov    -0x58(%ebp),%eax
 804f4f2:	0f b7 c0             	movzwl %ax,%eax
 804f4f5:	89 02                	mov    %eax,(%edx)
 804f4f7:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804f4fa:	83 c0 0c             	add    $0xc,%eax
 804f4fd:	8b 55 a4             	mov    -0x5c(%ebp),%edx
 804f500:	c1 ea 10             	shr    $0x10,%edx
 804f503:	89 10                	mov    %edx,(%eax)
 804f505:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804f508:	8d 50 10             	lea    0x10(%eax),%edx
 804f50b:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804f50e:	0f b7 c0             	movzwl %ax,%eax
 804f511:	89 02                	mov    %eax,(%edx)
 804f513:	c7 45 d4 04 00 00 00 	movl   $0x4,-0x2c(%ebp)
 804f51a:	e9 fc 00 00 00       	jmp    804f61b <__qdivrem+0x294>
 804f51f:	ff 4d d4             	decl   -0x2c(%ebp)
 804f522:	83 7d d4 01          	cmpl   $0x1,-0x2c(%ebp)
 804f526:	0f 85 eb 00 00 00    	jne    804f617 <__qdivrem+0x290>
 804f52c:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804f52f:	8b 40 08             	mov    0x8(%eax),%eax
 804f532:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804f535:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f538:	83 c0 04             	add    $0x4,%eax
 804f53b:	8b 00                	mov    (%eax),%eax
 804f53d:	ba 00 00 00 00       	mov    $0x0,%edx
 804f542:	f7 75 dc             	divl   -0x24(%ebp)
 804f545:	89 45 c0             	mov    %eax,-0x40(%ebp)
 804f548:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f54b:	83 c0 04             	add    $0x4,%eax
 804f54e:	8b 00                	mov    (%eax),%eax
 804f550:	ba 00 00 00 00       	mov    $0x0,%edx
 804f555:	f7 75 dc             	divl   -0x24(%ebp)
 804f558:	89 d0                	mov    %edx,%eax
 804f55a:	c1 e0 10             	shl    $0x10,%eax
 804f55d:	89 c2                	mov    %eax,%edx
 804f55f:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f562:	83 c0 08             	add    $0x8,%eax
 804f565:	8b 00                	mov    (%eax),%eax
 804f567:	09 d0                	or     %edx,%eax
 804f569:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804f56c:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804f56f:	ba 00 00 00 00       	mov    $0x0,%edx
 804f574:	f7 75 dc             	divl   -0x24(%ebp)
 804f577:	89 45 b8             	mov    %eax,-0x48(%ebp)
 804f57a:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804f57d:	ba 00 00 00 00       	mov    $0x0,%edx
 804f582:	f7 75 dc             	divl   -0x24(%ebp)
 804f585:	89 d0                	mov    %edx,%eax
 804f587:	c1 e0 10             	shl    $0x10,%eax
 804f58a:	89 c2                	mov    %eax,%edx
 804f58c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f58f:	83 c0 0c             	add    $0xc,%eax
 804f592:	8b 00                	mov    (%eax),%eax
 804f594:	09 d0                	or     %edx,%eax
 804f596:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804f599:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804f59c:	ba 00 00 00 00       	mov    $0x0,%edx
 804f5a1:	f7 75 dc             	divl   -0x24(%ebp)
 804f5a4:	89 45 b4             	mov    %eax,-0x4c(%ebp)
 804f5a7:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804f5aa:	ba 00 00 00 00       	mov    $0x0,%edx
 804f5af:	f7 75 dc             	divl   -0x24(%ebp)
 804f5b2:	89 d0                	mov    %edx,%eax
 804f5b4:	c1 e0 10             	shl    $0x10,%eax
 804f5b7:	89 c2                	mov    %eax,%edx
 804f5b9:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f5bc:	83 c0 10             	add    $0x10,%eax
 804f5bf:	8b 00                	mov    (%eax),%eax
 804f5c1:	09 d0                	or     %edx,%eax
 804f5c3:	89 45 bc             	mov    %eax,-0x44(%ebp)
 804f5c6:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804f5c9:	ba 00 00 00 00       	mov    $0x0,%edx
 804f5ce:	f7 75 dc             	divl   -0x24(%ebp)
 804f5d1:	89 45 b0             	mov    %eax,-0x50(%ebp)
 804f5d4:	83 7d 18 00          	cmpl   $0x0,0x18(%ebp)
 804f5d8:	74 1a                	je     804f5f4 <__qdivrem+0x26d>
 804f5da:	8b 45 bc             	mov    -0x44(%ebp),%eax
 804f5dd:	ba 00 00 00 00       	mov    $0x0,%edx
 804f5e2:	f7 75 dc             	divl   -0x24(%ebp)
 804f5e5:	89 d0                	mov    %edx,%eax
 804f5e7:	ba 00 00 00 00       	mov    $0x0,%edx
 804f5ec:	8b 4d 18             	mov    0x18(%ebp),%ecx
 804f5ef:	89 01                	mov    %eax,(%ecx)
 804f5f1:	89 51 04             	mov    %edx,0x4(%ecx)
 804f5f4:	8b 45 c0             	mov    -0x40(%ebp),%eax
 804f5f7:	c1 e0 10             	shl    $0x10,%eax
 804f5fa:	0b 45 b8             	or     -0x48(%ebp),%eax
 804f5fd:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804f600:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 804f603:	c1 e0 10             	shl    $0x10,%eax
 804f606:	0b 45 b0             	or     -0x50(%ebp),%eax
 804f609:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804f60c:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804f60f:	8b 55 a8             	mov    -0x58(%ebp),%edx
 804f612:	e9 e5 03 00 00       	jmp    804f9fc <__qdivrem+0x675>
 804f617:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 804f61b:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804f61e:	83 c0 04             	add    $0x4,%eax
 804f621:	8b 00                	mov    (%eax),%eax
 804f623:	85 c0                	test   %eax,%eax
 804f625:	0f 84 f4 fe ff ff    	je     804f51f <__qdivrem+0x198>
 804f62b:	b8 04 00 00 00       	mov    $0x4,%eax
 804f630:	2b 45 d4             	sub    -0x2c(%ebp),%eax
 804f633:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804f636:	eb 07                	jmp    804f63f <__qdivrem+0x2b8>
 804f638:	ff 4d d8             	decl   -0x28(%ebp)
 804f63b:	83 45 ec 04          	addl   $0x4,-0x14(%ebp)
 804f63f:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f642:	83 c0 04             	add    $0x4,%eax
 804f645:	8b 00                	mov    (%eax),%eax
 804f647:	85 c0                	test   %eax,%eax
 804f649:	74 ed                	je     804f638 <__qdivrem+0x2b1>
 804f64b:	b8 04 00 00 00       	mov    $0x4,%eax
 804f650:	2b 45 d8             	sub    -0x28(%ebp),%eax
 804f653:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804f656:	eb 15                	jmp    804f66d <__qdivrem+0x2e6>
 804f658:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804f65b:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804f662:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804f665:	01 d0                	add    %edx,%eax
 804f667:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804f66d:	ff 4d c8             	decl   -0x38(%ebp)
 804f670:	83 7d c8 00          	cmpl   $0x0,-0x38(%ebp)
 804f674:	79 e2                	jns    804f658 <__qdivrem+0x2d1>
 804f676:	b8 04 00 00 00       	mov    $0x4,%eax
 804f67b:	2b 45 d8             	sub    -0x28(%ebp),%eax
 804f67e:	c1 e0 02             	shl    $0x2,%eax
 804f681:	01 45 c4             	add    %eax,-0x3c(%ebp)
 804f684:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
 804f68b:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804f68e:	8b 40 04             	mov    0x4(%eax),%eax
 804f691:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804f694:	eb 06                	jmp    804f69c <__qdivrem+0x315>
 804f696:	ff 45 d0             	incl   -0x30(%ebp)
 804f699:	d1 65 dc             	shll   -0x24(%ebp)
 804f69c:	81 7d dc ff 7f 00 00 	cmpl   $0x7fff,-0x24(%ebp)
 804f6a3:	76 f1                	jbe    804f696 <__qdivrem+0x30f>
 804f6a5:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
 804f6a9:	7e 3d                	jle    804f6e8 <__qdivrem+0x361>
 804f6ab:	8b 55 d8             	mov    -0x28(%ebp),%edx
 804f6ae:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804f6b1:	01 c2                	add    %eax,%edx
 804f6b3:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804f6b6:	89 44 24 08          	mov    %eax,0x8(%esp)
 804f6ba:	89 54 24 04          	mov    %edx,0x4(%esp)
 804f6be:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f6c1:	89 04 24             	mov    %eax,(%esp)
 804f6c4:	e8 36 fc ff ff       	call   804f2ff <shl>
 804f6c9:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804f6cc:	8d 48 ff             	lea    -0x1(%eax),%ecx
 804f6cf:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804f6d2:	8d 50 04             	lea    0x4(%eax),%edx
 804f6d5:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804f6d8:	89 44 24 08          	mov    %eax,0x8(%esp)
 804f6dc:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 804f6e0:	89 14 24             	mov    %edx,(%esp)
 804f6e3:	e8 17 fc ff ff       	call   804f2ff <shl>
 804f6e8:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
 804f6ef:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804f6f2:	8b 58 04             	mov    0x4(%eax),%ebx
 804f6f5:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804f6f8:	8b 40 08             	mov    0x8(%eax),%eax
 804f6fb:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%ebp)
 804f701:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804f704:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804f70b:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f70e:	01 d0                	add    %edx,%eax
 804f710:	8b 38                	mov    (%eax),%edi
 804f712:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804f715:	40                   	inc    %eax
 804f716:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804f71d:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f720:	01 d0                	add    %edx,%eax
 804f722:	8b 30                	mov    (%eax),%esi
 804f724:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804f727:	83 c0 02             	add    $0x2,%eax
 804f72a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804f731:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f734:	01 d0                	add    %edx,%eax
 804f736:	8b 00                	mov    (%eax),%eax
 804f738:	89 c1                	mov    %eax,%ecx
 804f73a:	39 df                	cmp    %ebx,%edi
 804f73c:	75 0c                	jne    804f74a <__qdivrem+0x3c3>
 804f73e:	c7 45 e4 00 00 01 00 	movl   $0x10000,-0x1c(%ebp)
 804f745:	89 75 e0             	mov    %esi,-0x20(%ebp)
 804f748:	eb 26                	jmp    804f770 <__qdivrem+0x3e9>
 804f74a:	89 f8                	mov    %edi,%eax
 804f74c:	c1 e0 10             	shl    $0x10,%eax
 804f74f:	09 f0                	or     %esi,%eax
 804f751:	89 45 ac             	mov    %eax,-0x54(%ebp)
 804f754:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804f757:	ba 00 00 00 00       	mov    $0x0,%edx
 804f75c:	f7 f3                	div    %ebx
 804f75e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804f761:	8b 45 ac             	mov    -0x54(%ebp),%eax
 804f764:	ba 00 00 00 00       	mov    $0x0,%edx
 804f769:	f7 f3                	div    %ebx
 804f76b:	89 55 e0             	mov    %edx,-0x20(%ebp)
 804f76e:	eb 0f                	jmp    804f77f <__qdivrem+0x3f8>
 804f770:	ff 4d e4             	decl   -0x1c(%ebp)
 804f773:	01 5d e0             	add    %ebx,-0x20(%ebp)
 804f776:	81 7d e0 ff ff 00 00 	cmpl   $0xffff,-0x20(%ebp)
 804f77d:	77 1a                	ja     804f799 <__qdivrem+0x412>
 804f77f:	8b 85 4c ff ff ff    	mov    -0xb4(%ebp),%eax
 804f785:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
 804f789:	8b 55 e0             	mov    -0x20(%ebp),%edx
 804f78c:	c1 e2 10             	shl    $0x10,%edx
 804f78f:	89 cf                	mov    %ecx,%edi
 804f791:	09 fa                	or     %edi,%edx
 804f793:	39 d0                	cmp    %edx,%eax
 804f795:	77 d9                	ja     804f770 <__qdivrem+0x3e9>
 804f797:	eb 01                	jmp    804f79a <__qdivrem+0x413>
 804f799:	90                   	nop
 804f79a:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 804f7a1:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804f7a4:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804f7a7:	eb 64                	jmp    804f80d <__qdivrem+0x486>
 804f7a9:	8b 55 c8             	mov    -0x38(%ebp),%edx
 804f7ac:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804f7af:	01 d0                	add    %edx,%eax
 804f7b1:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804f7b8:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f7bb:	01 d0                	add    %edx,%eax
 804f7bd:	8b 10                	mov    (%eax),%edx
 804f7bf:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804f7c2:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
 804f7c9:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804f7cc:	01 c8                	add    %ecx,%eax
 804f7ce:	8b 00                	mov    (%eax),%eax
 804f7d0:	0f af 45 e4          	imul   -0x1c(%ebp),%eax
 804f7d4:	29 c2                	sub    %eax,%edx
 804f7d6:	89 d0                	mov    %edx,%eax
 804f7d8:	2b 45 dc             	sub    -0x24(%ebp),%eax
 804f7db:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804f7de:	8b 55 c8             	mov    -0x38(%ebp),%edx
 804f7e1:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804f7e4:	01 d0                	add    %edx,%eax
 804f7e6:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804f7ed:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f7f0:	01 c2                	add    %eax,%edx
 804f7f2:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804f7f5:	0f b7 c0             	movzwl %ax,%eax
 804f7f8:	89 02                	mov    %eax,(%edx)
 804f7fa:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804f7fd:	c1 e8 10             	shr    $0x10,%eax
 804f800:	f7 d8                	neg    %eax
 804f802:	25 ff ff 00 00       	and    $0xffff,%eax
 804f807:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804f80a:	ff 4d c8             	decl   -0x38(%ebp)
 804f80d:	83 7d c8 00          	cmpl   $0x0,-0x38(%ebp)
 804f811:	7f 96                	jg     804f7a9 <__qdivrem+0x422>
 804f813:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804f816:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804f81d:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f820:	01 d0                	add    %edx,%eax
 804f822:	8b 00                	mov    (%eax),%eax
 804f824:	2b 45 dc             	sub    -0x24(%ebp),%eax
 804f827:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804f82a:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804f82d:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804f834:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f837:	01 c2                	add    %eax,%edx
 804f839:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804f83c:	0f b7 c0             	movzwl %ax,%eax
 804f83f:	89 02                	mov    %eax,(%edx)
 804f841:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804f844:	c1 e8 10             	shr    $0x10,%eax
 804f847:	85 c0                	test   %eax,%eax
 804f849:	0f 84 91 00 00 00    	je     804f8e0 <__qdivrem+0x559>
 804f84f:	ff 4d e4             	decl   -0x1c(%ebp)
 804f852:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 804f859:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804f85c:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804f85f:	eb 4f                	jmp    804f8b0 <__qdivrem+0x529>
 804f861:	8b 55 c8             	mov    -0x38(%ebp),%edx
 804f864:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804f867:	01 d0                	add    %edx,%eax
 804f869:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804f870:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f873:	01 d0                	add    %edx,%eax
 804f875:	8b 10                	mov    (%eax),%edx
 804f877:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804f87a:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
 804f881:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804f884:	01 c8                	add    %ecx,%eax
 804f886:	8b 00                	mov    (%eax),%eax
 804f888:	01 d0                	add    %edx,%eax
 804f88a:	01 45 dc             	add    %eax,-0x24(%ebp)
 804f88d:	8b 55 c8             	mov    -0x38(%ebp),%edx
 804f890:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804f893:	01 d0                	add    %edx,%eax
 804f895:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804f89c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f89f:	01 c2                	add    %eax,%edx
 804f8a1:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804f8a4:	0f b7 c0             	movzwl %ax,%eax
 804f8a7:	89 02                	mov    %eax,(%edx)
 804f8a9:	c1 6d dc 10          	shrl   $0x10,-0x24(%ebp)
 804f8ad:	ff 4d c8             	decl   -0x38(%ebp)
 804f8b0:	83 7d c8 00          	cmpl   $0x0,-0x38(%ebp)
 804f8b4:	7f ab                	jg     804f861 <__qdivrem+0x4da>
 804f8b6:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804f8b9:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804f8c0:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f8c3:	01 c2                	add    %eax,%edx
 804f8c5:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804f8c8:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
 804f8cf:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f8d2:	01 c8                	add    %ecx,%eax
 804f8d4:	8b 08                	mov    (%eax),%ecx
 804f8d6:	8b 45 dc             	mov    -0x24(%ebp),%eax
 804f8d9:	01 c8                	add    %ecx,%eax
 804f8db:	0f b7 c0             	movzwl %ax,%eax
 804f8de:	89 02                	mov    %eax,(%edx)
 804f8e0:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804f8e3:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804f8ea:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 804f8ed:	01 c2                	add    %eax,%edx
 804f8ef:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804f8f2:	89 02                	mov    %eax,(%edx)
 804f8f4:	ff 45 cc             	incl   -0x34(%ebp)
 804f8f7:	8b 45 cc             	mov    -0x34(%ebp),%eax
 804f8fa:	3b 45 d8             	cmp    -0x28(%ebp),%eax
 804f8fd:	0f 8e fe fd ff ff    	jle    804f701 <__qdivrem+0x37a>
 804f903:	83 7d 18 00          	cmpl   $0x0,0x18(%ebp)
 804f907:	0f 84 bd 00 00 00    	je     804f9ca <__qdivrem+0x643>
 804f90d:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
 804f911:	0f 84 85 00 00 00    	je     804f99c <__qdivrem+0x615>
 804f917:	8b 55 d8             	mov    -0x28(%ebp),%edx
 804f91a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804f91d:	01 d0                	add    %edx,%eax
 804f91f:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804f922:	eb 5b                	jmp    804f97f <__qdivrem+0x5f8>
 804f924:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804f927:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804f92e:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f931:	01 c2                	add    %eax,%edx
 804f933:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804f936:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
 804f93d:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f940:	01 c8                	add    %ecx,%eax
 804f942:	8b 18                	mov    (%eax),%ebx
 804f944:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804f947:	89 de                	mov    %ebx,%esi
 804f949:	88 c1                	mov    %al,%cl
 804f94b:	d3 ee                	shr    %cl,%esi
 804f94d:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804f950:	05 ff ff ff 3f       	add    $0x3fffffff,%eax
 804f955:	8d 0c 85 00 00 00 00 	lea    0x0(,%eax,4),%ecx
 804f95c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f95f:	01 c8                	add    %ecx,%eax
 804f961:	8b 18                	mov    (%eax),%ebx
 804f963:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804f966:	b9 10 00 00 00       	mov    $0x10,%ecx
 804f96b:	29 c1                	sub    %eax,%ecx
 804f96d:	89 c8                	mov    %ecx,%eax
 804f96f:	88 c1                	mov    %al,%cl
 804f971:	d3 e3                	shl    %cl,%ebx
 804f973:	89 d8                	mov    %ebx,%eax
 804f975:	0f b7 c0             	movzwl %ax,%eax
 804f978:	09 f0                	or     %esi,%eax
 804f97a:	89 02                	mov    %eax,(%edx)
 804f97c:	ff 4d c8             	decl   -0x38(%ebp)
 804f97f:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804f982:	3b 45 d8             	cmp    -0x28(%ebp),%eax
 804f985:	7f 9d                	jg     804f924 <__qdivrem+0x59d>
 804f987:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804f98a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 804f991:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804f994:	01 d0                	add    %edx,%eax
 804f996:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 804f99c:	8b 45 94             	mov    -0x6c(%ebp),%eax
 804f99f:	c1 e0 10             	shl    $0x10,%eax
 804f9a2:	89 c2                	mov    %eax,%edx
 804f9a4:	8b 45 98             	mov    -0x68(%ebp),%eax
 804f9a7:	09 d0                	or     %edx,%eax
 804f9a9:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804f9ac:	8b 45 9c             	mov    -0x64(%ebp),%eax
 804f9af:	c1 e0 10             	shl    $0x10,%eax
 804f9b2:	89 c2                	mov    %eax,%edx
 804f9b4:	8b 45 a0             	mov    -0x60(%ebp),%eax
 804f9b7:	09 d0                	or     %edx,%eax
 804f9b9:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804f9bc:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804f9bf:	8b 55 a8             	mov    -0x58(%ebp),%edx
 804f9c2:	8b 4d 18             	mov    0x18(%ebp),%ecx
 804f9c5:	89 01                	mov    %eax,(%ecx)
 804f9c7:	89 51 04             	mov    %edx,0x4(%ecx)
 804f9ca:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
 804f9d0:	c1 e0 10             	shl    $0x10,%eax
 804f9d3:	89 c2                	mov    %eax,%edx
 804f9d5:	8b 85 70 ff ff ff    	mov    -0x90(%ebp),%eax
 804f9db:	09 d0                	or     %edx,%eax
 804f9dd:	89 45 a8             	mov    %eax,-0x58(%ebp)
 804f9e0:	8b 85 74 ff ff ff    	mov    -0x8c(%ebp),%eax
 804f9e6:	c1 e0 10             	shl    $0x10,%eax
 804f9e9:	89 c2                	mov    %eax,%edx
 804f9eb:	8b 85 78 ff ff ff    	mov    -0x88(%ebp),%eax
 804f9f1:	09 d0                	or     %edx,%eax
 804f9f3:	89 45 a4             	mov    %eax,-0x5c(%ebp)
 804f9f6:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 804f9f9:	8b 55 a8             	mov    -0x58(%ebp),%edx
 804f9fc:	81 c4 b8 00 00 00    	add    $0xb8,%esp
 804fa02:	5b                   	pop    %ebx
 804fa03:	5e                   	pop    %esi
 804fa04:	5f                   	pop    %edi
 804fa05:	5d                   	pop    %ebp
 804fa06:	c3                   	ret    

0804fa07 <__divdi3>:
 804fa07:	55                   	push   %ebp
 804fa08:	89 e5                	mov    %esp,%ebp
 804fa0a:	53                   	push   %ebx
 804fa0b:	83 ec 54             	sub    $0x54,%esp
 804fa0e:	e8 e6 bf ff ff       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804fa13:	81 c1 ed 35 00 00    	add    $0x35ed,%ecx
 804fa19:	8b 45 08             	mov    0x8(%ebp),%eax
 804fa1c:	89 45 d0             	mov    %eax,-0x30(%ebp)
 804fa1f:	8b 45 0c             	mov    0xc(%ebp),%eax
 804fa22:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 804fa25:	8b 45 10             	mov    0x10(%ebp),%eax
 804fa28:	89 45 c8             	mov    %eax,-0x38(%ebp)
 804fa2b:	8b 45 14             	mov    0x14(%ebp),%eax
 804fa2e:	89 45 cc             	mov    %eax,-0x34(%ebp)
 804fa31:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
 804fa35:	79 1c                	jns    804fa53 <__divdi3+0x4c>
 804fa37:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804fa3a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 804fa3d:	f7 d8                	neg    %eax
 804fa3f:	83 d2 00             	adc    $0x0,%edx
 804fa42:	f7 da                	neg    %edx
 804fa44:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804fa47:	89 55 f4             	mov    %edx,-0xc(%ebp)
 804fa4a:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
 804fa51:	eb 13                	jmp    804fa66 <__divdi3+0x5f>
 804fa53:	8b 45 d0             	mov    -0x30(%ebp),%eax
 804fa56:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 804fa59:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804fa5c:	89 55 f4             	mov    %edx,-0xc(%ebp)
 804fa5f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 804fa66:	83 7d cc 00          	cmpl   $0x0,-0x34(%ebp)
 804fa6a:	79 19                	jns    804fa85 <__divdi3+0x7e>
 804fa6c:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804fa6f:	8b 55 cc             	mov    -0x34(%ebp),%edx
 804fa72:	f7 d8                	neg    %eax
 804fa74:	83 d2 00             	adc    $0x0,%edx
 804fa77:	f7 da                	neg    %edx
 804fa79:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804fa7c:	89 55 ec             	mov    %edx,-0x14(%ebp)
 804fa7f:	83 75 e4 01          	xorl   $0x1,-0x1c(%ebp)
 804fa83:	eb 0c                	jmp    804fa91 <__divdi3+0x8a>
 804fa85:	8b 45 c8             	mov    -0x38(%ebp),%eax
 804fa88:	8b 55 cc             	mov    -0x34(%ebp),%edx
 804fa8b:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804fa8e:	89 55 ec             	mov    %edx,-0x14(%ebp)
 804fa91:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 804fa98:	00 
 804fa99:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804fa9c:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804fa9f:	89 44 24 08          	mov    %eax,0x8(%esp)
 804faa3:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804faa7:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804faaa:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804faad:	89 04 24             	mov    %eax,(%esp)
 804fab0:	89 54 24 04          	mov    %edx,0x4(%esp)
 804fab4:	89 cb                	mov    %ecx,%ebx
 804fab6:	e8 cc f8 ff ff       	call   804f387 <__qdivrem>
 804fabb:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804fabe:	89 55 dc             	mov    %edx,-0x24(%ebp)
 804fac1:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
 804fac5:	74 0f                	je     804fad6 <__divdi3+0xcf>
 804fac7:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804faca:	8b 55 dc             	mov    -0x24(%ebp),%edx
 804facd:	f7 d8                	neg    %eax
 804facf:	83 d2 00             	adc    $0x0,%edx
 804fad2:	f7 da                	neg    %edx
 804fad4:	eb 06                	jmp    804fadc <__divdi3+0xd5>
 804fad6:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804fad9:	8b 55 dc             	mov    -0x24(%ebp),%edx
 804fadc:	83 c4 54             	add    $0x54,%esp
 804fadf:	5b                   	pop    %ebx
 804fae0:	5d                   	pop    %ebp
 804fae1:	c3                   	ret    

0804fae2 <__udivdi3>:
 804fae2:	55                   	push   %ebp
 804fae3:	89 e5                	mov    %esp,%ebp
 804fae5:	53                   	push   %ebx
 804fae6:	83 ec 34             	sub    $0x34,%esp
 804fae9:	e8 0b bf ff ff       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804faee:	81 c1 12 35 00 00    	add    $0x3512,%ecx
 804faf4:	8b 45 08             	mov    0x8(%ebp),%eax
 804faf7:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804fafa:	8b 45 0c             	mov    0xc(%ebp),%eax
 804fafd:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804fb00:	8b 45 10             	mov    0x10(%ebp),%eax
 804fb03:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804fb06:	8b 45 14             	mov    0x14(%ebp),%eax
 804fb09:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804fb0c:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
 804fb13:	00 
 804fb14:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804fb17:	8b 55 ec             	mov    -0x14(%ebp),%edx
 804fb1a:	89 44 24 08          	mov    %eax,0x8(%esp)
 804fb1e:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804fb22:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804fb25:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804fb28:	89 04 24             	mov    %eax,(%esp)
 804fb2b:	89 54 24 04          	mov    %edx,0x4(%esp)
 804fb2f:	89 cb                	mov    %ecx,%ebx
 804fb31:	e8 51 f8 ff ff       	call   804f387 <__qdivrem>
 804fb36:	83 c4 34             	add    $0x34,%esp
 804fb39:	5b                   	pop    %ebx
 804fb3a:	5d                   	pop    %ebp
 804fb3b:	c3                   	ret    

0804fb3c <__umoddi3>:
 804fb3c:	55                   	push   %ebp
 804fb3d:	89 e5                	mov    %esp,%ebp
 804fb3f:	53                   	push   %ebx
 804fb40:	83 ec 44             	sub    $0x44,%esp
 804fb43:	e8 b1 be ff ff       	call   804b9f9 <__x86.get_pc_thunk.cx>
 804fb48:	81 c1 b8 34 00 00    	add    $0x34b8,%ecx
 804fb4e:	8b 45 08             	mov    0x8(%ebp),%eax
 804fb51:	89 45 e0             	mov    %eax,-0x20(%ebp)
 804fb54:	8b 45 0c             	mov    0xc(%ebp),%eax
 804fb57:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 804fb5a:	8b 45 10             	mov    0x10(%ebp),%eax
 804fb5d:	89 45 d8             	mov    %eax,-0x28(%ebp)
 804fb60:	8b 45 14             	mov    0x14(%ebp),%eax
 804fb63:	89 45 dc             	mov    %eax,-0x24(%ebp)
 804fb66:	8d 45 f0             	lea    -0x10(%ebp),%eax
 804fb69:	89 44 24 10          	mov    %eax,0x10(%esp)
 804fb6d:	8b 45 d8             	mov    -0x28(%ebp),%eax
 804fb70:	8b 55 dc             	mov    -0x24(%ebp),%edx
 804fb73:	89 44 24 08          	mov    %eax,0x8(%esp)
 804fb77:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804fb7b:	8b 45 e0             	mov    -0x20(%ebp),%eax
 804fb7e:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 804fb81:	89 04 24             	mov    %eax,(%esp)
 804fb84:	89 54 24 04          	mov    %edx,0x4(%esp)
 804fb88:	89 cb                	mov    %ecx,%ebx
 804fb8a:	e8 f8 f7 ff ff       	call   804f387 <__qdivrem>
 804fb8f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804fb92:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804fb95:	83 c4 44             	add    $0x44,%esp
 804fb98:	5b                   	pop    %ebx
 804fb99:	5d                   	pop    %ebp
 804fb9a:	c3                   	ret    
