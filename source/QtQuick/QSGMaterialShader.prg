/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOPENGLSHADERPROGRAM
#endif

CLASS QSGMaterialShader

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD activate
   METHOD deactivate
   METHOD program

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSGMaterialShader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSGMaterialShader>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSGMaterialShader>
#endif


HB_FUNC_STATIC( QSGMATERIALSHADER_DELETE )
{
  QSGMaterialShader * obj = (QSGMaterialShader *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void activate()
*/
HB_FUNC_STATIC( QSGMATERIALSHADER_ACTIVATE )
{
  QSGMaterialShader * obj = (QSGMaterialShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->activate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
virtual void deactivate()
*/
HB_FUNC_STATIC( QSGMATERIALSHADER_DEACTIVATE )
{
  QSGMaterialShader * obj = (QSGMaterialShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->deactivate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QOpenGLShaderProgram * program()
*/
HB_FUNC_STATIC( QSGMATERIALSHADER_PROGRAM )
{
  QSGMaterialShader * obj = (QSGMaterialShader *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLShaderProgram * ptr = obj->program (  );
    _qt5xhb_createReturnClass ( ptr, "QOPENGLSHADERPROGRAM" );
  }
}




HB_FUNC_STATIC( QSGMATERIALSHADER_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSGMATERIALSHADER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSGMATERIALSHADER_NEWFROM );
}

HB_FUNC_STATIC( QSGMATERIALSHADER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSGMATERIALSHADER_NEWFROM );
}

HB_FUNC_STATIC( QSGMATERIALSHADER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSGMATERIALSHADER_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
