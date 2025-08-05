Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6FC8291C10
	for <keys@linux.kernel.org>; Tue,  5 Aug 2025 16:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754412153; cv=none; b=acB3CgdhNnTSmCoPnfUnbG3Ra+6136HMYEWizp5bZcYzYRHkhZsVFgFKqwP67XG2lIoE9yjAyEDAOKv1rc1nKSUvX5iifl98F4GxLKKH+O1xQAEKgtnQPmIaDTynrRb8S0o6okQodEcR+N2TCNMZ+iC9cQ4IercX3VYp5p0Q+EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754412153; c=relaxed/simple;
	bh=uH5yqbXc5u8ENm8RW55S3AfS3La7SOIIdin/uuCrhiU=;
	h=Date:From:To:CC:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To:References; b=PqHIyCe5c3Xh5Dj1SHYxUplhBEzvYXhZCvIV8igMwUeQzA1ZmMAieI0ppg+QCMrbP0ZehGvQpoLANn2dVabfzUusNooig1/d5Qs7ML6gfuuqkOY3Q8cc8/ctK1jxYZEnyuBrH4utAfKabOxdpT3KVhjAYZ89ZBXUkWe7ZtBhn9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=mcY+yCe/; arc=none smtp.client-ip=210.118.77.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="mcY+yCe/"
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20250805164228euoutp02f17b5605cc01424691e8a25b540032b2~Y7I3YPhkm1581515815euoutp02I
	for <keys@linux.kernel.org>; Tue,  5 Aug 2025 16:42:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20250805164228euoutp02f17b5605cc01424691e8a25b540032b2~Y7I3YPhkm1581515815euoutp02I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1754412148;
	bh=jBrlHT4WwbCDU1PuzMu8Nv/98ev9UCDfL4WUmanBJAY=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:From;
	b=mcY+yCe/HCQksOg3+xmqXDyDwqdQLfD5NYwiB0+0hWtVgdDqdaxf2XEpMGAKAWrcn
	 HKCsptbdTRlVO611y0pQwVZtDglB6mXoY3Y4ggV+U99G5FbIh0DskC/7/jKoG30mxL
	 R99NHZoC+f8nwAtliAdaADLaB76wITWtg26Ffv+E=
Received: from eucas1p2.samsung.com (unknown [182.198.248.175]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTP id
	20250805164228eucas1p2633044303a2ac6911a1724b115f58a0f~Y7I273E-Q2821828218eucas1p25;
	Tue,  5 Aug 2025 16:42:28 +0000 (GMT)
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20250805164227eucas1p29c6d2e7ca60e7bfc4ad8f3ac65d4e777~Y7I2j24fE2823528235eucas1p2i;
	Tue,  5 Aug 2025 16:42:27 +0000 (GMT)
Received: from CAMSPWEXC02.scsc.local (unknown [106.1.227.4]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250805164227eusmtip161c754d0d9b23b41a9d9c98cff6ee1a4~Y7I2eacBy2568225682eusmtip1f;
	Tue,  5 Aug 2025 16:42:27 +0000 (GMT)
Received: from localhost (106.110.32.107) by CAMSPWEXC02.scsc.local
	(106.1.227.4) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.26; Tue, 5 Aug
	2025 17:42:27 +0100
Date: Tue, 5 Aug 2025 18:42:25 +0200
From: Joel Granados <j.granados@samsung.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
CC: <keys@linux.kernel.org>, Kieran Bingham <kieranbingham@gmail.com>,
	"Kieran Bingham" <kieran@bingham.xyz>, Kieran Bingham
	<kieran@kbingham.co.uk>, "Imre Kaloz" <kaloz@dune.hu>, Imre Kaloz
	<kaloz@openwrt.org>, Eric Dumazet <edumazet@google.com>, Eric Dumazet
	<eric.dumazet@gmail.com>, Eric Dumazet <edumazet@kernel.org>, Pravin B
	Shelar <pshelar@nicira.com>, "Allison Henderson"
	<allison.henderson@oracle.com>, Joel Granados <joel.granados@kernel.org>,
	Joel Granados <joel.granados@joelgranados.com>, Harald Hoyer
	<harald@hoyer.xyz>, Harald Hoyer <harald@harald-hoyer.de>, Harald Hoyer
	<harald@redhat.com>, Bothersome Borer <bothersome-borer@kernel.org>,
	Confounding Cockroach <confounding-cockroach@kernel.org>, Frank Rowand
	<frank.rowand@sony.com>, Frank Rowand <key_111017@frowand.com>, Frank Rowand
	<frank.rowand@am.sony.com>, Frank Rowand <frowand@gmail.com>, Frank Rowand
	<frank.rowand@sonymobile.com>, Frank Rowand <frowand.list@gmail.com>, "Frank
 Rowand" <frank@frowand.com>, Jacek Anaszewski <jacek.anaszewski@gmail.com>,
	Jacek Anaszewski <j.anaszewski@samsung.com>, Aggravating Aphid
	<aggravating-aphid@kernel.org>
Subject: Re: [PATCH 0/7] Remove expired keys, 2024 edition
Message-ID: <mx4t2fyuijj2einu4eibez4tjnrxpdo7ofutb7hh7ddmi7636i@gowa3on2bvgd>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1754379198.git.u.kleine-koenig@baylibre.com>
X-ClientProxiedBy: CAMSPWEXC02.scsc.local (106.1.227.4) To
	CAMSPWEXC02.scsc.local (106.1.227.4)
X-CMS-MailID: 20250805164227eucas1p29c6d2e7ca60e7bfc4ad8f3ac65d4e777
X-Msg-Generator: CA
X-RootMTR: 20250805075932eucas1p17f15688e91b34f617fef8c2316d92a80
X-EPHeader: CA
cpgsPolicy: EUCPGSC10-065,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250805075932eucas1p17f15688e91b34f617fef8c2316d92a80
References: <CGME20250805075932eucas1p17f15688e91b34f617fef8c2316d92a80@eucas1p1.samsung.com>
	<cover.1754379198.git.u.kleine-koenig@baylibre.com>

On Tue, Aug 05, 2025 at 09:59:01AM +0200, Uwe Kleine-König wrote:
> Hello,
> 
> this cleanup series removes 5 keys and one subkey that expired in 2024.
> Also a key that was revoked in 2020 is dropped.
> 
> None of the removed keys is part of trust paths to other keys, so there
> is no effect on the remaining keys.
> 
> I suggest to not apply this series straight away to give the affected
> owners the chance to extend the expiry date of their keys and replace
> them accordingly.
> 
> A bit orthogonal to this series: It is usually recommended to have an
> expiry date on PGP keys. Most keys (472 of now 620) don't have an expiry
> date, I wonder if that would be sensible to require at least for new
> keys added to the keyring. The upside would be that we don't trust keys
> that are already long abondoned. E.g. Gentoo requires that for the keys
> that are relevant for the project[1].
> 
> Currently there are 5 more keys contained in the keyring that expired in
> 2025:
> 
> 0AA04DC735ACE2B5.asc
> 	Bothersome Borer <bothersome-borer@kernel.org>
> 4C3262CBD285EB87.asc
> 	Confounding Cockroach <confounding-cockroach@kernel.org>
> A16F9AB80CB2D395.asc
> 	Frank Rowand <frank.rowand@sony.com>
> 	Frank Rowand <key_111017@frowand.com>
> 	Frank Rowand <frank.rowand@am.sony.com>
> 	Frank Rowand <frowand@gmail.com>
> 	Frank Rowand <frank.rowand@sonymobile.com>
> 	Frank Rowand <frowand.list@gmail.com>
> 	Frank Rowand <frank@frowand.com>
> BD6A501CB78B7C26.asc
> 	Jacek Anaszewski <jacek.anaszewski@gmail.com>
> 	Jacek Anaszewski <j.anaszewski@samsung.com>
> E7F85821938ABF6F.asc
> 	Aggravating Aphid <aggravating-aphid@kernel.org>
> 
> These are the only keys left that (obviously) don't have a valid trust
> path from Linus' key.
> 
> Best regards
> Uwe
> 
> [1] https://www.gentoo.org/glep/glep-0063.html
> 
> Uwe Kleine-König (7):
>   Remove expired key of Kieran Bingham
>   Remove expired key of Imre Kaloz
>   Remove expired key of Eric Dumazet
>   Remove expired key of Pravin B Shelar
>   Remove expired key of Allison Henderson
>   Remove expired signing subkey of Joel Granados
Thanks for this. I had update my signing key but forgot to remove the
expired one. I use my updated Signing key that expires in 2027, so all
good from my side.

Best


-- 

Joel Granados
