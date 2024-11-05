Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD6E1D5176
	for <keys@linux.kernel.org>; Tue,  5 Nov 2024 13:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730812969; cv=none; b=H4AN4kkHlhswXCp2J0u59z707Cc7rUYqSBape7DtToFA88+V+a2BBmpbDDF7IBSKhnoOlwSyD3cPFFF3l6+6QYno5Wz7vH/CxpnXnk7ki2khFlH5HqMGzMi/ruhUkcepfHstJOqRtYl+LJ68k9JljLVTGXXiXdiD31R54t9wEuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730812969; c=relaxed/simple;
	bh=/ttc+TbHMYwRvKYnOjBMRgfm9YC0DUKEPap3st1El2E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u37Li+cOeJ0ZHdOgEayCWgvNVk1MXZcLHAcI5r8NwpbqfRl+XTMkQ/sxYrl1Ajea5McppayAEUhViPFsK04V9i1Td76V9MCDD1dtAEX+uIEsdsswN+B0yc3ioTKC5A6RVcWwtyt4dF1iBlegWrNEfj59IRWobD/7+slLpVrtGYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=Idi+cdqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="Idi+cdqY"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E5DBC4CECF;
	Tue,  5 Nov 2024 13:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1730812968;
	bh=/ttc+TbHMYwRvKYnOjBMRgfm9YC0DUKEPap3st1El2E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Idi+cdqYNFg1199Ihg2ZilThUgNRKVoCDHuDQ+FHFIh8WKaYZxstGLC9KiioKMKWK
	 a9vMJ9h7+zQAC0K363fKQbVsdSc7hqwKdhNbAuT3+1nxkVA+6f1EhJBR4fxttdO/T0
	 v7P66avEDSdzTgCz6ZxmXQR2HkynL2KuVILDbz/8=
Date: Tue, 5 Nov 2024 08:22:45 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Michal =?utf-8?Q?Koutn=C3=BD?= <mkoutny@suse.com>
Cc: keys@linux.kernel.org
Subject: Re: Add mkoutny's key
Message-ID: <20241105-certain-eel-from-eldorado-8cb33f@lemur>
References: <glv33hliqtufbxrilmvmemvftxvfvr575lpeebj3fbknqhmy6o@7rinolsdk2u6>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <glv33hliqtufbxrilmvmemvftxvfvr575lpeebj3fbknqhmy6o@7rinolsdk2u6>

On Tue, Nov 05, 2024 at 10:34:51AM +0100, Michal Koutný wrote:
> Following
> https://korg.docs.kernel.org/pgpkeys.html#submitting-keys-to-the-keyring
> 
> Exported key with uid signatures is attached.

Added, thanks.

-K
