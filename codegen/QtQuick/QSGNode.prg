$header

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

$destructor

#pragma BEGINDUMP

$includes

/*
QSGNode()
*/
HB_FUNC_STATIC( QSGNODE_NEW )
{
  QSGNode * o = new QSGNode ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

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



$extraMethods

#pragma ENDDUMP
