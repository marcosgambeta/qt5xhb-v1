$header

#include "hbclass.ch"

CLASS QQmlListProperty

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new

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

%% TODO: implementação pendente

/*
QQmlListProperty(QObject * object, QList<T *> & list)
*/

/*
QQmlListProperty(QObject * object, void * data, AppendFunction append, CountFunction count = 0, AtFunction at = 0, ClearFunction clear = 0)
*/

//[1]QQmlListProperty(QObject * object, QList<T *> & list)
//[2]QQmlListProperty(QObject * object, void * data, AppendFunction append, CountFunction count = 0, AtFunction at = 0, ClearFunction clear = 0)

%% TODO: implementar
HB_FUNC_STATIC( QQMLLISTPROPERTY_NEW )
{
}

$extraMethods

#pragma ENDDUMP
