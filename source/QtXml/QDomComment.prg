/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QDomComment INHERIT QDomCharacterData

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD nodeType

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomComment
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDomComment>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDomComment>
#endif

/*
QDomComment ()
*/
HB_FUNC_STATIC( QDOMCOMMENT_NEW1 )
{
  QDomComment * o = new QDomComment ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDomComment ( const QDomComment & x )
*/
HB_FUNC_STATIC( QDOMCOMMENT_NEW2 )
{
  QDomComment * par1 = (QDomComment *) _qt5xhb_itemGetPtr(1);
  QDomComment * o = new QDomComment ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QDomComment ()
//[2]QDomComment ( const QDomComment & x )

HB_FUNC_STATIC( QDOMCOMMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMCOMMENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMCOMMENT(1) )
  {
    HB_FUNC_EXEC( QDOMCOMMENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOMCOMMENT_DELETE )
{
  QDomComment * obj = (QDomComment *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QDomNode::NodeType nodeType () cons
*/
HB_FUNC_STATIC( QDOMCOMMENT_NODETYPE )
{
  QDomComment * obj = (QDomComment *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->nodeType () );
  }
}



#pragma ENDDUMP
