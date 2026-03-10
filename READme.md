> <img src="media/image1.png" style="width:3.13761in;height:1.31733in" />
>
> **NEOF Protocol: Submitting sequence data to the NCBI - SRA**

# **Scope and Applicability**

This protocol outlines the process for submitting sequence data
generated (regardless of sequencing platform) in NERC- or NEOF-supported
projects, through the Visitor Facility and Genomics Laboratory, Centre
for Genomic Research - University of Liverpool or through third-party
service providers, to and making data publicly available through the
NCBI - Sequence Read Archive (SRA).

# **Prerequisites**

You would need access to your sequence data and related metadata or have
the right to access and submit these if completing the submission on
behalf of someone else.

# 

# **Protocol**

1)  An overview of the submission process using the NCBI - SRA
    Submission Portal, with additional information and video tutorials,
    is available here:

    [<u>https://www.ncbi.nlm.nih.gov/sra/docs/submitportal/</u>](https://www.ncbi.nlm.nih.gov/sra/docs/submitportal/)


2)  Source all your data and metadata (detailed further below) and
    prepare these ahead of your submission. The submission process does
    allow you to provide information interactively, but it is
    time-consuming and demanding. Using pre-prepared templates is more
    efficient.


3)  Source your raw sequence data and prepare this to be uploaded.

- Raw data from most of the major sequencing platforms and technologies
  are supported and in a range of formats (including BAM, CRAM, SFF,
  HDF5 and FASTQ). These instructions assume you are submitting sequence
  read data rather than BAM files.

- Data formats must include per-base quality scores. As such, FASTA
  files cannot be submitted (unless submitted as a FASTA/QUAL file pair
  or as a reference sequence for a BAM file).

- Files can be compressed with gzip or bzip or packaged in a tarball. Do
  not use zip.

- More information on file formats can be found here:
  [<u>https://www.ncbi.nlm.nih.gov/sra/docs/submitformats/</u>](https://www.ncbi.nlm.nih.gov/sra/docs/submitformats/)

- Submissions should be of 1000 samples or less.

- Individual files should not be larger than 100 GB. If they are, they
  will need to be split before submission.

- Similarly, individual submissions should be less than 5 TB. If these
  are larger, they will need to be split over multiple submissions.

- Sequence read files that include multiple samples (such as ddRAD data
  or metabarcoding studies where there was additional multiplexing of
  samples) will need to be demultiplexed prior to submission. See Step
  5.

- **Important:** While none of data generated in NEOF or NERC projects
  explicitly target human DNA, there are concerns around contamination
  and the presence of human sequence reads in data sets. NCBI encourages
  users to screen data and remove any human sequences prior to
  submission. For most metabarcoding and metagenomic studies, the
  presence of human reads will be confirmed in your data analysis. For
  other applications, this might require additional/targeted screening.
  NCBI provides a tool (Human Scrubber, or the Human Read Removal Tool),
  which can be downloaded from GitHub and DockerHub, to do this
  yourself. You can also request this service after submitting your data
  (see below). More information is available here:

    [<u>https://ncbiinsights.ncbi.nlm.nih.gov/2023/02/02/scrubbing-human-sequences-sra-submissions/</u>](https://ncbiinsights.ncbi.nlm.nih.gov/2023/02/02/scrubbing-human-sequences-sra-submissions/)


4)  Gather and prepare all required project and sample information
    needed to complete the mandatory fields in your submission. This
    includes:

    The **BioProject accession number** (if already available and relevant).
    The BioProject is an umbrella record containing the overall details and
    aims of your research project or a larger project that yours may form
    part of.

    A **project title**: A short project title that will be suitable for
    public display.

    A **public description**: A brief paragraph description of the research,
    study goals and relevance (4 000 character limit).

    **BioSample attributes/information**. The BioSample accession is a
    record that holds the biological and physical information about your
    sample. You can provide this information by populating a table online or
    by filling out and uploading a template Excel spreadsheet or
    tab-delimited text file. The relevant templates are provided for you
    according to your chosen submission tool (see Step 16 below). The tool
    and template will depend on the study, e.g., single species (WGS or
    ddRAD population genomics or genome assemblies), multiple species or
    environmental/mixed DNA (metagenetics, metabarcoding and metagenomic)
    studies, targeted amplicons and genomic sequences.

    A few of the more common templates are linked provided for download here:\
\
- [<u>Template for multiple sequence read files from a model
organism</u>](https://docs.google.com/spreadsheets/d/1jeIcFDJvJKnaKeCEP-T0Lio59_c6dCon/edit?usp=sharing&ouid=103704150987277628350&rtpof=true&sd=true)
(e.g., WGS, ddRAD, RNAseq, genome assembly)

\- Template for multiple sequence read files from an individual or
individuals of the same species (e.g., WGS or ddRAD popgenomics, RNAseq,
genome assembly)

    In the respective templates, green fields are mandatory (but “NA”,
    “missing” or “not collected” are valid entries), at least one blue field
    needs to be completed, and yellow fields are optional. If you already
    have a BioProject accession number, this will need to be captured here.
    If you are creating one with this submission, this column can be left
    blank. A full explanation of the fields is not provided here, because
    this varies by application, tool and template, but explanations are
    available online at that particular step (see Step 16).

    Please give due consideration as to what information you provide here,
    weighing up FAIR data and Open Science principles, data security and
    privacy, and funder and stakeholder obligations/interests, alongside the
    risk to the research should the information be made available prior to
    publication.


5)  Gather and prepare the SRA Metadata for your submission. The SRA
    Metadata relates to your library preparation and the sequence data
    you wish to submit. This can be done by populating a table online or
    by filling in and submitting a template Excel spreadsheet or
    tab-delimited text file (see Step 17).

    The template Excel spreadsheet is available to download here

    If you already have a BioProject accession number, this will need to
    be provided (as above). If you are creating a new BioProject with this
    submission, leave that column empty.

    If you have BioSample accessions for these samples, these will need to
    be captured in the “Sample names” column (as “SAMN#”). If you are
    creating new BioSample records with this submission, you will need to
    populate the “Sample name” column with the sample names that you have
    used in the BioSamples attributes Excel spreadsheet or text document.
    These must match identically, and sample names can’t be duplicated (in
    a submission or across your account).

    Each row in the template refers to an *Experiment*, which is a unique
    combination of: *sample* + *library* + *sequencing strategy* +
    *layout* + *instrument model*

    Each *Experiment* should be given a unique *library_ID*.

    Only one *Run* is allowed per *Experiment*. If identical libraries are
    sequenced again, all *Experiment* entries need to be placed under the
    same *Run*. This is done by placing all the file names of sequence
    data from that *Experiment* in the same row.

    File names of paired-end sequencing are always placed in the same row
    (rather than duplicating rows).

    All file names need to match the file names of the data you wish to
    upload exactly and in full, including the extensions.

    All file names in a submission must be unique with respect to the
    named files themselves. If data from multiple samples or *Experiments*
    are contained within the same sequence data file (e.g., in ddRAD
    studies or additionally multiplexed metabarcoding data), these will
    need to be demultiplexed prior to submission. You cannot upload data
    files that have the same name (e.g., identically named files from
    different sequencing runs).

    If you have archived your files with tar, you need to provide the
    names of the individual archived files rather than the archive itself.
    This does not apply for the tar archives of .fast5 files of ONT data.


6)  Using your preferred browser, go directly to the NCBI - SRA
    Submission Portal:

> [<u>https://submit.ncbi.nlm.nih.gov/subs/sra/</u>](https://submit.ncbi.nlm.nih.gov/subs/sra/)

7)  If you have an existing account, log in using the button on the top
    right or through the link on the page. This will take you to a page
    where you can log in using an existing profile (Google, ORCiD,
    Microsoft and others).

> If you do not have an account, click the log-in button or link. An
> option to register and create an account will be available on the next
> page. Follow the instructions provided.

8)  Once you are logged on (with or without the creation of a new
    account), you will land on the main SRA Submission Portal page. Tabs
    on the top will direct you to “Home”, “My submissions”, “Manage
    data”, “Templates” and “My profile”. If you are not there
    automatically, navigate to the “My submissions” tab.

9)  On this page, there are expandable text boxes providing brief
    instructions, guidance on dealing with human data (as above), and
    information on the options for submitting data through browsers,
    cloud services, Aspera command line or FTP. Please read the
    instructions for your preferred method, considering the location of
    your data, file sizes and the bandwidth available to you. We
    recommend using Aspera Connect, directly from Stanage if you are
    analysing your data on this University of Sheffield HPC.

10) When you are ready to begin your submission, click the “New
    Submission” button (in the middle near the top of the page).

11) Tabs at the top of the page will guide you through the submission
    process.

12) Under the first tab (“Submitter”), you will need to provide your
    personal and contact details, and the details of the institution
    submitting the data. Once all mandatory (\*) fields are populated,
    click “Continue” at the bottom of the page.

13) This will take you to the second tab (“General Info”), under which
    general project information is captured.

**BioProject accession number:** If you have previous submissions for
your particular project or a larger project in which yours is embedded
and the same BioProject number applies, you can confirm that you already
have a BioProject number and provide this. If you do not have a
BioProject number, select “No”. A BioProject number and record will be
generated for you through the submission process.

**BioSample:** As above, if you already have BioSample accession numbers
for your samples (from another submission of the same samples), you can
select “Yes”. These numbers are not required at this stage. If you do
not have BioSample accession numbers, click “No”. These will also be
created upon submission.

**Release date:** You can choose whether to release your data as soon as
your submission is processed or provide a custom release date. Consider
carefully how long it is likely to be before you can write up and
publish the research based on your data when deciding this embargo
period. Once your work is published, the data will be released
regardless of the date you specified, but be careful of setting a date
that may precede the publication of the work. Also be aware that if you
release the BioProject and BioSample records, this will automatically
trigger the full release of all associated data. The release date can be
changed following submission and processing (see 20 below). More
information on updating submissions and records can be found further
below and here:
[<u>https://www.ncbi.nlm.nih.gov/sra/docs/submitupdate/</u>](https://www.ncbi.nlm.nih.gov/sra/docs/submitupdate/)

Once complete, click “Continue” at the bottom of the page.

14) Under the “Project Info” tab, you will need to:

Provide the **Project title** (as above),

Provide the **Public description** (as above)

Indicate (under **Relevance**) whether your research is Agricultural,
Environmental, Evolution or dealing with a Model Organism. As a NEOF or
NERC project, it is unlikely to be Industrial or Medical.

Indicate whether your study is part of a larger umbrella project that is
already registered.

Optionally, you can provide links to any project pages, link through to
any grants or capture this information manually, or provide information
around any consortia involved in the research.

Once done, click “Continue” below.

15) Under the “BioSample” tab, various submission packages/tools will be
    available according to your sample type or study. Through the
    landing window, you will have an overview of all packages, while
    tabs at the top will take you specifically to the packages for MAG
    (metagenome assembled genome) data or metagenome submissions.

> If you are dealing with a single species (e.g., a population genomics
> study or genome assembly), you can enter the organism name in the
> field and the packages will be filtered, providing you with suitable
> options. Alternatively or depending on the study, you can select a
> tool from the list. These include options for single species studies,
> multiple species studies and environmental/mixed DNA (metagenetics,
> metabarcoding and metagenomic) studies, targeted amplicons and genomic
> sequences. Please read the descriptions carefully before deciding.
>
> Once you have selected the appropriate package, click “Continue”

16) You will now need to provide your BioSample attributes/information.
    You can use a built-in table editor and provide this information in
    your browser or you can choose to upload an Excel file or
    tab-delimited text file with the required information. Examples of
    the common Excel templates are provided above for you to populate
    ahead of this step. If you have not yet done so or if you require a
    template for a different tool, that will be available for download
    when you click the button to indicate that you wish to upload a
    file. A link will also be available to a page explaining the fields
    and data/information required for that template. The templates
    themselves also contain explanations as text annotations/comments.

> Once the spreadsheet is populated, upload it. Alternatively, complete
> the online table.
>
> Then, click “Continue”

17) You will now need to provide the SRA Metadata. This is the
    information directly related to your library preparation and the
    sequence data you wish to upload. Again, there are options for
    populating a table online or downloading an Excel or tab-delimited
    text template (see above). If you have not accessed and completed
    this already, the template will be available to download when you
    select the button indicating that you wish to upload the data.

> Once you have completed the template and uploaded the file, or
> completed the online table, click “Continue”.
>
> This should progress you to the next step. If there are errors in your
> submission, the page won’t progress and you will be alerted as to what
> the issues are. Correct these, resubmit the template (or update the
> table) and click “Continue”.

18) At the next step (“7: Files”), you will need to submit your sequence
    data. There are three radio-buttons to select the means by which you
    want to submit the data.

> Whatever the method you choose to upload your data, there is a
> check-box for the submission to finish automatically. Any checks on
> your data will be done in the background and you will be notified by
> email of any issues. Select this.
>
> 18.1) **Through FTP or an Aspera Connect command-line preload.** This
> is the **recommended approach** as you can upload your data directly
> from Stanage or the HPC on which you are analysing your data. Although
> the instructions for uploading via FTP are provided, it appears as
> though FTP transfer may no longer be supported or easily accomplished.
>
> When you select this approach in order to use Aspera Connect, a button
> will appear for you to request a pre-load folder. You should also see
> three expandable boxes with general file upload recommendations and
> instructions for the Aspera command line and FTP uploads. If you don’t
> see these immediately, select the “Select preload folder” button and
> refresh the page.
>
> If you are using Aspera Connect, download the key file from the link
> in the expandable box and upload this to Stanage/your HPC. This key
> (*aspera.openssh*) establishes and authenticates a link with the NCBI
> receiving directory and enables your submission. The expandable box
> will also have command line instructions to complete your upload. You
> can submit these interactively or place them in a submission/bash
> script (see below). The code should look like something like this:\
> \
> ascp -i /path/to/key/aspera.openssh -QT -l100m -k1 -d
> /path/name_of_folder_with_data
> subasp@upload.ncbi.nlm.nih.gov:uploads/username_e-mail_address_OyA0dig4
>
> **If you are uploading your data from Stanage**, you will need to
> activate the aspera conda environment to load the Aspera Connect CLI.
> Log on to Stanage through your terminal, start an interactive session
> on a worker node and navigate to the directory which houses the
> directory with your data. Then activate the conda environment:
>
> *conda activate aspera*
>
> Check whether this is loaded and working by checking the version:\
> \
> *ascp --version*
>
> To upload the data interactively, you can submit the command provided
> in the expandable box. The path to the key **must** be an absolute
> path, whereas you can use a relative path to the directory with your
> data. If you have a large among of data and it is likely to take a
> long time, you can download a pre-prepared submission script
> [<u>here</u>](https://drive.google.com/file/d/1MxtVDPfpBhA30fWm9xMV4ZbQlSPNe_6f/view?usp=sharing),
> upload that to your scripts folder on Stanage and launch it like this,
> copying the upload location information from the command in the
> expandable box:
>
> *sbatch scripts/sra_aspera_upload.sh \\*
>
> *-K absolute/path/to/key/aspera_open.ssh \\*
>
> *-D path/to/directory/with/data/to/upload \\*
>
> *-U
> “subasp@upload.ncbi.nlm.nih.gov:uploads/username_e-mail_address_OyA0dig4”
> (the connection to the upload server and upload location)\*
>
> Once submitted you can (interactively or by submission script), you
> can log out of the SRA submissions portal while uploading the data and
> return later.
>
> Once your upload is complete, the data will be available on the portal
> for you to view after 10 minutes. Your data will have been placed in a
> pre-load folder. On returning to the portal or logging in (and
> navigating to your submission and the “7: Files” section), the data
> will be available under the “Select preload folder” button. Highlight
> the preloaded data folder that you want to submit and select “Use
> selected folder”. Then click “Continue”.
>
> **If uploading the data from your own system**, make sure that IBM
> Aspera Connect (for your operating system) is installed (see 18.1 and
> the instructions in the expandable box for installing the software).
> Use a terminal (MobaXTerm, Putty or similar on PC or the Terminal on a
> Mac) and execute the command provided, specifying the paths for the
> key and your data. Depending on your installation, the \`ascp\`
> command may not be found through your bash profile. If that is the
> case, find the installation location of IBM Aspera Connect on your
> system/computer and provide a full path to the application; as an
> example:
>
> /Applications/IBM_Aspera_Connect/Resources/Contents/ascp -i
> /path/to/key/aspera.openssh -QT -l100m -k1 -d
> /path/name_of_folder_with_data
> subasp@upload.ncbi.nlm.nih.gov:uploads/username_e-mail_address_OyA0dig4
>
> This will begin the data upload in real-time. You can log out of the
> SRA submissions portal while uploading the data and return later, if
> needed.
>
> Once your upload is complete, the data will be available on the portal
> for you to view after 10 minutes. Your data will have been placed in a
> pre-load folder. On returning to the portal or logging in (and
> navigating to your submission and the “7: Files” section), the data
> will be available under the “Select preload folder” button. Highlight
> the preloaded data folder that you want to submit and select “Use
> selected folder”. Then click “Continue”.
>
> 18.2) Through your web browser or an Aspera plug-in
>
> Here, you can upload your data directly through the browser or use an
> Aspera Connect plug-in for your browser. Using the browser interface
> should be fine for locally stored data if you have fewer than 300
> files, if the total upload is less than 10 Gb and with individual
> files smaller than 2 Gb. If you have larger files, use the Aspera
> Connect plug-in. You can download IBM Aspera Connect for your OS from
> [<u>https://www.ibm.com/products/aspera/downloads#cds</u>](https://www.ibm.com/products/aspera/downloads#cds)
> and install it. The plug-in should automatically be available in your
> browser when you open it.
>
> 18.3) Through a cloud-based system (Amazon Web Service or GoogleCloud)
>
> When selected, expandable boxes will be available providing
> instructions for using these services to upload your data.
>
> Whatever the method of upload, a summary page, indicating that your
> data were submitted and are being processed, will appear if there are
> no issues with your data, SRA metadata or sample metadata and the
> correspondence among these . If there are issues, these will be
> flagged on the portal and communicated by email. Please revisit these
> and resubmit any corrected data.

19) When your submission is processed successfully, you should receive
    three emails:

- One providing the details of the BioProject registration (if your
  submission established a new BioProject),

- One providing the BioSample accession numbers (if your submission
  involved new samples without a prior BioSample accession number), and

- A notification that your submission has been successfully processed
  (along with the final BioProject accession number to use in your
  publications or reports).

20) If you need to make any changes to your submission, you can manage
    your submissions through the “Manage data” tab at the top of the
    landing page when you log in to your SRA account/Submission Portal
    (and on other pages).

> When you select this, you will see each of your submissions. Clicking
> the submission’s Accession/BioProject number will provide an overview.
> This will allow you to:
>
> Create a reviewer link (allowing paper reviewers advance access to
> your data)
>
> Change the release data
>
> Edit/change the Title
>
> Edit/change the Description
>
> Change the Grants/funding information
>
> Add/edit/change any publication information
>
> There are tabs at the bottom of this page to view the SRA Metadata and
> BioSample details. There are options to edit the SRA Metadata or
> request its removal. The SRA Metadata and BioSample information can
> also be viewed from the list of submissions, but without the ability
> to edit.
>
> Most of the changes you may need to make can be done through this
> portal, but any additional changes can be requested by emailing
> [<u>sra@ncbi.nlm.nih.gov</u>](mailto:sra@ncbi.nlm.nih.gov), providing
> the relevant submission, accession and BioProject numbers. It is
> advised to contact the helpdesk for any changes rather than
> resubmitting data files.
