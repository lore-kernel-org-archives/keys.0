Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68568F5E
	for <keys@linux.kernel.org>; Mon, 22 Jul 2024 14:05:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721657103; cv=none; b=fVFXKlxsgFoI+AnDQ+0AjM1XndaHsQlSree0kFie8PeZcNj3gGa+A8VNq+Cazu2Pw6CH4YQy4KZ7ULTezipLzttgWD/GJcpLyxlf0CTtOeGuMdj/JbHVJcBinx0hvnDBQHkhB1zFDZMyb1WPJzuutSXIysGFfGtra1hzrKImVdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721657103; c=relaxed/simple;
	bh=v3G92DjhA3EycOAyuNvh+0uZO0c0zEGj1DniWY4d6TI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bGWN4524HfJ2/10GMj+LExv4B0vzCHH74Rc34EsGd1xqQnV9LsVkVaBpqoEGL0ESiJ1A0qqcAVrUqZDvGFvS3vOjJz0PVVNsErFf7xnPbuOncx9t6Wko5qCeI8AdyUcv6fl1fIckU5eujpv/A6IeeqI5/75coxjif8iHMsEyg78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=sQ7/n2H5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="sQ7/n2H5"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37DC8C116B1;
	Mon, 22 Jul 2024 14:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1721657103;
	bh=v3G92DjhA3EycOAyuNvh+0uZO0c0zEGj1DniWY4d6TI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sQ7/n2H5qLErP9z3wKULsPPdDxO3fBYcD3b4DA+Jz5PzyG8XCnMsQpa0/vXPQg4+v
	 vM4q+3lUdNtdCyd61r3K1rT1uqs5FN/vERQ+Q4/9/uqu27TLF4f12HgoOcZmeAkQHj
	 rzW2MLhilG0EGFmzbGIjT+XHBjFGIO5brsI+qQsI=
Date: Mon, 22 Jul 2024 10:05:02 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Daniel Borkmann <daniel@iogearbox.net>
Cc: keys@linux.kernel.org
Subject: Re: daniel@iogearbox.net
Message-ID: <20240722-prompt-elite-falcon-c47d07@lemur>
References: <653fef47-6df5-6100-c65e-52655e88aa57@iogearbox.net>
 <20240718-fast-sage-turtle-b5e4ad@meerkat>
 <4f20e622-f515-d038-0e78-d0f0981f4a0b@iogearbox.net>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <4f20e622-f515-d038-0e78-d0f0981f4a0b@iogearbox.net>

On Mon, Jul 22, 2024 at 11:21:29AM GMT, Daniel Borkmann wrote:
> On 7/18/24 6:09 PM, Konstantin Ryabitsev wrote:
> > On Thu, Jul 18, 2024 at 02:50:18PM GMT, Daniel Borkmann wrote:
> > > -----BEGIN PGP PUBLIC KEY BLOCK-----
> > 
> > Unfortunately, I cannot take it as-is because it's only signed by your own
> > expired key, so the web of trust doesn't work out.
> > 
> > Could you get someone else with a current kernel.org account to sign it as
> > well?
> 
> Does it work with the below? I imported signatures locally and exported again.

Yes, looks good now. Your key has been added to the keyring.

-K
