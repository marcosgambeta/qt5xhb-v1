$header

#include "hbclass.ch"

CLASS QMediaContainerControl INHERIT QMediaControl

   METHOD delete
   METHOD containerDescription
   METHOD containerFormat
   METHOD setContainerFormat
   METHOD supportedContainers

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

$deleteMethod

$prototype=virtual QString containerDescription(const QString & format) const = 0
$method=|QString|containerDescription|const QString &

$prototype=virtual QString containerFormat() const = 0
$method=|QString|containerFormat|

$prototype=virtual void setContainerFormat(const QString & format) = 0
$method=|void|setContainerFormat|const QString &

$prototype=virtual QStringList supportedContainers() const = 0
$method=|QStringList|supportedContainers|

#pragma ENDDUMP
