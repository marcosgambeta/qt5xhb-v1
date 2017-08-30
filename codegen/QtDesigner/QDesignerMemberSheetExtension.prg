$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QDesignerMemberSheetExtension

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD count
   METHOD declaredInClass
   METHOD indexOf
   METHOD inheritedFromWidget
   METHOD isSignal
   METHOD isSlot
   METHOD isVisible
   METHOD memberGroup
   METHOD memberName
   METHOD parameterNames
   METHOD parameterTypes
   METHOD setMemberGroup
   METHOD setVisible
   METHOD signature

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual int count () const = 0
*/
$method=|int|count|

/*
virtual QString declaredInClass ( int index ) const = 0
*/
$method=|QString|declaredInClass|int

/*
virtual int indexOf ( const QString & name ) const = 0
*/
$method=|int|indexOf|const QString &

/*
virtual bool inheritedFromWidget ( int index ) const = 0
*/
$method=|bool|inheritedFromWidget|int

/*
virtual bool isSignal ( int index ) const = 0
*/
$method=|bool|isSignal|int

/*
virtual bool isSlot ( int index ) const = 0
*/
$method=|bool|isSlot|int

/*
virtual bool isVisible ( int index ) const = 0
*/
$method=|bool|isVisible|int

/*
virtual QString memberGroup ( int index ) const = 0
*/
$method=|QString|memberGroup|int

/*
virtual QString memberName ( int index ) const = 0
*/
$method=|QString|memberName|int

/*
virtual QList<QByteArray> parameterNames ( int index ) const = 0
*/
$virtualMethod=|QList<QByteArray>|parameterNames|int

/*
virtual QList<QByteArray> parameterTypes ( int index ) const = 0
*/
$virtualMethod=|QList<QByteArray>|parameterTypes|int

/*
virtual void setMemberGroup ( int index, const QString & group ) = 0
*/
$method=|void|setMemberGroup|int,const QString &

/*
virtual void setVisible ( int index, bool visible ) = 0
*/
$method=|void|setVisible|int,bool

/*
virtual QString signature ( int index ) const = 0
*/
$method=|QString|signature|int

$extraMethods

#pragma ENDDUMP
