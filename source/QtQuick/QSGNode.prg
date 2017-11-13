/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QSGNode

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD appendChildNode
   METHOD childAtIndex
   METHOD childCount
   METHOD firstChild
   METHOD flags
   METHOD insertChildNodeAfter
   METHOD insertChildNodeBefore
   METHOD isSubtreeBlocked
   METHOD lastChild
   METHOD markDirty
   METHOD nextSibling
   METHOD parent
   METHOD prependChildNode
   METHOD preprocess
   METHOD previousSibling
   METHOD removeAllChildNodes
   METHOD removeChildNode
   METHOD setFlag
   METHOD setFlags
   METHOD type

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSGNode
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSGNode>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSGNode>
#endif

/*
QSGNode()
*/
HB_FUNC_STATIC( QSGNODE_NEW )
{
  QSGNode * o = new QSGNode ();
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QSGNODE_DELETE )
{
  QSGNode * obj = (QSGNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void appendChildNode(QSGNode * node)
*/
HB_FUNC_STATIC( QSGNODE_APPENDCHILDNODE )
{
  QSGNode * obj = (QSGNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * par1 = (QSGNode *) _qt5xhb_itemGetPtr(1);
    obj->appendChildNode ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSGNode * childAtIndex(int i) const
*/
HB_FUNC_STATIC( QSGNODE_CHILDATINDEX )
{
  QSGNode * obj = (QSGNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * ptr = obj->childAtIndex ( PINT(1) );
    _qt5xhb_createReturnClass ( ptr, "QSGNODE" );
  }
}


/*
int childCount() const
*/
HB_FUNC_STATIC( QSGNODE_CHILDCOUNT )
{
  QSGNode * obj = (QSGNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->childCount () );
  }
}


/*
QSGNode * firstChild() const
*/
HB_FUNC_STATIC( QSGNODE_FIRSTCHILD )
{
  QSGNode * obj = (QSGNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * ptr = obj->firstChild ();
    _qt5xhb_createReturnClass ( ptr, "QSGNODE" );
  }
}


/*
Flags flags() const
*/
HB_FUNC_STATIC( QSGNODE_FLAGS )
{
  QSGNode * obj = (QSGNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->flags () );
  }
}


/*
void insertChildNodeAfter(QSGNode * node, QSGNode * after)
*/
HB_FUNC_STATIC( QSGNODE_INSERTCHILDNODEAFTER )
{
  QSGNode * obj = (QSGNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * par1 = (QSGNode *) _qt5xhb_itemGetPtr(1);
    QSGNode * par2 = (QSGNode *) _qt5xhb_itemGetPtr(2);
    obj->insertChildNodeAfter ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertChildNodeBefore(QSGNode * node, QSGNode * before)
*/
HB_FUNC_STATIC( QSGNODE_INSERTCHILDNODEBEFORE )
{
  QSGNode * obj = (QSGNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * par1 = (QSGNode *) _qt5xhb_itemGetPtr(1);
    QSGNode * par2 = (QSGNode *) _qt5xhb_itemGetPtr(2);
    obj->insertChildNodeBefore ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isSubtreeBlocked() const
*/
HB_FUNC_STATIC( QSGNODE_ISSUBTREEBLOCKED )
{
  QSGNode * obj = (QSGNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isSubtreeBlocked () );
  }
}


/*
QSGNode * lastChild() const
*/
HB_FUNC_STATIC( QSGNODE_LASTCHILD )
{
  QSGNode * obj = (QSGNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * ptr = obj->lastChild ();
    _qt5xhb_createReturnClass ( ptr, "QSGNODE" );
  }
}


/*
void markDirty(DirtyState bits)
*/
HB_FUNC_STATIC( QSGNODE_MARKDIRTY )
{
  QSGNode * obj = (QSGNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->markDirty ( (QSGNode::DirtyState) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSGNode * nextSibling() const
*/
HB_FUNC_STATIC( QSGNODE_NEXTSIBLING )
{
  QSGNode * obj = (QSGNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * ptr = obj->nextSibling ();
    _qt5xhb_createReturnClass ( ptr, "QSGNODE" );
  }
}


/*
QSGNode * parent() const
*/
HB_FUNC_STATIC( QSGNODE_PARENT )
{
  QSGNode * obj = (QSGNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * ptr = obj->parent ();
    _qt5xhb_createReturnClass ( ptr, "QSGNODE" );
  }
}


/*
void prependChildNode(QSGNode * node)
*/
HB_FUNC_STATIC( QSGNODE_PREPENDCHILDNODE )
{
  QSGNode * obj = (QSGNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * par1 = (QSGNode *) _qt5xhb_itemGetPtr(1);
    obj->prependChildNode ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void preprocess()
*/
HB_FUNC_STATIC( QSGNODE_PREPROCESS )
{
  QSGNode * obj = (QSGNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->preprocess ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSGNode * previousSibling() const
*/
HB_FUNC_STATIC( QSGNODE_PREVIOUSSIBLING )
{
  QSGNode * obj = (QSGNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * ptr = obj->previousSibling ();
    _qt5xhb_createReturnClass ( ptr, "QSGNODE" );
  }
}


/*
void removeAllChildNodes()
*/
HB_FUNC_STATIC( QSGNODE_REMOVEALLCHILDNODES )
{
  QSGNode * obj = (QSGNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->removeAllChildNodes ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeChildNode(QSGNode * node)
*/
HB_FUNC_STATIC( QSGNODE_REMOVECHILDNODE )
{
  QSGNode * obj = (QSGNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGNode * par1 = (QSGNode *) _qt5xhb_itemGetPtr(1);
    obj->removeChildNode ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFlag(Flag f, bool enabled = true)
*/
HB_FUNC_STATIC( QSGNODE_SETFLAG )
{
  QSGNode * obj = (QSGNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFlag ( (QSGNode::Flag) par1, OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFlags(Flags f, bool enabled = true)
*/
HB_FUNC_STATIC( QSGNODE_SETFLAGS )
{
  QSGNode * obj = (QSGNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFlags ( (QSGNode::Flags) par1, OPBOOL(2,true) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
NodeType type() const
*/
HB_FUNC_STATIC( QSGNODE_TYPE )
{
  QSGNode * obj = (QSGNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
}



HB_FUNC_STATIC( QSGNODE_NEWFROM )
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

HB_FUNC_STATIC( QSGNODE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSGNODE_NEWFROM );
}

HB_FUNC_STATIC( QSGNODE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSGNODE_NEWFROM );
}

HB_FUNC_STATIC( QSGNODE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSGNODE_SETSELFDESTRUCTION )
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