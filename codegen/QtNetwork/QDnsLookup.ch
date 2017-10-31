/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
enum QDnsLookup::Error
*/
#define QDnsLookup_NoError                                           0
#define QDnsLookup_ResolverError                                     1
#define QDnsLookup_OperationCancelledError                           2
#define QDnsLookup_InvalidRequestError                               3
#define QDnsLookup_InvalidReplyError                                 4
#define QDnsLookup_ServerFailureError                                5
#define QDnsLookup_ServerRefusedError                                6
#define QDnsLookup_NotFoundError                                     7

/*
enum QDnsLookup::Type
*/
#define QDnsLookup_A                                                 1
#define QDnsLookup_AAAA                                              28
#define QDnsLookup_ANY                                               255
#define QDnsLookup_CNAME                                             5
#define QDnsLookup_MX                                                15
#define QDnsLookup_NS                                                2
#define QDnsLookup_PTR                                               12
#define QDnsLookup_SRV                                               33
#define QDnsLookup_TXT                                               16
