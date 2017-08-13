$header

#include "hbclass.ch"

CLASS QMediaContainerControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

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

/*
virtual QString containerDescription(const QString & format) const = 0
*/
$method=|QString|containerDescription|const QString &

/*
virtual QString containerFormat() const = 0
*/
$method=|QString|containerFormat|

/*
virtual void setContainerFormat(const QString & format) = 0
*/
$method=|void|setContainerFormat|const QString &

/*
virtual QStringList supportedContainers() const = 0
*/
$method=|QStringList|supportedContainers|

#pragma ENDDUMP
