Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501A421C17B
	for <keys@linux.kernel.org>; Fri, 20 Dec 2024 18:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734719287; cv=none; b=VBOII8TKwrsZRRpFxgcr1tKUeLLgpUiLK3y1dnrhsETkYjZL/P2FhWoOB2z5IuwVIJ2jpsq+KQ/EdPrBrnJI17xIQb/jYwQP5UTeuPnvxSbk0EZcvQjJfkxavfEKDmI3OsCPOPg8IV7/+vFiLhhryS9DFRt3FP2bq2TfjVbsXVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734719287; c=relaxed/simple;
	bh=+kHE55VDw664kMA4Tr4JW2daBxjiUWRAenWiDa2f/NQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eboonybmMIab4Vbh4Q5gt2b2Qv27EpPhra0VVRGWGYE53l86aM1vqSsVtfguU9SvaXsbGJdfnlwbM+PJKm4XasSlnae/LjqSC8XfWwxFyhjrk6m1LMuCZ18Ip6z/Myrp2xsJhL5MjFPRdx7c3fEHulO4n+iMigWMYF9BrX7Rxec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=z6mIFBK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="z6mIFBK/"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0CA9C4CECD;
	Fri, 20 Dec 2024 18:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1734719285;
	bh=+kHE55VDw664kMA4Tr4JW2daBxjiUWRAenWiDa2f/NQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=z6mIFBK/DGSQu3so0sVfndSObLHe+WecYOIWJXzmepoKxCZ6poyZqqbR2b/TNqLv2
	 hnmQywIIbHpUCDVG1ObHxLFyv7IftvxL0UsRAcHHKntcfR6p2LhfRwGkfYWF2wGcMv
	 oO2aPIxO1Hl/0kTWPdmlwWvzb0ujyNMydI0JkXkc=
Date: Fri, 20 Dec 2024 13:28:02 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: n3rdopolis <bluescreen_avenger@verizon.net>
Cc: keys@linux.kernel.org
Subject: Re: Submitting a key
Message-ID: <v55eksghdqvhehf2b5pd3vhtt4qxotkbedb5b2sdwu26ra73ex@t3rp2wsj3zzd>
References: <5341712.6fTUFtlzNn.ref@nerdopolis2>
 <3223611.fEcJ0Lxnt5@nerdopolis2>
 <w3loqlyzzq3ehu3grpmc5wrxp3iiqz6qqabgkd7yu4hfavr2f3@fbu26ato2koq>
 <3957840.fW5hKsROvD@nerdopolis2>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <3957840.fW5hKsROvD@nerdopolis2>

On Thu, Dec 19, 2024 at 10:10:22PM -0500, n3rdopolis wrote:
> > The usual process is to ask the maintainer who receives your patch series to
> > sign your key. Your key should also have a name that will be recognized in
> > court, not a pseudonym.
> 
> OK, I thought that the no-pseudonyms restriction was relaxed.

This may help understand the requirement:
https://lore.kernel.org/kernelnewbies/20220708154456.hcymrdkidv2uznsx@meerkat.local/

-K
