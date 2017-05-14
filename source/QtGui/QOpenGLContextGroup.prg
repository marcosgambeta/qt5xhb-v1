/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QOpenGLContextGroup INHERIT QObject

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD shares
   METHOD currentContextGroup

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOpenGLContextGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QOpenGLContextGroup>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QOpenGLContextGroup>
#endif


HB_FUNC_STATIC( QOPENGLCONTEXTGROUP_DELETE )
{
  QOpenGLContextGroup * obj = (QOpenGLContextGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QList<QOpenGLContext *> shares() const
*/
HB_FUNC_STATIC( QOPENGLCONTEXTGROUP_SHARES )
{
  QOpenGLContextGroup * obj = (QOpenGLContextGroup *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
  }
}


/*
static QOpenGLContextGroup *currentContextGroup()
*/
HB_FUNC_STATIC( QOPENGLCONTEXTGROUP_CURRENTCONTEXTGROUP )
{
  QOpenGLContextGroup * ptr = QOpenGLContextGroup::currentContextGroup (  );
  _qt5xhb_createReturnClass ( ptr, "QOPENGLCONTEXTGROUP" );
}



#pragma ENDDUMP
