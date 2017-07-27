$header

#include "hbclass.ch"

CLASS QAccessibleEditableTextInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD deleteText
   METHOD insertText
   METHOD replaceText

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
virtual void deleteText(int startOffset, int endOffset) = 0
*/
$method=|void|deleteText|int,int

/*
virtual void insertText(int offset, const QString &text) = 0
*/
$method=|void|insertText|int,const QString &

/*
virtual void replaceText(int startOffset, int endOffset, const QString &text) = 0
*/
$method=|void|replaceText|int,int,const QString &

$extraMethods

#pragma ENDDUMP
