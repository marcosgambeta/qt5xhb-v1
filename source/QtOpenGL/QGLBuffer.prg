/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QGLBuffer

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD allocate1
   METHOD allocate2
   METHOD allocate
   METHOD bind
   METHOD bufferId
   METHOD create
   METHOD destroy
   METHOD isCreated
   METHOD map
   METHOD read
   METHOD release1
   METHOD release2
   METHOD release
   METHOD setUsagePattern
   METHOD size
   METHOD type
   METHOD unmap
   METHOD usagePattern
   METHOD write

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGLBuffer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QGLBuffer>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QGLBuffer>
#endif

/*
QGLBuffer ()
*/
HB_FUNC_STATIC( QGLBUFFER_NEW1 )
{
  QGLBuffer * o = new QGLBuffer (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGLBuffer ( QGLBuffer::Type type )
*/
HB_FUNC_STATIC( QGLBUFFER_NEW2 )
{
  int par1 = hb_parni(1);
  QGLBuffer * o = new QGLBuffer (  (QGLBuffer::Type) par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QGLBuffer ( const QGLBuffer & other )
*/
HB_FUNC_STATIC( QGLBUFFER_NEW3 )
{
  QGLBuffer * par1 = (QGLBuffer *) _qt5xhb_itemGetPtr(1);
  QGLBuffer * o = new QGLBuffer ( *par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QGLBuffer ()
//[2]QGLBuffer ( QGLBuffer::Type type )
//[3]QGLBuffer ( const QGLBuffer & other )

HB_FUNC_STATIC( QGLBUFFER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGLBUFFER_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGLBUFFER_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQGLBUFFER(1) )
  {
    HB_FUNC_EXEC( QGLBUFFER_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGLBUFFER_DELETE )
{
  QGLBuffer * obj = (QGLBuffer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void allocate ( const void * data, int count )
*/
HB_FUNC_STATIC( QGLBUFFER_ALLOCATE1 )
{
  QGLBuffer * obj = (QGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    void * par1 = (void *) hb_parptr(1);
    obj->allocate ( par1, (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void allocate ( int count )
*/
HB_FUNC_STATIC( QGLBUFFER_ALLOCATE2 )
{
  QGLBuffer * obj = (QGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->allocate ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void allocate ( const void * data, int count )
//[2]void allocate ( int count )

HB_FUNC_STATIC( QGLBUFFER_ALLOCATE )
{
  if( ISNUMPAR(2) && ISPOINTER(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QGLBUFFER_ALLOCATE1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGLBUFFER_ALLOCATE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool bind ()
*/
HB_FUNC_STATIC( QGLBUFFER_BIND )
{
  QGLBuffer * obj = (QGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->bind (  ) );
  }
}


/*
GLuint bufferId () const
*/
HB_FUNC_STATIC( QGLBUFFER_BUFFERID )
{
  QGLBuffer * obj = (QGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->bufferId (  ) );
  }
}


/*
bool create ()
*/
HB_FUNC_STATIC( QGLBUFFER_CREATE )
{
  QGLBuffer * obj = (QGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->create (  ) );
  }
}


/*
void destroy ()
*/
HB_FUNC_STATIC( QGLBUFFER_DESTROY )
{
  QGLBuffer * obj = (QGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->destroy (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isCreated () const
*/
HB_FUNC_STATIC( QGLBUFFER_ISCREATED )
{
  QGLBuffer * obj = (QGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isCreated (  ) );
  }
}


/*
void * map ( QGLBuffer::Access access )
*/
HB_FUNC_STATIC( QGLBUFFER_MAP )
{
  QGLBuffer * obj = (QGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retptr( (void *) obj->map (  (QGLBuffer::Access) par1 ) );
  }
}


/*
bool read ( int offset, void * data, int count )
*/
HB_FUNC_STATIC( QGLBUFFER_READ )
{
  QGLBuffer * obj = (QGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    void * par2 = (void *) hb_parptr(2);
    hb_retl( obj->read ( (int) hb_parni(1), par2, (int) hb_parni(3) ) );
  }
}


/*
void release ()
*/
HB_FUNC_STATIC( QGLBUFFER_RELEASE1 )
{
  QGLBuffer * obj = (QGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->release (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void release ( QGLBuffer::Type type )
*/
HB_FUNC_STATIC( QGLBUFFER_RELEASE2 )
{
  int par1 = hb_parni(1);
  QGLBuffer::release (  (QGLBuffer::Type) par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void release ()
//[2]void release ( QGLBuffer::Type type )

HB_FUNC_STATIC( QGLBUFFER_RELEASE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QGLBUFFER_RELEASE1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QGLBUFFER_RELEASE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setUsagePattern ( QGLBuffer::UsagePattern value )
*/
HB_FUNC_STATIC( QGLBUFFER_SETUSAGEPATTERN )
{
  QGLBuffer * obj = (QGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setUsagePattern (  (QGLBuffer::UsagePattern) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int size () const
*/
HB_FUNC_STATIC( QGLBUFFER_SIZE )
{
  QGLBuffer * obj = (QGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->size (  ) );
  }
}


/*
QGLBuffer::Type type () const
*/
HB_FUNC_STATIC( QGLBUFFER_TYPE )
{
  QGLBuffer * obj = (QGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}


/*
bool unmap ()
*/
HB_FUNC_STATIC( QGLBUFFER_UNMAP )
{
  QGLBuffer * obj = (QGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->unmap (  ) );
  }
}


/*
QGLBuffer::UsagePattern usagePattern () const
*/
HB_FUNC_STATIC( QGLBUFFER_USAGEPATTERN )
{
  QGLBuffer * obj = (QGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->usagePattern (  ) );
  }
}


/*
void write ( int offset, const void * data, int count )
*/
HB_FUNC_STATIC( QGLBUFFER_WRITE )
{
  QGLBuffer * obj = (QGLBuffer *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const void * par2 = (const void *) hb_parptr(2);
    obj->write ( (int) hb_parni(1), par2, (int) hb_parni(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QGLBUFFER_NEWFROM )
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

HB_FUNC_STATIC( QGLBUFFER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QGLBUFFER_NEWFROM );
}

HB_FUNC_STATIC( QGLBUFFER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QGLBUFFER_NEWFROM );
}

HB_FUNC_STATIC( QGLBUFFER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QGLBUFFER_SETSELFDESTRUCTION )
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