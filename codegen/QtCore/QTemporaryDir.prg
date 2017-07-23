$header

#include "hbclass.ch"

CLASS QTemporaryDir

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD autoRemove
   METHOD isValid
   METHOD path
   METHOD remove
   METHOD setAutoRemove

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

/*
QTemporaryDir()
*/
$internalConstructor=|new1|

/*
QTemporaryDir(const QString & templateName)
*/
$internalConstructor=|new2|const QString &

//[1]QTemporaryDir()
//[2]QTemporaryDir(const QString & templateName)

HB_FUNC_STATIC( QTEMPORARYDIR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTemporaryDir_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTemporaryDir_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool autoRemove() const
*/
$method=|bool|autoRemove|

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
QString path() const
*/
$method=|QString|path|

/*
bool remove()
*/
$method=|bool|remove|

/*
void setAutoRemove(bool b)
*/
$method=|void|setAutoRemove|bool

$extraMethods

#pragma ENDDUMP
