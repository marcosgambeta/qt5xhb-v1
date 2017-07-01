/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QInputMethodEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new3
   METHOD new
   METHOD delete
   METHOD commitString
   METHOD preeditString
   METHOD replacementLength
   METHOD replacementStart
   METHOD setCommitString

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QInputMethodEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QInputMethodEvent>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QInputMethodEvent>
#endif

/*
QInputMethodEvent ()
*/
HB_FUNC_STATIC( QINPUTMETHODEVENT_NEW1 )
{
  QInputMethodEvent * o = new QInputMethodEvent ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QInputMethodEvent ( const QInputMethodEvent & other )
*/
HB_FUNC_STATIC( QINPUTMETHODEVENT_NEW3 )
{
  QInputMethodEvent * o = new QInputMethodEvent ( *PQINPUTMETHODEVENT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QInputMethodEvent ()
//[2]QInputMethodEvent ( const QString & preeditText, const QList<Attribute> & attributes )
//[3]QInputMethodEvent ( const QInputMethodEvent & other )

HB_FUNC_STATIC( QINPUTMETHODEVENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QINPUTMETHODEVENT_NEW1 );
  }
  //else if( ISNUMPAR(2) && ISCHAR(1) && ISOBJECT(2) )
  //{
  //  HB_FUNC_EXEC( QINPUTMETHODEVENT_NEW2 );
  //}
  else if( ISNUMPAR(1) && ISQINPUTMETHODEVENT(1) )
  {
    HB_FUNC_EXEC( QINPUTMETHODEVENT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QINPUTMETHODEVENT_DELETE )
{
  QInputMethodEvent * obj = (QInputMethodEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
const QString & commitString () const
*/
HB_FUNC_STATIC( QINPUTMETHODEVENT_COMMITSTRING )
{
  QInputMethodEvent * obj = (QInputMethodEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->commitString () );
  }
}


/*
const QString & preeditString () const
*/
HB_FUNC_STATIC( QINPUTMETHODEVENT_PREEDITSTRING )
{
  QInputMethodEvent * obj = (QInputMethodEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->preeditString () );
  }
}


/*
int replacementLength () const
*/
HB_FUNC_STATIC( QINPUTMETHODEVENT_REPLACEMENTLENGTH )
{
  QInputMethodEvent * obj = (QInputMethodEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->replacementLength () );
  }
}


/*
int replacementStart () const
*/
HB_FUNC_STATIC( QINPUTMETHODEVENT_REPLACEMENTSTART )
{
  QInputMethodEvent * obj = (QInputMethodEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->replacementStart () );
  }
}


/*
void setCommitString ( const QString & commitString, int replaceFrom = 0, int replaceLength = 0 )
*/
HB_FUNC_STATIC( QINPUTMETHODEVENT_SETCOMMITSTRING )
{
  QInputMethodEvent * obj = (QInputMethodEvent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCommitString ( PQSTRING(1), OPINT(2,0), OPINT(3,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
