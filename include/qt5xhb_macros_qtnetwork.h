/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTNETWORK_H
#define QT5XHB_MACROS_QTNETWORK_H

#define ISQABSTRACTNETWORKCACHE( n )                        Qt5xHb::isObjectDerivedFrom( n, "QAbstractNetworkCache" )
#define ISQABSTRACTSOCKET( n )                              Qt5xHb::isObjectDerivedFrom( n, "QAbstractSocket" )
#define ISQAUTHENTICATOR( n )                               Qt5xHb::isObjectDerivedFrom( n, "QAuthenticator" )
#define ISQDNSDOMAINNAMERECORD( n )                         Qt5xHb::isObjectDerivedFrom( n, "QDnsDomainNameRecord" )
#define ISQDNSHOSTADDRESSRECORD( n )                        Qt5xHb::isObjectDerivedFrom( n, "QDnsHostAddressRecord" )
#define ISQDNSLOOKUP( n )                                   Qt5xHb::isObjectDerivedFrom( n, "QDnsLookup" )
#define ISQDNSMAILEXCHANGERECORD( n )                       Qt5xHb::isObjectDerivedFrom( n, "QDnsMailExchangeRecord" )
#define ISQDNSSERVICERECORD( n )                            Qt5xHb::isObjectDerivedFrom( n, "QDnsServiceRecord" )
#define ISQDNSTEXTRECORD( n )                               Qt5xHb::isObjectDerivedFrom( n, "QDnsTextRecord" )
#define ISQHOSTADDRESS( n )                                 Qt5xHb::isObjectDerivedFrom( n, "QHostAddress" )
#define ISQHOSTINFO( n )                                    Qt5xHb::isObjectDerivedFrom( n, "QHostInfo" )
#define ISQHSTSPOLICY( n )                                  Qt5xHb::isObjectDerivedFrom( n, "QHstsPolicy" )
#define ISQHTTPMULTIPART( n )                               Qt5xHb::isObjectDerivedFrom( n, "QHttpMultiPart" )
#define ISQHTTPPART( n )                                    Qt5xHb::isObjectDerivedFrom( n, "QHttpPart" )
#define ISQLOCALSERVER( n )                                 Qt5xHb::isObjectDerivedFrom( n, "QLocalServer" )
#define ISQLOCALSOCKET( n )                                 Qt5xHb::isObjectDerivedFrom( n, "QLocalSocket" )
#define ISQNETWORKACCESSMANAGER( n )                        Qt5xHb::isObjectDerivedFrom( n, "QNetworkAccessManager" )
#define ISQNETWORKADDRESSENTRY( n )                         Qt5xHb::isObjectDerivedFrom( n, "QNetworkAddressEntry" )
#define ISQNETWORKCACHEMETADATA( n )                        Qt5xHb::isObjectDerivedFrom( n, "QNetworkCacheMetaData" )
#define ISQNETWORKCONFIGURATION( n )                        Qt5xHb::isObjectDerivedFrom( n, "QNetworkConfiguration" )
#define ISQNETWORKCONFIGURATIONMANAGER( n )                 Qt5xHb::isObjectDerivedFrom( n, "QNetworkConfigurationManager" )
#define ISQNETWORKCOOKIE( n )                               Qt5xHb::isObjectDerivedFrom( n, "QNetworkCookie" )
#define ISQNETWORKCOOKIEJAR( n )                            Qt5xHb::isObjectDerivedFrom( n, "QNetworkCookieJar" )
#define ISQNETWORKDATAGRAM( n )                             Qt5xHb::isObjectDerivedFrom( n, "QNetworkDatagram" )
#define ISQNETWORKDISKCACHE( n )                            Qt5xHb::isObjectDerivedFrom( n, "QNetworkDiskCache" )
#define ISQNETWORKINTERFACE( n )                            Qt5xHb::isObjectDerivedFrom( n, "QNetworkInterface" )
#define ISQNETWORKPROXY( n )                                Qt5xHb::isObjectDerivedFrom( n, "QNetworkProxy" )
#define ISQNETWORKPROXYFACTORY( n )                         Qt5xHb::isObjectDerivedFrom( n, "QNetworkProxyFactory" )
#define ISQNETWORKPROXYQUERY( n )                           Qt5xHb::isObjectDerivedFrom( n, "QNetworkProxyQuery" )
#define ISQNETWORKREPLY( n )                                Qt5xHb::isObjectDerivedFrom( n, "QNetworkReply" )
#define ISQNETWORKREQUEST( n )                              Qt5xHb::isObjectDerivedFrom( n, "QNetworkRequest" )
#define ISQNETWORKSESSION( n )                              Qt5xHb::isObjectDerivedFrom( n, "QNetworkSession" )
#define ISQSCTPSERVER( n )                                  Qt5xHb::isObjectDerivedFrom( n, "QSctpServer" )
#define ISQSCTPSOCKET( n )                                  Qt5xHb::isObjectDerivedFrom( n, "QSctpSocket" )
#define ISQSSLCERTIFICATE( n )                              Qt5xHb::isObjectDerivedFrom( n, "QSslCertificate" )
#define ISQSSLCERTIFICATEEXTENSION( n )                     Qt5xHb::isObjectDerivedFrom( n, "QSslCertificateExtension" )
#define ISQSSLCIPHER( n )                                   Qt5xHb::isObjectDerivedFrom( n, "QSslCipher" )
#define ISQSSLCONFIGURATION( n )                            Qt5xHb::isObjectDerivedFrom( n, "QSslConfiguration" )
#define ISQSSLERROR( n )                                    Qt5xHb::isObjectDerivedFrom( n, "QSslError" )
#define ISQSSLKEY( n )                                      Qt5xHb::isObjectDerivedFrom( n, "QSslKey" )
#define ISQSSLSOCKET( n )                                   Qt5xHb::isObjectDerivedFrom( n, "QSslSocket" )
#define ISQTCPSERVER( n )                                   Qt5xHb::isObjectDerivedFrom( n, "QTcpServer" )
#define ISQTCPSOCKET( n )                                   Qt5xHb::isObjectDerivedFrom( n, "QTcpSocket" )
#define ISQUDPSOCKET( n )                                   Qt5xHb::isObjectDerivedFrom( n, "QUdpSocket" )

#define PQABSTRACTNETWORKCACHE( n )                         static_cast< QAbstractNetworkCache * >( Qt5xHb::itemGetPtr( n ) )
#define PQABSTRACTSOCKET( n )                               static_cast< QAbstractSocket * >( Qt5xHb::itemGetPtr( n ) )
#define PQAUTHENTICATOR( n )                                static_cast< QAuthenticator * >( Qt5xHb::itemGetPtr( n ) )
#define PQDNSDOMAINNAMERECORD( n )                          static_cast< QDnsDomainNameRecord * >( Qt5xHb::itemGetPtr( n ) )
#define PQDNSHOSTADDRESSRECORD( n )                         static_cast< QDnsHostAddressRecord * >( Qt5xHb::itemGetPtr( n ) )
#define PQDNSLOOKUP( n )                                    static_cast< QDnsLookup * >( Qt5xHb::itemGetPtr( n ) )
#define PQDNSMAILEXCHANGERECORD( n )                        static_cast< QDnsMailExchangeRecord * >( Qt5xHb::itemGetPtr( n ) )
#define PQDNSSERVICERECORD( n )                             static_cast< QDnsServiceRecord * >( Qt5xHb::itemGetPtr( n ) )
#define PQDNSTEXTRECORD( n )                                static_cast< QDnsTextRecord * >( Qt5xHb::itemGetPtr( n ) )
#define PQHOSTADDRESS( n )                                  static_cast< QHostAddress * >( Qt5xHb::itemGetPtr( n ) )
#define PQHOSTINFO( n )                                     static_cast< QHostInfo * >( Qt5xHb::itemGetPtr( n ) )
#define PQHSTSPOLICY( n )                                   static_cast< QHstsPolicy * >( Qt5xHb::itemGetPtr( n ) )
#define PQHTTPMULTIPART( n )                                static_cast< QHttpMultiPart * >( Qt5xHb::itemGetPtr( n ) )
#define PQHTTPPART( n )                                     static_cast< QHttpPart * >( Qt5xHb::itemGetPtr( n ) )
#define PQLOCALSERVER( n )                                  static_cast< QLocalServer * >( Qt5xHb::itemGetPtr( n ) )
#define PQLOCALSOCKET( n )                                  static_cast< QLocalSocket * >( Qt5xHb::itemGetPtr( n ) )
#define PQNETWORKACCESSMANAGER( n )                         static_cast< QNetworkAccessManager * >( Qt5xHb::itemGetPtr( n ) )
#define PQNETWORKADDRESSENTRY( n )                          static_cast< QNetworkAddressEntry * >( Qt5xHb::itemGetPtr( n ) )
#define PQNETWORKCACHEMETADATA( n )                         static_cast< QNetworkCacheMetaData * >( Qt5xHb::itemGetPtr( n ) )
#define PQNETWORKCONFIGURATION( n )                         static_cast< QNetworkConfiguration * >( Qt5xHb::itemGetPtr( n ) )
#define PQNETWORKCONFIGURATIONMANAGER( n )                  static_cast< QNetworkConfigurationManager * >( Qt5xHb::itemGetPtr( n ) )
#define PQNETWORKCOOKIE( n )                                static_cast< QNetworkCookie * >( Qt5xHb::itemGetPtr( n ) )
#define PQNETWORKCOOKIEJAR( n )                             static_cast< QNetworkCookieJar * >( Qt5xHb::itemGetPtr( n ) )
#define PQNETWORKDATAGRAM( n )                              static_cast< QNetworkDatagram * >( Qt5xHb::itemGetPtr( n ) )
#define PQNETWORKDISKCACHE( n )                             static_cast< QNetworkDiskCache * >( Qt5xHb::itemGetPtr( n ) )
#define PQNETWORKINTERFACE( n )                             static_cast< QNetworkInterface * >( Qt5xHb::itemGetPtr( n ) )
#define PQNETWORKPROXY( n )                                 static_cast< QNetworkProxy * >( Qt5xHb::itemGetPtr( n ) )
#define PQNETWORKPROXYFACTORY( n )                          static_cast< QNetworkProxyFactory * >( Qt5xHb::itemGetPtr( n ) )
#define PQNETWORKPROXYQUERY( n )                            static_cast< QNetworkProxyQuery * >( Qt5xHb::itemGetPtr( n ) )
#define PQNETWORKREPLY( n )                                 static_cast< QNetworkReply * >( Qt5xHb::itemGetPtr( n ) )
#define PQNETWORKREQUEST( n )                               static_cast< QNetworkRequest * >( Qt5xHb::itemGetPtr( n ) )
#define PQNETWORKSESSION( n )                               static_cast< QNetworkSession * >( Qt5xHb::itemGetPtr( n ) )
#define PQSCTPSERVER( n )                                   static_cast< QSctpServer * >( Qt5xHb::itemGetPtr( n ) )
#define PQSCTPSOCKET( n )                                   static_cast< QSctpSocket * >( Qt5xHb::itemGetPtr( n ) )
#define PQSSLCERTIFICATE( n )                               static_cast< QSslCertificate * >( Qt5xHb::itemGetPtr( n ) )
#define PQSSLCERTIFICATEEXTENSION( n )                      static_cast< QSslCertificateExtension * >( Qt5xHb::itemGetPtr( n ) )
#define PQSSLCIPHER( n )                                    static_cast< QSslCipher * >( Qt5xHb::itemGetPtr( n ) )
#define PQSSLCONFIGURATION( n )                             static_cast< QSslConfiguration * >( Qt5xHb::itemGetPtr( n ) )
#define PQSSLERROR( n )                                     static_cast< QSslError * >( Qt5xHb::itemGetPtr( n ) )
#define PQSSLKEY( n )                                       static_cast< QSslKey * >( Qt5xHb::itemGetPtr( n ) )
#define PQSSLSOCKET( n )                                    static_cast< QSslSocket * >( Qt5xHb::itemGetPtr( n ) )
#define PQTCPSERVER( n )                                    static_cast< QTcpServer * >( Qt5xHb::itemGetPtr( n ) )
#define PQTCPSOCKET( n )                                    static_cast< QTcpSocket * >( Qt5xHb::itemGetPtr( n ) )
#define PQUDPSOCKET( n )                                    static_cast< QUdpSocket * >( Qt5xHb::itemGetPtr( n ) )

#define OPQABSTRACTNETWORKCACHE( n, v )                     HB_ISNIL( n ) ? v : static_cast< QAbstractNetworkCache * >( Qt5xHb::itemGetPtr( n ) )
#define OPQABSTRACTSOCKET( n, v )                           HB_ISNIL( n ) ? v : static_cast< QAbstractSocket * >( Qt5xHb::itemGetPtr( n ) )
#define OPQAUTHENTICATOR( n, v )                            HB_ISNIL( n ) ? v : static_cast< QAuthenticator * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDNSDOMAINNAMERECORD( n, v )                      HB_ISNIL( n ) ? v : static_cast< QDnsDomainNameRecord * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDNSHOSTADDRESSRECORD( n, v )                     HB_ISNIL( n ) ? v : static_cast< QDnsHostAddressRecord * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDNSLOOKUP( n, v )                                HB_ISNIL( n ) ? v : static_cast< QDnsLookup * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDNSMAILEXCHANGERECORD( n, v )                    HB_ISNIL( n ) ? v : static_cast< QDnsMailExchangeRecord * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDNSSERVICERECORD( n, v )                         HB_ISNIL( n ) ? v : static_cast< QDnsServiceRecord * >( Qt5xHb::itemGetPtr( n ) )
#define OPQDNSTEXTRECORD( n, v )                            HB_ISNIL( n ) ? v : static_cast< QDnsTextRecord * >( Qt5xHb::itemGetPtr( n ) )
#define OPQHOSTADDRESS( n, v )                              HB_ISNIL( n ) ? v : static_cast< QHostAddress * >( Qt5xHb::itemGetPtr( n ) )
#define OPQHOSTINFO( n, v )                                 HB_ISNIL( n ) ? v : static_cast< QHostInfo * >( Qt5xHb::itemGetPtr( n ) )
#define OPQHSTSPOLICY( n, v )                               HB_ISNIL( n ) ? v : static_cast< QHstsPolicy * >( Qt5xHb::itemGetPtr( n ) )
#define OPQHTTPMULTIPART( n, v )                            HB_ISNIL( n ) ? v : static_cast< QHttpMultiPart * >( Qt5xHb::itemGetPtr( n ) )
#define OPQHTTPPART( n, v )                                 HB_ISNIL( n ) ? v : static_cast< QHttpPart * >( Qt5xHb::itemGetPtr( n ) )
#define OPQLOCALSERVER( n, v )                              HB_ISNIL( n ) ? v : static_cast< QLocalServer * >( Qt5xHb::itemGetPtr( n ) )
#define OPQLOCALSOCKET( n, v )                              HB_ISNIL( n ) ? v : static_cast< QLocalSocket * >( Qt5xHb::itemGetPtr( n ) )
#define OPQNETWORKACCESSMANAGER( n, v )                     HB_ISNIL( n ) ? v : static_cast< QNetworkAccessManager * >( Qt5xHb::itemGetPtr( n ) )
#define OPQNETWORKADDRESSENTRY( n, v )                      HB_ISNIL( n ) ? v : static_cast< QNetworkAddressEntry * >( Qt5xHb::itemGetPtr( n ) )
#define OPQNETWORKCACHEMETADATA( n, v )                     HB_ISNIL( n ) ? v : static_cast< QNetworkCacheMetaData * >( Qt5xHb::itemGetPtr( n ) )
#define OPQNETWORKCONFIGURATION( n, v )                     HB_ISNIL( n ) ? v : static_cast< QNetworkConfiguration * >( Qt5xHb::itemGetPtr( n ) )
#define OPQNETWORKCONFIGURATIONMANAGER( n, v )              HB_ISNIL( n ) ? v : static_cast< QNetworkConfigurationManager * >( Qt5xHb::itemGetPtr( n ) )
#define OPQNETWORKCOOKIE( n, v )                            HB_ISNIL( n ) ? v : static_cast< QNetworkCookie * >( Qt5xHb::itemGetPtr( n ) )
#define OPQNETWORKCOOKIEJAR( n, v )                         HB_ISNIL( n ) ? v : static_cast< QNetworkCookieJar * >( Qt5xHb::itemGetPtr( n ) )
#define OPQNETWORKDATAGRAM( n, v )                          HB_ISNIL( n ) ? v : static_cast< QNetworkDatagram * >( Qt5xHb::itemGetPtr( n ) )
#define OPQNETWORKDISKCACHE( n, v )                         HB_ISNIL( n ) ? v : static_cast< QNetworkDiskCache * >( Qt5xHb::itemGetPtr( n ) )
#define OPQNETWORKINTERFACE( n, v )                         HB_ISNIL( n ) ? v : static_cast< QNetworkInterface * >( Qt5xHb::itemGetPtr( n ) )
#define OPQNETWORKPROXY( n, v )                             HB_ISNIL( n ) ? v : static_cast< QNetworkProxy * >( Qt5xHb::itemGetPtr( n ) )
#define OPQNETWORKPROXYFACTORY( n, v )                      HB_ISNIL( n ) ? v : static_cast< QNetworkProxyFactory * >( Qt5xHb::itemGetPtr( n ) )
#define OPQNETWORKPROXYQUERY( n, v )                        HB_ISNIL( n ) ? v : static_cast< QNetworkProxyQuery * >( Qt5xHb::itemGetPtr( n ) )
#define OPQNETWORKREPLY( n, v )                             HB_ISNIL( n ) ? v : static_cast< QNetworkReply * >( Qt5xHb::itemGetPtr( n ) )
#define OPQNETWORKREQUEST( n, v )                           HB_ISNIL( n ) ? v : static_cast< QNetworkRequest * >( Qt5xHb::itemGetPtr( n ) )
#define OPQNETWORKSESSION( n, v )                           HB_ISNIL( n ) ? v : static_cast< QNetworkSession * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSCTPSERVER( n, v )                               HB_ISNIL( n ) ? v : static_cast< QSctpServer * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSCTPSOCKET( n, v )                               HB_ISNIL( n ) ? v : static_cast< QSctpSocket * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSSLCERTIFICATE( n, v )                           HB_ISNIL( n ) ? v : static_cast< QSslCertificate * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSSLCERTIFICATEEXTENSION( n, v )                  HB_ISNIL( n ) ? v : static_cast< QSslCertificateExtension * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSSLCIPHER( n, v )                                HB_ISNIL( n ) ? v : static_cast< QSslCipher * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSSLCONFIGURATION( n, v )                         HB_ISNIL( n ) ? v : static_cast< QSslConfiguration * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSSLERROR( n, v )                                 HB_ISNIL( n ) ? v : static_cast< QSslError * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSSLKEY( n, v )                                   HB_ISNIL( n ) ? v : static_cast< QSslKey * >( Qt5xHb::itemGetPtr( n ) )
#define OPQSSLSOCKET( n, v )                                HB_ISNIL( n ) ? v : static_cast< QSslSocket * >( Qt5xHb::itemGetPtr( n ) )
#define OPQTCPSERVER( n, v )                                HB_ISNIL( n ) ? v : static_cast< QTcpServer * >( Qt5xHb::itemGetPtr( n ) )
#define OPQTCPSOCKET( n, v )                                HB_ISNIL( n ) ? v : static_cast< QTcpSocket * >( Qt5xHb::itemGetPtr( n ) )
#define OPQUDPSOCKET( n, v )                                HB_ISNIL( n ) ? v : static_cast< QUdpSocket * >( Qt5xHb::itemGetPtr( n ) )

#endif /* QT5XHB_MACROS_QTNETWORK_H */
