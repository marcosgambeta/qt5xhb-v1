/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

CLASS QDomEntityReference INHERIT QDomNode

   DATA class_id INIT Class_Id_QDomEntityReference
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD nodeType

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDomEntityReference
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDomEntityReference>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDomEntityReference>
#endif

/*
QDomEntityReference ()
*/
HB_FUNC_STATIC( QDOMENTITYREFERENCE_NEW1 )
{
  QDomEntityReference * o = new QDomEntityReference (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QDomEntityReference ( const QDomEntityReference & x )
*/
HB_FUNC_STATIC( QDOMENTITYREFERENCE_NEW2 )
{
  QDomEntityReference * par1 = (QDomEntityReference *) _qt5xhb_itemGetPtr(1);
  QDomEntityReference * o = new QDomEntityReference ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QDomEntityReference ()
//[2]QDomEntityReference ( const QDomEntityReference & x )

HB_FUNC_STATIC( QDOMENTITYREFERENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDOMENTITYREFERENCE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDOMENTITYREFERENCE(1) )
  {
    HB_FUNC_EXEC( QDOMENTITYREFERENCE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDOMENTITYREFERENCE_DELETE )
{
  QDomEntityReference * obj = (QDomEntityReference *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QDOMENTITYREFERENCE_NODETYPE )
{
  QDomEntityReference * obj = (QDomEntityReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->nodeType (  ) );
  }
}



#pragma ENDDUMP
