$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QICON
#endif

CLASS QDesignerCustomWidgetInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD codeTemplate
   METHOD createWidget
   METHOD domXml
   METHOD group
   METHOD icon
   METHOD includeFile
   METHOD initialize
   METHOD isContainer
   METHOD isInitialized
   METHOD name
   METHOD toolTip
   METHOD whatsThis

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

$deleteMethod

$prototype=virtual QString codeTemplate () const
$method=|QString|codeTemplate|

$prototype=virtual QWidget * createWidget ( QWidget * parent ) = 0
$method=|QWidget *|createWidget|QWidget *

$prototype=virtual QString domXml () const
$method=|QString|domXml|

$prototype=virtual QString group () const = 0
$method=|QString|group|

$prototype=virtual QIcon icon () const = 0
$method=|QIcon|icon|

$prototype=virtual QString includeFile () const = 0
$method=|QString|includeFile|

$prototype=virtual void initialize ( QDesignerFormEditorInterface * formEditor )
$method=|void|initialize|QDesignerFormEditorInterface *

$prototype=virtual bool isContainer () const = 0
$method=|bool|isContainer|

$prototype=virtual bool isInitialized () const
$method=|bool|isInitialized|

$prototype=virtual QString name () const = 0
$method=|QString|name|

$prototype=virtual QString toolTip () const = 0
$method=|QString|toolTip|

$prototype=virtual QString whatsThis () const = 0
$method=|QString|whatsThis|

$extraMethods

#pragma ENDDUMP
