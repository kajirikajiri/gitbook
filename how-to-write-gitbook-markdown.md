# How To Write Gitbook Markdown

A first-level title is not working. ↑ is first-level title, that filename.

## A second-level title

### A third-level title

**bold** _italic_ -strikethrough-

* list
* list
* [ ] check list
* [x] check list
* no list
* no list

```text
code block
```

```javascript
console.log('code block')
```

> quotes

vscodeでhintタグ\(下記\)を記入後、 `gitbook build` でエラー

{% hint style="info" %}
info
{% endhint %}

{% hint style="warning" %}
warning
{% endhint %}

{% hint style="success" %}
success
{% endhint %}

{% hint style="danger" %}
danger
{% endhint %}

{% api-method method="get" host="https://api" path="" %}
{% api-method-summary %}

{% endapi-method-summary %}

{% api-method-description %}

{% endapi-method-description %}

{% api-method-spec %}
{% api-method-request %}
{% api-method-path-parameters %}
{% api-method-parameter name="testparam" type="string" required=false %}
describe
{% endapi-method-parameter %}
{% endapi-method-path-parameters %}

{% api-method-headers %}
{% api-method-parameter name="" type="string" required=false %}

{% endapi-method-parameter %}
{% endapi-method-headers %}

{% api-method-query-parameters %}
{% api-method-parameter name="" type="string" required=false %}

{% endapi-method-parameter %}
{% endapi-method-query-parameters %}

{% api-method-form-data-parameters %}
{% api-method-parameter name="" type="string" required=false %}

{% endapi-method-parameter %}
{% endapi-method-form-data-parameters %}

{% api-method-body-parameters %}
{% api-method-parameter name="" type="string" required=false %}

{% endapi-method-parameter %}
{% endapi-method-body-parameters %}
{% endapi-method-request %}

{% api-method-response %}
{% api-method-response-example httpCode=200 %}
{% api-method-response-example-description %}

{% endapi-method-response-example-description %}

```text

```
{% endapi-method-response-example %}

{% api-method-response-example httpCode=400 %}
{% api-method-response-example-description %}

{% endapi-method-response-example-description %}

```text

```
{% endapi-method-response-example %}
{% endapi-method-response %}
{% endapi-method-spec %}
{% endapi-method %}

