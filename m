Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA771E1A28
	for <keys@linux.kernel.org>; Fri, 13 Dec 2024 14:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734100992; cv=none; b=kO42x137rXi8tiDcNoFEi/34vFkjPXt52BWiTxdSvPycNIcyLppm2D3Sn00HLzfXtW6Tx/Go22Vhp6xrZNXWx+giRDaK34T8nwy7cQQ4LCrDWAJjvhrnQtADff5hiIIPinWD9sZBswzB802fUvwY07N+QaSUGDg9qAQ+9HCLIwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734100992; c=relaxed/simple;
	bh=t/Jt+2YnQu+fKjQAzBlpjeGuG0KEYjfhvaBf/MpTrM8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SCyUK3HM718OD1l0E29PwE4gkvimKnAqlzdMkd3yvMjBBcXDqpC/k/wOcyI6exDJq70+3THMCO4F/u8ZGhhl3c9ACCUbVBz/1lVb3t+5EpM9lCus2Y+EMWlG5TSFHqE0fdtPFDTQLvK9BTAreLWCrlBKlJ6l3pgFKPVc+f5BpxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=1FVBJohk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="1FVBJohk"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C0AAC4CED0;
	Fri, 13 Dec 2024 14:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1734100992;
	bh=t/Jt+2YnQu+fKjQAzBlpjeGuG0KEYjfhvaBf/MpTrM8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=1FVBJohk7a6/oK15xA2tlgMSBeIj35u6NpP4+3Wtr+MiabMXkmAFxMKXGGFwSGBj5
	 o03ghE/E8LsZqm2bNM20e9TPixiwGT7umJNlEQwO0DvoqMdzZK8o4RyUPHZeLaBIQJ
	 T/zl3ulobc4d1ROoWzl08b3amJYaZ3KTGUnQ4X6A=
Date: Fri, 13 Dec 2024 09:43:09 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: n3rdopolis <bluescreen_avenger@verizon.net>
Cc: keys@linux.kernel.org
Subject: Re: Submitting a key
Message-ID: <w3loqlyzzq3ehu3grpmc5wrxp3iiqz6qqabgkd7yu4hfavr2f3@fbu26ato2koq>
References: <5341712.6fTUFtlzNn.ref@nerdopolis2>
 <5341712.6fTUFtlzNn@nerdopolis2>
 <h6774iiiea2fpejxfhfhrdd7gz4uzzr7cpzwqdvi3a7w7iryia@xqqhraoatf52>
 <3223611.fEcJ0Lxnt5@nerdopolis2>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <3223611.fEcJ0Lxnt5@nerdopolis2>

On Thu, Dec 12, 2024 at 08:56:36PM -0500, n3rdopolis wrote:
> > There are no signatures on your key, so at this time we cannot accept it into
> > the keyring. Please get a signature from at least one other person already in
> > the keyring and resubmit.
> 
> Understood. Do I just ask around for someone willing to sign my key?
> I am sorry I am not familiar with the process

The usual process is to ask the maintainer who receives your patch series to
sign your key. Your key should also have a name that will be recognized in
court, not a pseudonym.

-K
