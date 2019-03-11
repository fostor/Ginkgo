using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.AspNetCore.Razor.Runtime.TagHelpers;
using Microsoft.AspNetCore.Razor.TagHelpers;

namespace Fostor.Ginkgo.Web.BsTagHelpers
{
    // You may need to install the Microsoft.AspNetCore.Razor.Runtime package into your project
    [HtmlTargetElement("bs-label")]
    public class LabelTagHelper : TagHelper
    {
        [HtmlAttributeName("bs-width")]
        public string ColWidth { get; set; }
        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            if (ColWidth == "" || ColWidth == null) { ColWidth = "2"; }
            output.TagName = "label";
            output.Attributes.SetAttribute("class", "col-md-" + ColWidth + " control-label");
        }
    }

    [HtmlTargetElement("bs-star")]
    public class StarTagHelper : TagHelper
    {
        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            output.TagName = "span";
            output.Attributes.SetAttribute("style", "color:red;");
            output.PostContent.SetContent("*");
            //output.TagMode = TagMode.SelfClosing;
        }
    }

    [HtmlTargetElement("bs-form")]
    public class FormTagHelper : TagHelper
    {
        public string Name { get; set; }
        [HtmlAttributeName("id")]
        public string Id { get; set; }
        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            output.TagName = "form";
            output.Attributes.SetAttribute("class", "form-validation form-horizontal");
            output.Attributes.SetAttribute("role", "form");
            output.Attributes.SetAttribute("novalidate", "novalidate");
            if ((Name ?? "").Length > 0)
            {
                output.Attributes.Add("name", Name);
            }
            if ((Id ?? "").Length > 0)
            {
                output.Attributes.Add("id", Id);
            }
        }
    }

    [HtmlTargetElement("bs-row")]
    public class FormRowTagHelper : TagHelper
    {
        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            output.TagName = "div";
            output.Attributes.SetAttribute("class", "form-group");
        }
    }

    [HtmlTargetElement("bs-check")]
    public class CheckboxTagHelper : TagHelper
    {
        [HtmlAttributeName("bs-width")]
        public string ColWidth { get; set; }
        [HtmlAttributeName("name")]
        public string Name { get; set; }
        [HtmlAttributeName("id")]
        public string Id { get; set; }
        [HtmlAttributeName("label")]
        public string Label { get; set; }
        [HtmlAttributeName("checked")]
        public string Checked { get; set; }
        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            if (ColWidth == "" || ColWidth == null) { ColWidth = "2"; }
            output.TagName = "div";
            output.Attributes.SetAttribute("class", "col-md-" + ColWidth + " checkbox");
            var input = new TagBuilder("input");
            input.AddCssClass("filled-in");
            input.Attributes.Add("type", "checkbox");
            //input.Attributes.Add("value", "true");
            if ((Name ?? "").Length > 0)
            {
                input.Attributes.Add("name", Name);
            }
            if ((Id ?? "").Length > 0)
            {
                input.Attributes.Add("id", Id);
            }
            if ((Checked ?? "").Length > 0)
            {
                input.Attributes.Add("checked", "checked");
            }
            var label = new TagBuilder("label");
            if ((Id ?? "").Length > 0)
            {
                label.Attributes.Add("for", Id);
            }
            label.InnerHtml.Append(Label);
            output.Content.AppendHtml(input);
            output.Content.AppendHtml(label);

        }
    }

    [HtmlTargetElement("bs-input")]
    public class InputTagHelper : TagHelper
    {
        [HtmlAttributeName("bs-width")]
        public string ColWidth { get; set; }
        [HtmlAttributeName("type")]
        public string Type { get; set; }
        [HtmlAttributeName("name")]
        public string Name { get; set; }
        [HtmlAttributeName("id")]
        public string Id { get; set; }
        [HtmlAttributeName("value")]
        public string Value { get; set; }
        [HtmlAttributeName("readonly")]
        public string Readonly { get; set; }
        [HtmlAttributeName("requried")]
        public string Required { get; set; }
        [HtmlAttributeName("min")]
        public string Min { get; set; }
        [HtmlAttributeName("max")]
        public string Max { get; set; }
        [HtmlAttributeName("maxlength")]
        public string MaxLength { get; set; }
        [HtmlAttributeName("placeholder")]
        public string PlaceHolder { get; set; }
        public override void Process(TagHelperContext context, TagHelperOutput output)
        {
            if (ColWidth == "" || ColWidth == null) { ColWidth = "4"; }
            if (Type == "" || Type == null) { Type = "text"; }
            output.TagName = "div";
            output.Attributes.SetAttribute("class", "col-md-" + ColWidth);
            var line = new TagBuilder("div");
            line.AddCssClass("form-line");
            var input = new TagBuilder("input");
            input.AddCssClass("form-control");
            input.Attributes.Add("type", Type);
            if ((Name ?? "").Length > 0)
            {
                input.Attributes.Add("name", Name);
            }
            if ((Id ?? "").Length > 0)
            {
                input.Attributes.Add("id", Id);
            }
            if ((Value ?? "").Length > 0)
            {
                input.Attributes.Add("value", Value);
            }
            if ((Min ?? "").Length > 0)
            {
                input.Attributes.Add("min", Min);
            }
            if ((Max ?? "").Length > 0)
            {
                input.Attributes.Add("max", Max);
            }
            if ((MaxLength ?? "").Length > 0)
            {
                input.Attributes.Add("maxlength", MaxLength);
            }
            if ((PlaceHolder ?? "").Length > 0)
            {
                input.Attributes.Add("placeholder", PlaceHolder);
            }
            if ((Required ?? "").Length > 0)
            {
                input.Attributes.Add("required", "required");
            }
            if ((Readonly ?? "").Length > 0)
            {
                input.Attributes.Add("readonly", "readonly");
            }
            line.InnerHtml.AppendHtml(input);
            output.Content.AppendHtml(line);

        }
    }
}
