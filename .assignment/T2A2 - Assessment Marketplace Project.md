# Assessment: Marketplace Project

## Overview

| Title                   | Marketplace Project                                          |
| ----------------------- | ------------------------------------------------------------ |
| **ID**                  | T2A2                                                         |
| **Type**                | Assessment - Individual                                      |
| **Release Date**        | Week 6, Term 2                                               |
| **Due Date**            | Week 10, Term 2                                              |
| **Course**              | Diploma of Information Technology - Bootcamp Delivery Mode (GenTech) |
| **Subject**             | CMP1042 - Information Systems PRG1048 - Database Systems     |
| **Weighting**           | 50% of CMP1042 50% of PRG1048                                |
| **Marks**               | Total = 108 marks- 54 marks for INT1012- 54 marks for PRG1048 |
| **Learning Outcomes**   | **CMP1042-1** Apply the fundamental concepts comprising Information Systems **CMP1042-3** Engage in modeling, analysis and redesign of organisational processes and data **CMP1042-4** Employ industry standard database technologies to solve business problems **CMP1042-6** Employ methodologies, tools and techniques used for Information Systems development **PRG1048-1** Use appropriate techniques to represent a normalised database given a complex scenario **PRG1048-2** Analyse a complex database scenario and apply query language programming to represent the database infrastructure **PRG1048-5** Apply query language programming techniques to solve complex practical scenarios |
| **Assessment Policies** | Coder Academy utilises the Academy of Information Technology's [policies](https://drive.google.com/drive/u/0/folders/0B7WtFCI0RKBcd3ZVNkFjMm5pOFU) relating to assessment, academic matters and student welfare. If you have any questions about these policies, please speak to your educator, or Coder Academy's student services team. A penalty of 10% of the total mark per day may apply for late submissions, inclusive of weekends. |

## Introduction

A full stack developer needs to be able to demonstrate they can build a complete application from design through to deployment, using appropriate tools and methodologies. This project will allow you to showcase your skills and also  covers off key Diploma learning outcomes required for accreditation.

## Brief

You are to design, build, deploy and present a Ruby on Rails web application (_app_).

You must build a **two sided marketplace**. This _app_ will cater to two markets that your app brings together. For example:

* Ebay with buyers & sellers
* AirBnB with travellers & house owners
* Uber with travellers & drivers

Some suggested starting ideas:

* A tutor marketplace helping uni students find other uni students to help them with their study.
* A recruitment tool to profile candidates to employers.
* Or you can build any two-sided marketplace you like. (Keep it simple!)

You must complete all of the requirements specified below.

## Requirements

Requirements for this project are divided into three major parts,

1. Code/Technology
2. Documentation
3. Presentation

### Code/Technology Requirements

Demonstrate your Ruby on Rails development skills by implementing the following requirements:

| No.  | Requirement                                                  |
| ---- | ------------------------------------------------------------ |
| R1   | Create your _app_ using Ruby on **Rails**.                   |
| R2   | Use **Postgresql** database in development and production.   |
| R3   | Your _app_ will have authentication (eg. Devise).            |
| R4   | Your _app_ will have authorisation (i.e. users have restrictions on what they can see and edit). |
| R5   | Your _app_ will have some type of file (eg. images) uploading capability. |
| R6   | Your _app_ is to be deployed to Heroku (recommended) or AWS. |

> You are free to use appropriate gems

Optional features that you may want to consider implementing include,

| No.  | Optional Features                                          |
| ---- | ---------------------------------------------------------- |
| O1   | A payment system for your product. (e.g. Stripe).          |
| O2   | A third party API (e.g. Omniauth, Geocoding, Maps, etc).   |
| O3   | Transactional emails (eg. using Mailgun).                  |
| O4   | Searching, sorting and/or filtering capability.            |
| O5   | Internal user messaging system within the _app_.           |
| O6   | Admin dashboard for the admin user to administer the site. |

### Documentation Requirements

Documentation for this project must be supplied as part of the following documents:

1. README document
2. Slide deck

#### README document

General project documentation is to be compiled as a single markdown file named `README.md`. This file should contain:

| No.  | Requirement                                                  |
| ---- | ------------------------------------------------------------ |
| R7   | Identification of the _problem_ you are trying to solve by building this particular marketplace _app_. |
| R8   | Why is it a _problem_ that needs solving?                    |
| R9   | A link (URL) to your deployed _app_ (i.e. website)           |
| R10  | A link to your GitHub repository (repo).- _Ensure the repo is accessible by your Educators_ |
| R11  | Description of your marketplace _app_ (website), including:- Purpose- Functionality / features- Sitemap- Screenshots- Target audience- Tech stack (e.g. html, css, deployment platform, etc) |
| R12  | User stories for your _app_                                  |
| R13  | Wireframes for your _app_                                    |
| R14  | An ERD for your _app_                                        |
| R15  | Explain the different high-level components (abstractions) in your _app_ |
| R16  | Detail any third party services that your _app_ will use     |
| R17  | Describe your projects _models_ in terms of the relationships (active record associations) they have with each other |
| R18  | Discuss the database relations to be implemented in your application |
| R19  | Provide your database schema design                          |
| R20  | Describe the way tasks are allocated and tracked in your project |

#### Slide deck

You must present the plan for your website and submit your slides which will form the basis of a professional report.

The presentation and associated Slide deck should include:

| No.  | Requirement                                                  |
| ---- | ------------------------------------------------------------ |
| R21  | An outline of the problem you were trying to solve by building this particular marketplace _app_, and why it's a problem that needs solving |
| R22  | A walkthrough of your _app_                                  |

### Presentation Requirements

Your presentation must:

* be no longer than **10** minutes
* utilise the submitted Slide deck

> You may also be required to answer any questions from your Educators and the audience

## Deliverables

Following is a list of deliverables (which should cover all the above requirements) to include in your submission. The table also details how the information should be organised.

| **Deliverable** | **Description**                                              | **Location (in Zip file)**           |
| --------------- | ------------------------------------------------------------ | ------------------------------------ |
| `README.md`     | General project documentation is to be compiled as a single markdown file named `README.md`. | **/** (Root folder of your zip file) |
| Resources       | All files linked by the `README.md` file must be included in a folder named `docs`. All resources included in this folder must be in either `png`, `jpeg`, `pdf`, or markdown (`md`) format | **docs/**                            |
| Presentation    | Slide deck of your presentation in pdf format                | **ppt/**                             |
| Source Code     | Source code for your entire project                          | **src/**                             |

> Note: **All links to online material should have corresponding screenshots included in submission.**

## Submission

* This project must be submitted via **Canvas**
* Your submission is to be a single zip file (organised as described in the _Deliverables_ section above)

### File

Follow the steps below to correctly prepare file(s) to submit,

1. Create a **directory** called,

```
  {Fullname}_T2A2
```

> Where,
> - `{Fullname}` is to be replaced by your Fullname
> - T2A2 is this Assignment's ID.
2. **Organize** all the files for submission in this directory

> Follow the guidelines provided in the _Deliverables_ section below

1. Create a **zip** file of this directory called,

```
  {Fullname}_T2A2.zip
```

A sample command that can be run in Mac OS X/Linux terminal to achieve creation of the zip file is as follows,

```
zip -r {Fullname}_T2A2.zip {Fullname}_T2A2
```
2. Submit this zip file in Canvas

**Example**

> If your name is **`Luke Skywalker`**,

1. The directory you create will be called **`LukeSkywalker_T2A2`**

```
  mkdir LukeSkywalker_T2A2
```
2. Organize all the files for submission in this directory
3. Create a zip file of this directory. The zip file will be named **`LukeSkywalker_T2A2.zip`**

```
  zip -r LukeSkywalker_T2A2.zip LukeSkywalker_T2A2
```
4. Submit **`LukeSkywalker_T2A2.zip`** in Canvas

### Deadline

You are responsible for submitting this assessment before the deadline date/time. Your assessment `submission-time` is set and logged by Canvas once your entire submission is uploaded and submitted in the system. This `submission-time` is used to verify on time submission or determine if you are liable for any late submission penalties.

Slow internet speeds, long submission/upload times, delay in
uploading, etc are NOT grounds for special consideration (i.e. for
waiving of any applicable late penalty).

> Remember for any valid special consideration request, relevant and
> full support documentation MUST be provided. The outcome of the special
> consideration request will be determined by Academic management and not
> your Educators.

## Learning Outcomes and Criteria

| Subject                       | Learning Outcome | Criterias                                   |
| ----------------------------- | ---------------- | ------------------------------------------- |
| CMP1042 - Information Systems | CMP1042-1        | `CMP1042-1.2`, `CMP1042-1.3`                |
|                               | CMP1042-3        | `CMP1042-3.1`, `CMP1042-3.3`                |
|                               | CMP1042-4        | `CMP1042-4.2`, `CMP1042-4.3`                |
|                               | CMP1042-6        | `CMP1042-6.1`, `CMP1042-6.2`, `CMP1042-6.3` |
| PRG1048 - Database Systems    | PRG1048-1        | `PRG1048-1.1`, `PRG1048-1.2`, `PRG1048-1.3` |
|                               | PRG1048-2        | `PRG1048-2.1`, `PRG1048-2.2`, `PRG1048-2.3` |
|                               | PRG1048-2        | `PRG1048-5.1`, `PRG1048-5.2`, `PRG1048-5.3` |

> Refer to the Term Academic overview for further details

## Marks

Marks and/or results for this Assessment (as released in Canvas) are
only raw marks and may not necessarily reflect final grades on
transcripts. Grades are only finalized after review by the Academic
Board and applicable processing (moderation, etc).

> The `*` symbol in the _rubric_ below indicates only part of the specified requirement is being assessed in the applicable criteria

***

| Key      | Value                    |
| -------- | ------------------------ |
| Version  | 1.0                      |
| Keywords | GenTech; gtb; assessment |