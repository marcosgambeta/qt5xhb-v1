/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QOpenGLVertexArrayObject INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD create
   METHOD destroy
   METHOD isCreated
   METHOD objectId
   METHOD bind
   METHOD release

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QOpenGLVertexArrayObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QOpenGLVertexArrayObject>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QOpenGLVertexArrayObject>
#endif

/*
QOpenGLVertexArrayObject(QObject* parent = 0)
*/
HB_FUNC_STATIC( QOPENGLVERTEXARRAYOBJECT_NEW )
{
  QObject * par1 = ISNIL(1)? 0 : (QObject *) _qt5xhb_itemGetPtr(1);
  QOpenGLVertexArrayObject * o = new QOpenGLVertexArrayObject ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QOPENGLVERTEXARRAYOBJECT_DELETE )
{
  QOpenGLVertexArrayObject * obj = (QOpenGLVertexArrayObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool create()
*/
HB_FUNC_STATIC( QOPENGLVERTEXARRAYOBJECT_CREATE )
{
  QOpenGLVertexArrayObject * obj = (QOpenGLVertexArrayObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->create () );
  }
}


/*
void destroy()
*/
HB_FUNC_STATIC( QOPENGLVERTEXARRAYOBJECT_DESTROY )
{
  QOpenGLVertexArrayObject * obj = (QOpenGLVertexArrayObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->destroy ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isCreated() const
*/
HB_FUNC_STATIC( QOPENGLVERTEXARRAYOBJECT_ISCREATED )
{
  QOpenGLVertexArrayObject * obj = (QOpenGLVertexArrayObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isCreated () );
  }
}


/*
GLuint objectId() const
*/
HB_FUNC_STATIC( QOPENGLVERTEXARRAYOBJECT_OBJECTID )
{
  QOpenGLVertexArrayObject * obj = (QOpenGLVertexArrayObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->objectId () );
  }
}


/*
void bind()
*/
HB_FUNC_STATIC( QOPENGLVERTEXARRAYOBJECT_BIND )
{
  QOpenGLVertexArrayObject * obj = (QOpenGLVertexArrayObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->bind ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void release()
*/
HB_FUNC_STATIC( QOPENGLVERTEXARRAYOBJECT_RELEASE )
{
  QOpenGLVertexArrayObject * obj = (QOpenGLVertexArrayObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->release ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
