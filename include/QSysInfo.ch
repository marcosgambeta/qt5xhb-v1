/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

/*
enum QSysInfo::Endian
*/
#define QSysInfo_BigEndian                                           0
#define QSysInfo_LittleEndian                                        1
#define QSysInfo_ByteOrder                                           <platform-dependent>

/*
enum QSysInfo::WinVersion
*/
#define QSysInfo_WV_32s                                              0x0001
#define QSysInfo_WV_95                                               0x0002
#define QSysInfo_WV_98                                               0x0003
#define QSysInfo_WV_Me                                               0x0004
#define QSysInfo_WV_DOS_based                                        0x000f
#define QSysInfo_WV_NT                                               0x0010
#define QSysInfo_WV_2000                                             0x0020
#define QSysInfo_WV_XP                                               0x0030
#define QSysInfo_WV_2003                                             0x0040
#define QSysInfo_WV_VISTA                                            0x0080
#define QSysInfo_WV_WINDOWS7                                         0x0090
#define QSysInfo_WV_WINDOWS8                                         0x00a0
#define QSysInfo_WV_WINDOWS8_1                                       0x00b0
#define QSysInfo_WV_NT_based                                         0x00f0
#define QSysInfo_WV_4_0                                              QSysInfo_WV_NT
#define QSysInfo_WV_5_0                                              QSysInfo_WV_2000
#define QSysInfo_WV_5_1                                              QSysInfo_WV_XP
#define QSysInfo_WV_5_2                                              QSysInfo_WV_2003
#define QSysInfo_WV_6_0                                              QSysInfo_WV_VISTA
#define QSysInfo_WV_6_1                                              QSysInfo_WV_WINDOWS7
#define QSysInfo_WV_6_2                                              QSysInfo_WV_WINDOWS8
#define QSysInfo_WV_6_3                                              QSysInfo_WV_WINDOWS8_1
#define QSysInfo_WV_CE                                               0x0100
#define QSysInfo_WV_CENET                                            0x0200
#define QSysInfo_WV_CE_5                                             0x0300
#define QSysInfo_WV_CE_6                                             0x0400
#define QSysInfo_WV_CE_based                                         0x0f00

/*
enum QSysInfo::MacVersion
*/
#define QSysInfo_MV_Unknown                                          0x0000
#define QSysInfo_MV_9                                                0x0001
#define QSysInfo_MV_10_0                                             0x0002
#define QSysInfo_MV_10_1                                             0x0003
#define QSysInfo_MV_10_2                                             0x0004
#define QSysInfo_MV_10_3                                             0x0005
#define QSysInfo_MV_10_4                                             0x0006
#define QSysInfo_MV_10_5                                             0x0007
#define QSysInfo_MV_10_6                                             0x0008
#define QSysInfo_MV_10_7                                             0x0009
#define QSysInfo_MV_10_8                                             0x000A
#define QSysInfo_MV_10_9                                             0x000B
#define QSysInfo_MV_CHEETAH                                          QSysInfo_MV_10_0
#define QSysInfo_MV_PUMA                                             QSysInfo_MV_10_1
#define QSysInfo_MV_JAGUAR                                           QSysInfo_MV_10_2
#define QSysInfo_MV_PANTHER                                          QSysInfo_MV_10_3
#define QSysInfo_MV_TIGER                                            QSysInfo_MV_10_4
#define QSysInfo_MV_LEOPARD                                          QSysInfo_MV_10_5
#define QSysInfo_MV_SNOWLEOPARD                                      QSysInfo_MV_10_6
#define QSysInfo_MV_LION                                             QSysInfo_MV_10_7
#define QSysInfo_MV_MOUNTAINLION                                     QSysInfo_MV_10_8
#define QSysInfo_MV_MAVERICKS                                        QSysInfo_MV_10_9
#define QSysInfo_MV_IOS                                              1 << 8 // TODO: compatibilizar com Harbour
#define QSysInfo_MV_IOS_4_3                                          Q_MV_IOS(4, 3) // TODO: implementar Q_MV_IOS(n,n)
#define QSysInfo_MV_IOS_5_0                                          Q_MV_IOS(5, 0)
#define QSysInfo_MV_IOS_5_1                                          Q_MV_IOS(5, 1)
#define QSysInfo_MV_IOS_6_0                                          Q_MV_IOS(6, 0)
#define QSysInfo_MV_IOS_6_1                                          Q_MV_IOS(6, 1)
#define QSysInfo_MV_IOS_7_0                                          Q_MV_IOS(7, 0)
#define QSysInfo_MV_IOS_7_1                                          Q_MV_IOS(7, 1)

/*
enum QSysInfo::Sizes
*/
#define QSysInfo_WordSize                                            ( sizeof( void * ) <<3 ) // TODO: implementar (se possível)
