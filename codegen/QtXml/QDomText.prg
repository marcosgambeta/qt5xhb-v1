/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QDomText INHERIT QDomCharacterData

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD nodeType
   METHOD splitText

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomText
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDomText>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDomText>
#endif

/*
QDomText ()
*/
HB_FUNC_STATIC( QDOMTEXT_NEW1 )
{
  QDomText * o = new QDomText ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDomText ( const QDomText & x )
*/
HB_FUNC_STATIC( QDOMTEXT_NEW2 )
{
  QDomText * o = new QDomText ( *PQDOMTEXT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QDomText ()
//[2]QDomText ( const QDomText & x )

HB_FUNC_STATIC( QDOMTEXT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMTEXT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMTEXT(1) )
  {
    HB_FUNC_EXEC( QDOMTEXT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOMTEXT_DELETE )
{
  QDomText * obj = (QDomText *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QDomNode::NodeType nodeType () const
*/
HB_FUNC_STATIC( QDOMTEXT_NODETYPE )
{
  QDomText * obj = (QDomText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->nodeType () );
  }
}


/*
QDomText splitText ( int offset )
*/
HB_FUNC_STATIC( QDOMTEXT_SPLITTEXT )
{
  QDomText * obj = (QDomText *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDomText * ptr = new QDomText( obj->splitText ( PINT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QDOMTEXT", true );
  }
}



#pragma ENDDUMP
