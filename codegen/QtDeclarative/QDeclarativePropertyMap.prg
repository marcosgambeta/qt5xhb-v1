$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QDeclarativePropertyMap INHERIT QObject

   METHOD new
   METHOD delete
   METHOD clear
   METHOD contains
   METHOD count
   METHOD insert
   METHOD isEmpty
   METHOD keys
   METHOD size
   METHOD value

   METHOD onValueChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QDeclarativePropertyMap ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
void clear ( const QString & key )
*/
$method=|void|clear|const QString &

/*
bool contains ( const QString & key ) const
*/
$method=|bool|contains|const QString &

/*
int count () const
*/
$method=|int|count|

/*
void insert ( const QString & key, const QVariant & value )
*/
$method=|void|insert|const QString &,const QVariant &

/*
bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
QStringList keys () const
*/
$method=|QStringList|keys|

/*
int size () const
*/
$method=|int|size|

/*
QVariant value ( const QString & key ) const
*/
$method=|QVariant|value|const QString &

#pragma ENDDUMP
