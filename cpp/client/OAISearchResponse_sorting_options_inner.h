/**
 * GameBrain API
 * GameBrain API
 *
 * The version of the OpenAPI document: 1.0.1
 * Contact: mail@gamebrain.co
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * OAISearchResponse_sorting_options_inner.h
 *
 * 
 */

#ifndef OAISearchResponse_sorting_options_inner_H
#define OAISearchResponse_sorting_options_inner_H

#include <QJsonObject>

#include <QString>

#include "OAIEnum.h"
#include "OAIObject.h"

namespace OpenAPI {

class OAISearchResponse_sorting_options_inner : public OAIObject {
public:
    OAISearchResponse_sorting_options_inner();
    OAISearchResponse_sorting_options_inner(QString json);
    ~OAISearchResponse_sorting_options_inner() override;

    QString asJson() const override;
    QJsonObject asJsonObject() const override;
    void fromJsonObject(QJsonObject json) override;
    void fromJson(QString jsonString) override;

    QString getName() const;
    void setName(const QString &name);
    bool is_name_Set() const;
    bool is_name_Valid() const;

    QString getSort() const;
    void setSort(const QString &sort);
    bool is_sort_Set() const;
    bool is_sort_Valid() const;

    QString getKey() const;
    void setKey(const QString &key);
    bool is_key_Set() const;
    bool is_key_Valid() const;

    virtual bool isSet() const override;
    virtual bool isValid() const override;

private:
    void initializeModel();

    QString m_name;
    bool m_name_isSet;
    bool m_name_isValid;

    QString m_sort;
    bool m_sort_isSet;
    bool m_sort_isValid;

    QString m_key;
    bool m_key_isSet;
    bool m_key_isValid;
};

} // namespace OpenAPI

Q_DECLARE_METATYPE(OpenAPI::OAISearchResponse_sorting_options_inner)

#endif // OAISearchResponse_sorting_options_inner_H
