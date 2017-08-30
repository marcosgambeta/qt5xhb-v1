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
$constructor=|new|

$deleteMethod

/*
void appendChildNode(QSGNode * node)
*/
$method=|void|appendChildNode|QSGNode *

/*
QSGNode * childAtIndex(int i) const
*/
$method=|QSGNode *|childAtIndex|int

/*
int childCount() const
*/
$method=|int|childCount|

/*
QSGNode * firstChild() const
*/
$method=|QSGNode *|firstChild|

/*
Flags flags() const
*/
$method=|QSGNode::Flags|flags|

/*
void insertChildNodeAfter(QSGNode * node, QSGNode * after)
*/
$method=|void|insertChildNodeAfter|QSGNode *,QSGNode *

/*
void insertChildNodeBefore(QSGNode * node, QSGNode * before)
*/
$method=|void|insertChildNodeBefore|QSGNode *,QSGNode *

/*
virtual bool isSubtreeBlocked() const
*/
$virtualMethod=|bool|isSubtreeBlocked|

/*
QSGNode * lastChild() const
*/
$method=|QSGNode *|lastChild|

/*
void markDirty(DirtyState bits)
*/
$method=|void|markDirty|QSGNode::DirtyState

/*
QSGNode * nextSibling() const
*/
$method=|QSGNode *|nextSibling|

/*
QSGNode * parent() const
*/
$method=|QSGNode *|parent|

/*
void prependChildNode(QSGNode * node)
*/
$method=|void|prependChildNode|QSGNode *

/*
virtual void preprocess()
*/
$virtualMethod=|void|preprocess|

/*
QSGNode * previousSibling() const
*/
$method=|QSGNode *|previousSibling|

/*
void removeAllChildNodes()
*/
$method=|void|removeAllChildNodes|

/*
void removeChildNode(QSGNode * node)
*/
$method=|void|removeChildNode|QSGNode *

/*
void setFlag(Flag f, bool enabled = true)
*/
$method=|void|setFlag|QSGNode::Flag,bool=true

/*
void setFlags(Flags f, bool enabled = true)
*/
$method=|void|setFlags|QSGNode::Flags,bool=true

/*
NodeType type() const
*/
$method=|QSGNode::NodeType|type|

$extraMethods

#pragma ENDDUMP
