/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTANDROIDEXTRAS_H
#define QT5XHB_MACROS_QTANDROIDEXTRAS_H

#define ISQANDROIDACTIVITYRESULTRECEIVER( n )               Qt5xHb::isObjectDerivedFrom( n, "QAndroidActivityResultReceiver" )
#define ISQANDROIDBINDER( n )                               Qt5xHb::isObjectDerivedFrom( n, "QAndroidBinder" )
#define ISQANDROIDINTENT( n )                               Qt5xHb::isObjectDerivedFrom( n, "QAndroidIntent" )
#define ISQANDROIDJNIENVIRONMENT( n )                       Qt5xHb::isObjectDerivedFrom( n, "QAndroidJniEnvironment" )
#define ISQANDROIDJNIEXCEPTIONCLEANER( n )                  Qt5xHb::isObjectDerivedFrom( n, "QAndroidJniExceptionCleaner" )
#define ISQANDROIDJNIOBJECT( n )                            Qt5xHb::isObjectDerivedFrom( n, "QAndroidJniObject" )
#define ISQANDROIDPARCEL( n )                               Qt5xHb::isObjectDerivedFrom( n, "QAndroidParcel" )
#define ISQANDROIDSERVICE( n )                              Qt5xHb::isObjectDerivedFrom( n, "QAndroidService" )
#define ISQANDROIDSERVICECONNECTION( n )                    Qt5xHb::isObjectDerivedFrom( n, "QAndroidServiceConnection" )
#define ISQTANDROID( n )                                    Qt5xHb::isObjectDerivedFrom( n, "QtAndroid" )

#define PQANDROIDACTIVITYRESULTRECEIVER( n )                static_cast< QAndroidActivityResultReceiver * >( Qt5xHb::itemGetPtr( n ) )
#define PQANDROIDBINDER( n )                                static_cast< QAndroidBinder * >( Qt5xHb::itemGetPtr( n ) )
#define PQANDROIDINTENT( n )                                static_cast< QAndroidIntent * >( Qt5xHb::itemGetPtr( n ) )
#define PQANDROIDJNIENVIRONMENT( n )                        static_cast< QAndroidJniEnvironment * >( Qt5xHb::itemGetPtr( n ) )
#define PQANDROIDJNIEXCEPTIONCLEANER( n )                   static_cast< QAndroidJniExceptionCleaner * >( Qt5xHb::itemGetPtr( n ) )
#define PQANDROIDJNIOBJECT( n )                             static_cast< QAndroidJniObject * >( Qt5xHb::itemGetPtr( n ) )
#define PQANDROIDPARCEL( n )                                static_cast< QAndroidParcel * >( Qt5xHb::itemGetPtr( n ) )
#define PQANDROIDSERVICE( n )                               static_cast< QAndroidService * >( Qt5xHb::itemGetPtr( n ) )
#define PQANDROIDSERVICECONNECTION( n )                     static_cast< QAndroidServiceConnection * >( Qt5xHb::itemGetPtr( n ) )
#define PQTANDROID( n )                                     static_cast< QtAndroid * >( Qt5xHb::itemGetPtr( n ) )

#define OPQANDROIDACTIVITYRESULTRECEIVER( n, v )            HB_ISNIL( n ) ? v : static_cast< QAndroidActivityResultReceiver * >( Qt5xHb::itemGetPtr( n ) )
#define OPQANDROIDBINDER( n, v )                            HB_ISNIL( n ) ? v : static_cast< QAndroidBinder * >( Qt5xHb::itemGetPtr( n ) )
#define OPQANDROIDINTENT( n, v )                            HB_ISNIL( n ) ? v : static_cast< QAndroidIntent * >( Qt5xHb::itemGetPtr( n ) )
#define OPQANDROIDJNIENVIRONMENT( n, v )                    HB_ISNIL( n ) ? v : static_cast< QAndroidJniEnvironment * >( Qt5xHb::itemGetPtr( n ) )
#define OPQANDROIDJNIEXCEPTIONCLEANER( n, v )               HB_ISNIL( n ) ? v : static_cast< QAndroidJniExceptionCleaner * >( Qt5xHb::itemGetPtr( n ) )
#define OPQANDROIDJNIOBJECT( n, v )                         HB_ISNIL( n ) ? v : static_cast< QAndroidJniObject * >( Qt5xHb::itemGetPtr( n ) )
#define OPQANDROIDPARCEL( n, v )                            HB_ISNIL( n ) ? v : static_cast< QAndroidParcel * >( Qt5xHb::itemGetPtr( n ) )
#define OPQANDROIDSERVICE( n, v )                           HB_ISNIL( n ) ? v : static_cast< QAndroidService * >( Qt5xHb::itemGetPtr( n ) )
#define OPQANDROIDSERVICECONNECTION( n, v )                 HB_ISNIL( n ) ? v : static_cast< QAndroidServiceConnection * >( Qt5xHb::itemGetPtr( n ) )
#define OPQTANDROID( n, v )                                 HB_ISNIL( n ) ? v : static_cast< QtAndroid * >( Qt5xHb::itemGetPtr( n ) )

#endif /* QT5XHB_MACROS_QTANDROIDEXTRAS_H */
