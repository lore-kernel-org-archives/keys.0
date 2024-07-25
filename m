Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A863A1E528
	for <keys@linux.kernel.org>; Thu, 25 Jul 2024 13:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721915831; cv=none; b=FPT72t64qcJPh8J68H5aGJYPgIA1t0s0M7Mrdt8sFyfeqhhx4Fz8QktU1CjZ9S+T4jl3RqvJALHUUJ+QpNink0N+C8lTi5CvuxU58jId8I5CCGYXqu8az4wNTRUNfSdjeDOkQIYE03j2GTJ5bsODAt6qxvE1GHtuUsSk2AW2V48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721915831; c=relaxed/simple;
	bh=qebCFpAVosx+884lNc95xiuo0g8qbl6ZPE100j5WFr8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YJOSGIagAWfGScTlJYo2VGt5+1yEhfVZKxPBZ0pD2Bwx9VZePxHfYv5XrsyPat0/emLKJ2OlVbY/0oxRGJKU6upDDoBRgRmw/5qifT03vCPe4cNr52QQlMu8KqluNV3sgh4zL4BV7jaVh/e0bl7VBOx9BUqaDbsJn27kgyap9sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=jO9a25QJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="jO9a25QJ"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 152E2C116B1;
	Thu, 25 Jul 2024 13:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1721915831;
	bh=qebCFpAVosx+884lNc95xiuo0g8qbl6ZPE100j5WFr8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jO9a25QJNfPLhBjpZyqIrpViwhsjtma5kDOh7ggPD0+DQK3JvYM2GJ3cAF/D3vLVe
	 N5K0ZfTOcRez5sF/nnsDrwFN5ErTK5Z68CiK9K8RI10B8EH3JN9vJbBKaG8kPQraMQ
	 +Am1Gas1FSdBoljwuAAvig2sJLoTDV2BBxZlfw5E=
Date: Thu, 25 Jul 2024 09:57:09 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Kees Cook <kees@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Added new signing and auth subkeys
Message-ID: <20240725-enlightened-clay-horse-fe2c0b@meerkat>
References: <202407241359.D0126C08F@keescook>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <202407241359.D0126C08F@keescook>

On Wed, Jul 24, 2024 at 02:01:22PM GMT, Kees Cook wrote:
> Hi,
> 
> I've added new Sign and Auth subkeys. Will the Auth key get associated
> with gitolite automatically on the kernel.org side, or is there
> something I need to do for it? (In my switch away from TOTP...)

Nothing else needed. I've added your PGP Auth key -- please try it out. Note,
that you will probably need to change your .ssh/config section for
gitolite.kernel.org. See this page for more info:
https://korg.docs.kernel.org/access.html

Once you confirm that your PGP Auth key is working, I will remove your old RSA
key.

Best,
-K
