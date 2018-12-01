%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtQuick

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSGNode()
$constructor=|new|

$deleteMethod

$prototype=void appendChildNode(QSGNode * node)
$method=|void|appendChildNode|QSGNode *

$prototype=QSGNode * childAtIndex(int i) const
$method=|QSGNode *|childAtIndex|int

$prototype=int childCount() const
$method=|int|childCount|

$prototype=QSGNode * firstChild() const
$method=|QSGNode *|firstChild|

$prototype=Flags flags() const
$method=|QSGNode::Flags|flags|

$prototype=void insertChildNodeAfter(QSGNode * node, QSGNode * after)
$method=|void|insertChildNodeAfter|QSGNode *,QSGNode *

$prototype=void insertChildNodeBefore(QSGNode * node, QSGNode * before)
$method=|void|insertChildNodeBefore|QSGNode *,QSGNode *

$prototype=virtual bool isSubtreeBlocked() const
$virtualMethod=|bool|isSubtreeBlocked|

$prototype=QSGNode * lastChild() const
$method=|QSGNode *|lastChild|

$prototype=void markDirty(DirtyState bits)
$method=|void|markDirty|QSGNode::DirtyState

$prototype=QSGNode * nextSibling() const
$method=|QSGNode *|nextSibling|

$prototype=QSGNode * parent() const
$method=|QSGNode *|parent|

$prototype=void prependChildNode(QSGNode * node)
$method=|void|prependChildNode|QSGNode *

$prototype=virtual void preprocess()
$virtualMethod=|void|preprocess|

$prototype=QSGNode * previousSibling() const
$method=|QSGNode *|previousSibling|

$prototype=void removeAllChildNodes()
$method=|void|removeAllChildNodes|

$prototype=void removeChildNode(QSGNode * node)
$method=|void|removeChildNode|QSGNode *

$prototype=void setFlag(Flag f, bool enabled = true)
$method=|void|setFlag|QSGNode::Flag,bool=true

$prototype=void setFlags(Flags f, bool enabled = true)
$method=|void|setFlags|QSGNode::Flags,bool=true

$prototype=NodeType type() const
$method=|QSGNode::NodeType|type|

$extraMethods

#pragma ENDDUMP
