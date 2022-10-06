-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2021 at 07:56 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(12, 'CSE'),
(13, 'Accounting'),
(14, 'English'),
(15, 'Mathematics'),
(16, 'Bangla'),
(17, 'Finance & Banking'),
(18, 'History'),
(19, 'Economics');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(1, 'sadia', 'afrin', 'tarin.cse5.bu@gmail.com', 'test message test messagetest messagetest messagetest messagetest message', 1, '2021-12-01 16:12:48'),
(3, 'sadia', 'afrin', 'sadiatarin39@gmail.com', 'gghn', 1, '2021-12-02 10:03:28'),
(5, 'sadia456', 'Rahman', 'sadiarahman29@gmail.com', 'hello, i have a problem. i want to know about your about section.', 0, '2021-12-02 10:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Copyright e-LEARN');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About Us', '<p>This is a privacy policy for e-Learn. Our homepage on the Web is located at .&nbsp;The full text of our privacy policy is available on the Web at.&nbsp;Users may go to&nbsp;for information on how to opt-in or opt-out of use of their information.</p>\r\n<p>We invite you to contact us if you have questions about this policy. You may contact us by e-mail at .</p>'),
(3, 'Privacy Policy', '<h3>1. Information We Collect.</h3>\r\n<p>In operating the Website we may collect and process the following data about you (collectively, &ldquo;Personal Data&rdquo;):</p>\r\n<ul>\r\n<li>Information that you provide by filling in forms on our Website, such as when you register to download any software accessed through our Website (&ldquo;Software&rdquo;), receive information from Ozar or subscribe to any Website services;</li>\r\n<li>Details of your use of our Website or any Software, including visits to our Website and the resources you access, the number of times the Software is launched, the device IP address, the version of the Software used, Website traffic data, location data, weblog statistics and other communications data;</li>\r\n<li>Information that you provide in connection with any support or technical services for the Software;</li>\r\n<li>Information required by Ozar to (1) audit your Software usage for anti-piracy purposes; and (2) verify a valid registration, and identify if new updates are available for your server or other computing device prior to notifying you to install a new Software update;</li>\r\n<li>Information about transactions carried out over this Website;\r\n<ul>\r\n<li>Products you&rsquo;ve viewed: we&rsquo;ll use this to, for example, show you products you&rsquo;ve recently viewed</li>\r\n<li>Location, IP address and browser type: we&rsquo;ll use this for purposes like estimating taxes and shipping</li>\r\n<li>Shipping address: we&rsquo;ll ask you to enter this so we can, for instance, estimate shipping before you place an order, and send you the order!</li>\r\n<li>We&rsquo;ll also use cookies to keep track of cart contents while you&rsquo;re browsing our site.</li>\r\n<li>We will track your location based on your IP address in order to monitor for account reuse and send you promotions applicable to your geographic area (like nearby conferences). To detect your location, we will send your IP address to the geolocation services of usersinsights.com. We will store the country, region, city and coordinates associated with your IP address. We will also store your IP address in a hashed format so we can check it for changes.</li>\r\n<li>We will track your last login date and number of sessions in order to monitor for account reuse.</li>\r\n<li>We will track your browser name, browser version and device platform in order to tailor our site better for your viewing experience.</li>\r\n</ul>\r\n</li>\r\n<li>Information provided to us when you communicate with us for any reason.</li>\r\n<li>For European Union Residents, information collected and processed is limited to:\r\n<ul>\r\n<li>Information that you voluntarily provide by filling in forms on our Website, such as when you subscribe to company emails or other marketing communications. By giving us this information, you consent to this information being collected, used, disclosed, transferred to the United States and stored by us, as described in this Privacy Policy.</li>\r\n<li>Information that we collect automatically, including the device IP address, location data, browser data and country data. We may collect this information through the use of cookies. Our use of cookies is discussed in more detail below.</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<h3>2. Use of Your Personal Data.</h3>\r\n<p>The Personal Data that we collect and store is primarily used to enable us to provide our services to you, communicate with you per your request, and to enable your access to and use of the Website and/or the Software. In addition, we may use the Personal Data for the following purposes:</p>\r\n<ul>\r\n<li>To meet our contractual commitments to you.</li>\r\n<li>To notify you about any changes to our Website, such as improvements or service/product changes, that may affect our service.</li>\r\n<li>To allow us to administer the Website;</li>\r\n<li>To provide you with information requested from us relating to our products or services;</li>\r\n<li>To improve our products and services;</li>\r\n<li>To personalize the Website for you.</li>\r\n</ul>\r\n<p>Further, we may use your Personal Data so that you can be provided with information about goods and services which we consider may be of interest to you. We may contact you about these goods and services by any of the methods that you consented at the time your Personal Data was collected.&nbsp;We use MailChimp as our marketing automation platform. By consenting to receiving our communications, you acknowledge that the information you provide will be transferred to MailChimp for processing in accordance with their privacy policy and terms.</p>\r\n<p>If you do not want us to use your data, you will have the opportunity to withhold your consent to this when you provide your details to us on the Website form on which we collect your data.</p>\r\n<p>Please be advised that we do not reveal Personal Data about identifiable individuals to our customers but we may, on occasion, provide them with aggregate statistical information about those who visit our Website.</p>\r\n<h3>3. Use of Cookies.</h3>\r\n<p>On occasion, Ozar may gather information about your server or other computing device for our services and to provide statistical information regarding the use of our Website to third parties for analytical purposes, as described below. Such information is statistical data about our visitors and their use of our site and will not identify you personally. It is used by us to analyze how visitors to our Website interact with the Website so that we can continue to develop and improve our Website. We may gather information about your general internet use by using a cookie file that is downloaded to your computer. Where used, these cookies are downloaded to your computer automatically.</p>\r\n<p>All computers have the ability to decline cookies. This can be done by activating the setting on your browser which enables you to decline the cookies. Please note that should you choose to decline cookies, you may be unable to access particular parts of our Website.</p>\r\n<h3>4. Storing and Protecting Your Personal Data.</h3>\r\n<p>We are committed to ensuring that your Personal Data is secure. In order to prevent unauthorized access to or disclosure of your Personal Data, we have put in place suitable physical, electronic and managerial procedures to safeguard and secure the Personal Data we collect online. Ozar operates secure data networks protected by industry standard firewall and password protection systems. Our security and privacy policies are periodically reviewed and enhanced as necessary and only authorized individuals have access to the Personal Data provided by our customers. Ozar will take reasonable technical and organizational precautions to prevent the loss, misuse or alteration of your Personal Data. Ozar will transfer and store all your Personal Data on secure servers which may be managed by third parties. Any Personal Data relating to electronic transactions entered into via this Website will be protected by encryption technology. By submitting your Personal Data, you agree to this transfer, storing or processing.</p>\r\n<p>The transmission of Personal Data via the Internet is not completely secure and therefore we cannot guarantee the security of Personal Data sent to us electronically and transmission of such Data is therefore entirely at your own risk. Where we have given you (or where you have chosen) a password so that you can access certain parts of our site or any of our Software, you are responsible for keeping this password confidential.</p>\r\n<h3>5. Disclosing Your Personal Data.</h3>\r\n<p>We will not disclose your Personal Data to third parties except in certain circumstances:</p>\r\n<ul>\r\n<li>Where we used third parties to provide routine support for Ozar&rsquo;s internal operations, including the delivery and receipt of e-mail or other internet-based communications or the creation of online meetings;</li>\r\n<li>Where we sell any or all of our business and/or our assets to a third party;</li>\r\n<li>Where we are legally required to disclose your Personal Data; or</li>\r\n<li>In order to establish, exercise or defend our legal rights.</li>\r\n</ul>\r\n<p>Where Ozar discloses your Personal Data to its agents or sub-contractors for these purposes, the agent or sub-contractor in question will be obligated to use that Personal Data in accordance with the terms of this Privacy Policy.</p>\r\n<h3>6. Public Information.</h3>\r\n<p>We have public blogs on our Website. Any information you include in a comment on our blog may be read, collected, and used by anyone. If your Personal Data appears on our blogs and you want it removed, contact us at&nbsp;</p>\r\n<h3>7. Data Retention For European Union Residents.</h3>\r\n<p>Upon ,we will provide you with any of your Personal Data. We will retain your Personal Data for as long as you have consented to receiving our communications or until such time as you request that we cease storing your Personal Data. We may also retain and use your information in order to comply with our legal obligations, resolve disputes and prevent abuse.</p>\r\n<h3>8. Third Party Links.</h3>\r\n<p>You may find links to third party websites on our Website. These websites may have their own privacy policies which you should review. Ozar does not accept any responsibility or liability for third party websites or the privacy policies referenced therein.</p>\r\n<h3>9. Hosting.</h3>\r\n<p>This Website is hosted by.&nbsp;Certain Personal Data collected by Ozar may be stored by WPengine in accordance with the WPengine.com Privacy Notice, which can be found at .</p>\r\n<p>Your data may also be shared with our other hosting partners:</p>\r\n<ul>\r\n<li>&nbsp;because we filter possible spam comments with Askimet</li>\r\n<li>because you may book a call with us there</li>\r\n<li>because we show ads for our products</li>\r\n<li>&nbsp;because we track page popularity and user activity</li>\r\n<li>&nbsp;because you may be viewing our pages through their cache</li>\r\n<li>&nbsp;because we use their fonts to render these pages</li>\r\n<li>because you may buy our products through them</li>\r\n<li>&nbsp;because you may use their payment methods</li>\r\n<li>because we bill you through their accounting software</li>\r\n<li>&nbsp;because they process your credit card payments</li>\r\n<li>because we sell our products through them</li>\r\n<li>because we embed our training videos on the site</li>\r\n<li>&nbsp;because we embed YouTube videos on the site</li>\r\n</ul>\r\n<h3>10. Controlling your Personal Data.</h3>\r\n<p>You may choose to restrict the collection or use of your Personal Data in the following ways:</p>\r\n<p>Whenever you are asked to fill in a form on the Website, refrain from opting in to having your Personal Data be used by anybody for direct marketing purposes;</p>\r\n<p>If you have previously agreed to us using your Personal Data for direct marketing purposes, you may change your mind at any time&nbsp;&nbsp;or by notifying us by e-mail at&nbsp;and we will erase it;</p>\r\n<p>If you believe that any Personal Data we are holding on you is incorrect or incomplete, please email us at&nbsp;&nbsp;We will promptly correct any Personal Data found to be incorrect.</p>\r\n<h3>11. Other Information.</h3>\r\n<p>If you are a European Union Resident and have an unresolved privacy or personal information collection, use, or disclosure concern that we have not addressed satisfactorily, please contact the EU Data Protection Authorities. For more information on how to contact the EU Data Protection Authorities, please visit:</p>\r\n<h3>12. Contacting Us.</h3>\r\n<p>We welcome any queries, comments or requests you may have regarding this Privacy Policy. Please do not hesitate to contact us at&nbsp;</p>\r\n<p>If you prefer to write to us then our contact address is:</p>\r\n<p>Brent Ozar Unlimited<br />PO Box 29502, ECM #45779<br />Las Vegas, NV 89126-9602</p>\r\n<h3>13. Updating this statement.</h3>\r\n<p>Ozar may update this privacy policy by posting a new version on this Website. You should check this page occasionally to ensure you are familiar with any changes. Any changes to our Privacy Policy will supersede this version of our Policy.</p>'),
(5, 'Terms & Conditions', '<p><strong>1. Access to the Site and Operation of the Site.</strong></p>\r\n<p>a. You understand that, except for information, products or services clearly identified as being supplied by or on the Site, including the Materials, Ozar does not operate, control or endorse any information, products or services on the Internet in any way. YOU ASSUME TOTAL RESPONSIBILITY AND RISK FOR YOUR USE OF THE SITE AND THE INTERNET.</p>\r\n<p>b. In order to use the Site and access the Materials, you will require a high-speed Internet connection. You are solely responsible for ensuring that you have sufficient and compatible hardware, software, telecommunications equipment and Internet service necessary for use of the Site.</p>\r\n<p>c. You are responsible for implementing sufficient procedures and safeguards to satisfy your particular requirements for the accuracy of data input and output and for maintaining a means external to the Site for the reconstruction of any lost data.</p>\r\n<p><strong>2. License.</strong></p>\r\n<p>Subject to your agreement and compliance with the terms and conditions of this Agreement, Ozar grants you a limited, personal, royalty-free, revocable, non-exclusive, non-transferable license to:</p>\r\n<p>a. Access the Site and use the Materials, solely for your personal, informational and non-commercial internal purposes, for the period of time specified in the shopping cart. The term of the license for the applicable Materials is also stated on the invoice generated at the time of purchase; and</p>\r\n<p>b. Print and download portions of the Materials from the Site solely for your own personal, informational and non-commercial use.</p>\r\n<p>Ozar reserves and retains all rights in and to the Materials and the Site not expressly granted to you herein. The term &ldquo;Materials&rdquo; means the online training modules set forth on the Site, including without limitation any component of videos, guided instruction, tutorials, quizzes, course materials and handouts, or other materials, as well as all other documentation, files and presentation slides (and their selection and arrangement), ideas, concepts, creations, designs, engineering details, techniques, inventions, processes, works of authorship, and related content together with all updates, patches, fixes, modifications and enhancements thereto, including releases of new versions, whether provided to you via download, automatically without additional consent or action on your part or otherwise. The Materials may include clipart, photo images, video content, and audio clips (&ldquo;Clips&rdquo;), and your responsibilities and restrictions related to the Materials apply to the Clips.</p>\r\n<p><strong>3. Updates.&nbsp;</strong>Ozar reserves the right to change, modify or update the Materials, the Site or the content therein at any time in its sole discretion. You are solely responsible for periodically visiting the Site to access any such changes, modifications or updates. Any such changes, modifications or updates will become part of, an incorporated by this reference into the terms of, this Agreement without further action on the part of Ozar.</p>\r\n<p><strong>4. Third Party Materials.</strong></p>\r\n<p>a. The Materials may contain Clips or other items accessible on the Site which are owned by Ozar or which are licensed from third parties (the &ldquo;Third Party Clips&rdquo;). Without limiting any other term or provision of this Agreement, you may use such Third Party Clips only in conjunction with the Materials and only to the extent the use of such Materials is permitted pursuant to this Agreement. The Third Party Clips may be subject to additional terms and conditions. Any required notices and/or additional terms and conditions related to Third Party Clips or other third party items are located at www.brentozar.com/go/eula and are made a part of and incorporated by reference into this Agreement. By accepting this Agreement, you are also accepting such additional terms and conditions, if any, set forth therein.</p>\r\n<p>b. You agree to grant to Ozar non-exclusive, royalty-free, worldwide, perpetual license, with the right to sub-license, to reproduce, distribute, transmit, create derivative works of, publicly display and publicly perform any materials and other information (including, without limitation, ideas contained therein for new or improved Materials, products and services) you submit to any public areas of the Site (such as bulletin boards, forums and newsgroups) or by e-mail to&nbsp;by all means and in any media now known or hereafter developed.</p>\r\n<p><strong>5. License Restrictions.</strong></p>\r\n<p>a. Except as specifically permitted in this Agreement, the Materials and the license herein granted may not be copied, reproduced, republished, uploaded, posted, transmitted, shared, distributed, re-sold, offered for re-sale, assigned, displayed, transferred or sub-licensed or in any other way exploited in whole or in part. No program, code, part, image, audio sample, or text may be copied or used in any way by you except as expressly permitted in this Agreement.</p>\r\n<p>b. Without limiting the foregoing, you may not take any of the following actions with respect to the Site, the Materials and your use thereof:</p>\r\n<p>1. Alter, merge, modify, adapt or translate the Materials, or decompile or reverse engineer the Materials;</p>\r\n<p>2. Use the Materials to develop any product having the same primary function as the Materials, or create any derivative works or other works that are based on or derived from the Materials in whole or in part;</p>\r\n<p>3. Use Ozar&rsquo;s name, logo and graphics file included on, affixed to, imbedded in or otherwise associated with the Materials in any way to promote products developed by you with the use of the Materials;</p>\r\n<p>4. Remove or alter any trademark, trade names, product names, logo, copyright or other proprietary notices, legends, symbols, labels, or Clips in the Materials.;</p>\r\n<p>5. Use any of the Materials in any manner that may give a false or misleading impression or statement as to Ozar or any third party referenced in the Materials;</p>\r\n<p>6. Transmit, install, upload or otherwise transfer any virus, advertisement, communication, or other item or process to the Site that in any way affects the use, enjoyment or service of the Site or the Materials, or adversely affects Ozar computers, servers or databases;</p>\r\n<p>7. Capture, download, save, upload, print or otherwise retain Materials available on the Site except as otherwise expressly permitted by this Agreement;</p>\r\n<p>8. Misrepresent your identity or personal information when accessing the site; or permit or provide others access to the Site using your user name and password or the user name and password of another authorized user;</p>\r\n<p>9. Transfer the Materials or other Site content to another person;</p>\r\n<p>10. &ldquo;Frame,&rdquo; &ldquo;mirror,&rdquo; &ldquo;in-line link,&rdquo; or employ similar navigational technology to the Site content;</p>\r\n<p>11. Violate or attempt to violate Ozar security mechanisms, access any data or server you are not authorized to access or otherwise breach the security of the Site or corrupt the Site in any way;</p>\r\n<p>12. Engage in any other conduct involving the Site or the Materials which violates the Copyright Act or other laws of the United States;</p>\r\n<p>13. Use the Site to violate a third party&rsquo;s intellectual property or confidentiality rights; or upload, download, display, publish, perform, create derivative works from, transmit, or otherwise distribute information or content in violation of a third party&rsquo;s intellectual property rights;</p>\r\n<p>14. Advertise or otherwise solicit funds, goods or services on the Site; or</p>\r\n<p>15. Provide any commercial hosting service with access to the Site and/or the Materials.</p>\r\n<p><strong>6. Proprietary Rights.</strong></p>\r\n<p>The Materials contains material, information, data and related items which are protected by copyright, patent, trademark, trade secret and other intellectual property laws. Except where such Materials are specifically indicated as belonging to a third party, Ozar owns all right, title and interest in and to the Materials and the Site including, without limitation, all intellectual and proprietary rights appurtenant thereto. Except for the limited license granted to you herein, nothing in this Agreement shall be construed to transfer, convey, impair or otherwise adversely affect Ozar&rsquo;s ownership or proprietary rights in such Materials or any other Ozar information or materials, tangible or intangible, in any form and in any medium. Brent Ozar Unlimited&reg; and other trademarks contained in the Materials are trademarks of Ozar. Third party trademarks, trade names, product names and logos may be the trademarks or registered trademarks of their respective owners. This Agreement does not authorize you to use Ozar&rsquo;s name or any of its trademarks.</p>\r\n<p><strong>7. Data Collection and Use.</strong></p>\r\n<p>You hereby agree that Ozar may collect and use certain technical information associated with your use of the Site and the Materials, including, without limitation, any information provided in connection with any registration, support or technical services for the Site and Materials, in accordance with Ozar&rsquo;s privacy policy available at&nbsp;&nbsp;Ozar may audit your Site and Materials usage for anti-piracy purposes, to verify a valid registration, and to assess your use of the Materials. You consent to the Site sending usage data (e.g., the number of instances the Site is launched, the device IP address, and/or the version of the Materials), for registration, authentication, use and anti-piracy auditing and enforcement purposes and for all usage purposes described in this Section 7. In particular, Ozar reserves the right to monitor use of the Site and reserves the right to revoke or deny access to Site to any person or entity whose use of the Site suggests conduct prohibited by this Agreement. Access of the Materials available at the Site website outside of normal patterns of use that suggests systematic copying of the Materials may result in revocation or denial of access to the Site. The term &ldquo;normal patterns&rdquo; shall be determined solely by Ozar.</p>\r\n<p><strong>8. ADDITIONAL TERMS APPLICABLE TO LIVE INSTRUCTOR-LED TRAINING</strong></p>\r\n<p>Ozar may offer live instructor-led&nbsp;training sessions (a &ldquo;Live Instructor-Led Training Session&rdquo;), either independently or in conjunction with the purchase of one or more of our Online Training Programs.&nbsp; By submitting your online order to purchase a ticket to attend a Live Instructor-Led Training Session (a &ldquo;Ticket&rdquo;), in addition to all other applicable terms and conditions set forth in this Online Training Video Agreement, you agree to the following terms and conditions:</p>\r\n<p><span>General</span>. Each Ticket entitles the holder to attendance at the designated Live Instructor-Led Training Session by one (1) person. &nbsp;Ozar reserves the right to make changes to the content, presenters [and/or location] of the Live Instructor-Led&nbsp;Training Session without prior notice, none of which shall constitute a cancellation.&nbsp; Ozar also reserves the right to assign seats to the Ticket holder at the Live Instructor-Led&nbsp;Training Session.</p>\r\n<p><span>Attendance</span>.&nbsp; To attend the Live Instructor-Led&nbsp;Training Session, the Ticket holder must present either a copy of the Ticket or a copy of the receipt confirming payment for the Ticket.&nbsp; Attendees at an Live Instructor-Led&nbsp;Training Session may not record or reproduce in any manner any of the materials presented or displayed at the Live Instructor-Led&nbsp;Training Session.</p>\r\n<p><span>Assignability</span>. &nbsp;Tickets for Live Instructor-Led Training Sessions that are purchased separately from the purchase of an Online Training Program are fully assignable and transferable by the Ticket purchaser, provided that any transferee shall be bound by these terms and conditions.&nbsp; Ozar assumes no responsibility for lost or destroyed Tickets.&nbsp;Tickets for Live Instructor-Led Training Sessions that are purchased in conjunction with (or as part of) the purchase of an Online Training Program are not transferable.</p>\r\n<p><span>Refund Policy</span>.&nbsp; Ozar will refund the purchase price for Tickets (1) if Ozar reschedules a Live Instructor-Led&nbsp;Training Session and you notify Ozar that you are unable to attend the rescheduled Session, or (2) if Ozar cancels the Live Instructor-Led Training Session.&nbsp; Except as otherwise provided in the immediately preceding sentence, Tickets are not refundable for any reason.&nbsp; All refunds will be applied to the credit card used to purchase the Ticket within thirty (30) business days after cancellation.</p>\r\n<p><strong>9. DISCLAIMER OF WARRANTY</strong></p>\r\n<p>A. NOTHING CONTAINED IN THIS AGREEMENT SHALL BE DEEMED TO CONSTITUTE A REPRESENTATION, WARRANTY OR GUARANTEE THAT ANY PARTICULAR RESULT WILL BE PRODUCED OR ACHIEVED DUE TO YOUR USE OF THE SITE OR ANY OF THE MATERIALS.</p>\r\n<p>B. THE MATERIALS ARE PROVIDED AND LICENSED &ldquo;AS IS, AS AVAILABLE&rdquo; AND OZAR DISCLAIMS ALL WARRANTIES AND REPRESENTATIONS WITH RESPECT TO THE MATERIALS, WHETHER EXPRESS, IMPLIED, OR OTHERWISE, INCLUDING THE WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. ALSO, THERE IS NO WARRANTY OF NON-INFRINGEMENT AND TITLE OR QUIET ENJOYMENT. OZAR DOES NOT WARRANT THAT THE MATERIALS ARE ERROR-FREE OR WILL OPERATE WITHOUT INTERRUPTION. NO RIGHTS OR REMEDIES REFERRED TO IN ARTICLE 2A OF THE UNIFORM COMMERCIAL CODE WILL BE CONFERRED ON YOU UNLESS EXPRESSLY GRANTED HEREIN.</p>\r\n<p>C. NO ORAL OR WRITTEN INFORMATION OR ADVICE GIVEN BY OZAR, ITS AGENTS OR EMPLOYEES SHALL CREATE A WARRANTY OR IN ANY WAY INCREASE THE SCOPE OF ANY WARRANTY PROVIDED HEREIN.</p>\r\n<p>D. OZAR MAKES NO REPRESENTATIONS WHATSOEVER ABOUT ANY OTHER WEB SITE WHICH YOU MAY ACCESS THROUGH THE SITE OR WHICH MAY LINK TO THIS SITE. ANY WEBSITE NOT OWNED OR CONTROLLED BY OZAR IS INDEPENDENT FROM OZAR, AND THAT OZAR HAS NO CONTROL OVER THE CONTENT ON SUCH WEB SITE.</p>\r\n<p><strong>10. LIMITATION OF LIABILITY</strong></p>\r\n<p>A. OZAR SHALL NOT BE LIABLE TO YOU OR ANY THIRD PARTY FOR ANY INDIRECT, SPECIAL, INCIDENTAL, PUNITIVE, COVER, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, DAMAGES FOR THE INABILITY TO USE EQUIPMENT OR ACCESS DATA, LOSS OF BUSINESS, LOSS OF PROFITS, BUSINESS INTERRUPTION OR THE LIKE), ARISING OUT OF (I) THE USE OF, OR INABILITY TO USE, OR DELAY IN USING, THE MATERIALS OR ANY INFORMATION, OR TRANSACTIONS PROVIDED ON THE SITE OR DOWNLOADED FROM THE SITE, (II) ANY CLAIM ATTRIBUTABLE TO ERRORS, OMISSIONS, OR OTHER INACCURACIES IN THE MATERIALS AND/OR THE SITE OR INFORMATION DOWNLOADED FROM THE SITE THROUGH THE SERVICE, OR (III) THE FAILURE OF THE USER TO DERIVE ANY TANGIBLE OR INTANGIBLE BENEFIT OR RESULTS FROM THE LICENSE AND USE OF THE MATERIALS AND THE SITE, IN ANY EVENT BASED ON ANY THEORY OF LIABILITY INCLUDING BREACH OF CONTRACT, BREACH OF WARRANTY, TORT (INCLUDING NEGLIGENCE), PRODUCT LIABILITY OR OTHERWISE, EVEN IF OZAR OR ITS REPRESENTATIVES HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.</p>\r\n<p>B. THE MATERIALS MAY CONTAIN &ldquo;OPEN SOURCE&rdquo; MATERIALS (E.G., ANY MATERIALS SUBJECT TO OPEN SOURCE, COPYLEFT, GNU GENERAL PUBLIC LICENSE, LIBRARY GENERAL PUBLIC LICENSE, LESSER GENERAL PUBLIC LICENSE, MOZILLA LICENSE, BERKELEY MATERIALS DISTRIBUTION LICENSE, OPEN SOURCE INITIATIVE LICENSE, MIT, APACHE OR PUBLIC DOMAIN LICENSES, OR SIMILAR LICENSE). OZAR MAKES NO WARRANTIES, AND SHALL HAVE NO LIABILITY, DIRECT OR INDIRECT, WHATSOEVER WITH RESPECT TO OPEN SOURCE MATERIALS CONTAINED IN THE MATERIALS.</p>\r\n<p>C. BECAUSE SOME STATES DO NOT ALLOW THE EXCLUSION OR LIMITATION OF LIABILITY FOR CONSEQUENTIAL OR INCIDENTAL DAMAGES, THE ABOVE LIMITATIONS MAY NOT APPLY TO YOU. IN SUCH STATES, OZAR&rsquo;S LIABILITY IS LIMITED TO THE GREATEST EXTENT PERMITTED BY LAW.</p>\r\n<p><strong>11. Indemnification.</strong></p>\r\n<p>You agree to defend Ozar, its officers, directors, employees, agents, licensors, representatives, advertisers, business and promotional partners, operational service providers, suppliers, resellers and contractors (the &ldquo;Ozar Indemnified Parties&rdquo;) against any and all claims, demands and/or actions and indemnify and hold the Ozar Indemnified Parties harmless from and against any and all losses, damages, costs and expenses (including reasonable attorneys&rsquo; fees), resulting from any breach or violation of this Agreement, infringement, misappropriation or any violation of the rights of any other party, violation or non-compliance with any law or regulation, or any use, alteration or export of the Materials or otherwise in contravention of this Agreement. Ozar reserves the right to assume, at Ozar&rsquo;s expense, the exclusive defense and control of any claims or actions and all negotiations for settlement or compromise, and you agree to fully cooperate with Ozar upon Ozar&rsquo;s request.</p>\r\n<p><strong>12. Termination.</strong></p>\r\n<p>Ozar has the right to terminate this Agreement and your right to use the Materials and access the Site immediately in the event Ozar reasonably believes that you have failed to comply with any term or condition of this Agreement. If this Agreement or your right to use the Materials terminates for any reason or you must stop all use of the Materials and either return to us or destroy all copies of the Materials that are in your possession or under your control. Ozar may ask you to certify your compliance with the foregoing in writing, and you agree to do so if Ozar requests you to do so. All provisions of this Agreement which by their nature should survive termination shall survive termination, including, without limitation, ownership provisions, warranty disclaimers, indemnification and limitations of liability. Export Restrictions. You may not export the Materials into any country to which such export is prohibited by the United States Export Administration Act and the regulations thereunder.</p>\r\n<p><strong>13. Governing Law and Miscellaneous.</strong></p>\r\n<p>This Agreement and all disputes, claims, actions, suits or other proceedings arising hereunder shall be governed by, and construed in accordance with, the substantive law of the State of Illinois, in the United States of America, applicable to contracts wholly made and to be performed within the State of Illinois. You agree to irrevocably submit to the sole and exclusive jurisdiction of the courts of the State of Illinois and the Federal courts of the Northern District of Illinois, situated in the City of Chicago, Illinois, USA. You further irrevocably consent to the exercise of personal jurisdiction by such courts and waive any right to plead, claim or allege that Illinois is an inconvenient forum. No amendment, modification, waiver or discharge of any provision of this Agreement shall be valid unless made in writing and signed by an authorized representative of Ozar. No failure or delay by Ozar to exercise any right or enforce any obligation under this Agreement or otherwise shall impair or be construed as a waiver or on-going waiver of that or any other right or power, unless made in writing and signed by Ozar. If any provision of this Agreement is held to be illegal, invalid or unenforceable, the remaining provisions of this Agreement shall be unimpaired and remain in full force and effect. This Agreement contains the complete agreement between the parties with respect to the subject matter hereof, and supersedes all prior or contemporaneous agreements or understandings, whether oral or written. You agree that any varying or additional terms contained in any written notification or document issued by you in relation to the Materials licensed hereunder shall be of no effect. Any cause of action or claim you may have with respect to the Service must be commenced within one (1) year after the claim or cause of action arises or such claim or cause of action is barred. Neither the course of conduct between the parties nor trade practice shall act to modify any provision of this Agreement. Ozar may assign its rights and duties under this Agreement to any party at any time without notice to you. Any rights not expressly granted herein are reserved.</p>\r\n<p>All questions concerning this Agreement shall be directed to&nbsp;&nbsp;Attention: Agreement.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(6, 12, 'JAVA programming', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', '97b8d96769.jpg', 'admin', 'cse,java', '2021-12-04 18:25:30', 2),
(7, 12, 'PHP Programming', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', '09e9288903.jpg', 'admin', 'cse,php', '2021-12-04 18:26:08', 2),
(8, 15, 'Differential Calculus', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', '3db132dcb9.jpg', 'admin', 'calculus,math', '2021-12-04 18:28:21', 2),
(9, 18, 'History of Bangladesh', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', '59d330a032.jpg', 'admin', 'bangladesh,history', '2021-12-04 18:29:00', 2),
(10, 12, 'Design & Analysis of Algorithm', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', 'aec62d3975.jpg', 'editor', 'algo,cse', '2021-12-04 18:34:19', 4),
(11, 13, 'Basic Accounting', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', '4dc6e0c788.jpg', 'editor', 'accounting', '2021-12-04 18:36:31', 4),
(12, 14, 'English Literature', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></p>', 'ea7a034101.jpg', 'editor', 'literature,english', '2021-12-04 18:42:32', 4),
(13, 16, 'Bangla Literature', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></p>', '4131045ed8.jpg', 'author', 'literature,bangla', '2021-12-04 18:45:48', 3),
(14, 15, 'Integral Calculus', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></p>', 'f72fa8cc67.jpeg', 'author', 'calculus,math', '2021-12-04 18:47:24', 3),
(15, 18, 'World War 1', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></p>', 'b65178ad0c.jpg', 'author', 'war,history', '2021-12-04 18:49:26', 3),
(16, 14, 'William Shakespeare', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></p>', '3b53a83baf.jpg', 'author', 'shakespeare,english', '2021-12-04 18:52:43', 3),
(17, 19, 'Fundamental of Economics', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span></p>', 'ca90edc007.jpg', 'author', 'fundamental,economics', '2021-12-04 18:54:04', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(1, 'Bamboo Bridge', '8213b78e5a.jpg'),
(2, 'Mountain and sea', '3dce2443db.jpg'),
(3, 'The beautiful sunset', '84db77f185.jpg'),
(4, 'Dry leaves', '6b4d8577fc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'http://facebook.com', 'http://twitter.com', 'http://linkedin.com', 'http://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'green');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `email`, `details`, `role`, `name`) VALUES
(2, 'admin', '01cfcd4f6b8770febfb40cb906715822', 'tarin.cse5.bu@gmail.com', '<p>I am a student</p>', 0, 'Sadia Afrin Tarin'),
(3, 'author', '827ccb0eea8a706c4c34a16891f84e7b', 'jalal@gmail.com', '<p>HI,I am Auhtor of this website(e-learn)</p>', 1, 'Md. Jalal Uddin'),
(4, 'editor', '827ccb0eea8a706c4c34a16891f84e7b', 'farhan@gmail.com', '<p>I am editor</p>', 2, 'MD. Farhan Ahmed');

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'e-LEARN', 'Learn, Practice and Spread', 'logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
