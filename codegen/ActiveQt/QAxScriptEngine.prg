$header

#include "hbclass.ch"

CLASS QAxScriptEngine INHERIT QAxObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD hasIntrospection
   METHOD isValid
   METHOD scriptLanguage
   METHOD setState
   METHOD state

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAxScriptEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAxScriptEngine>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAxScriptEngine>
#endif

/*
QAxScriptEngine ( const QString & language, QAxScript * script )
*/
HB_FUNC_STATIC( QAXSCRIPTENGINE_NEW )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISQAXSCRIPT(2) )
  {
    QAxScriptEngine * o = new QAxScriptEngine ( PQSTRING(1), PQAXSCRIPT(2) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addItem ( const QString & name )
*/
$method=|void|addItem|const QString &

/*
bool hasIntrospection () const
*/
$method=|bool|hasIntrospection|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QString scriptLanguage () const
*/
$method=|QString|scriptLanguage|

/*
void setState ( State st )
*/
HB_FUNC_STATIC( QAXSCRIPTENGINE_SETSTATE )
{
  QAxScriptEngine * obj = (QAxScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUMPAR(1) )
    {
      obj->setState ( (QAxScriptEngine::State) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
State state () const
*/
HB_FUNC_STATIC( QAXSCRIPTENGINE_STATE )
{
  QAxScriptEngine * obj = (QAxScriptEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->state () );
  }
}

#pragma ENDDUMP
